package org.xutils.http.loader;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.Headers;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.Date;
import org.xutils.cache.DiskCacheEntity;
import org.xutils.cache.DiskCacheFile;
import org.xutils.cache.LruDiskCache;
import org.xutils.common.Callback;
import org.xutils.common.util.IOUtil;
import org.xutils.common.util.LogUtil;
import org.xutils.common.util.ProcessLock;
import org.xutils.http.ProgressHandler;
import org.xutils.http.RequestParams;
import org.xutils.http.request.UriRequest;
import org.xutils.p344ex.FileLockedException;
import org.xutils.p344ex.HttpException;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/loader/FileLoader.class */
public class FileLoader extends Loader<File> {

    /* renamed from: a */
    private RequestParams f40760a;

    /* renamed from: b */
    private String f40761b;

    /* renamed from: c */
    private String f40762c;

    /* renamed from: d */
    private boolean f40763d;

    /* renamed from: e */
    private boolean f40764e;

    /* renamed from: f */
    private long f40765f;

    /* renamed from: g */
    private String f40766g;

    /* renamed from: h */
    private DiskCacheFile f40767h;

    /* renamed from: b */
    private File m184b(File file) {
        File file2;
        if (!this.f40764e || !file.exists() || TextUtils.isEmpty(this.f40766g)) {
            File file3 = file;
            if (!this.f40762c.equals(this.f40761b)) {
                File file4 = new File(this.f40762c);
                file3 = file;
                if (file.renameTo(file4)) {
                    file3 = file4;
                }
            }
            return file3;
        }
        File file5 = new File(file.getParent(), this.f40766g);
        while (true) {
            file2 = file5;
            if (!file2.exists()) {
                break;
            }
            String parent = file.getParent();
            file5 = new File(parent, System.currentTimeMillis() + this.f40766g);
        }
        File file6 = file;
        if (file.renameTo(file2)) {
            file6 = file2;
        }
        return file6;
    }

    /* renamed from: c */
    private static String m183c(UriRequest uriRequest) {
        int indexOf;
        if (uriRequest == null) {
            return null;
        }
        String responseHeader = uriRequest.getResponseHeader(Headers.HEAD_KEY_CONTENT_DISPOSITION);
        if (TextUtils.isEmpty(responseHeader) || (indexOf = responseHeader.indexOf("filename=")) <= 0) {
            return null;
        }
        int i = indexOf + 9;
        int indexOf2 = responseHeader.indexOf(";", i);
        int i2 = indexOf2;
        if (indexOf2 < 0) {
            i2 = responseHeader.length();
        }
        if (i2 <= i) {
            return null;
        }
        try {
            String decode = URLDecoder.decode(responseHeader.substring(i, i2), uriRequest.getParams().getCharset());
            String str = decode;
            if (decode.startsWith("\"")) {
                str = decode;
                if (decode.endsWith("\"")) {
                    str = decode.substring(1, decode.length() - 1);
                }
            }
            return str;
        } catch (UnsupportedEncodingException e) {
            LogUtil.m258e(e.getMessage(), e);
            return null;
        }
    }

    /* renamed from: d */
    private void m182d(UriRequest uriRequest) {
        DiskCacheEntity diskCacheEntity = new DiskCacheEntity();
        diskCacheEntity.setKey(uriRequest.getCacheKey());
        DiskCacheFile createDiskCacheFile = LruDiskCache.getDiskCache(this.f40760a.getCacheDirName()).createDiskCacheFile(diskCacheEntity);
        this.f40767h = createDiskCacheFile;
        if (createDiskCacheFile == null) {
            throw new IOException("create cache file error:" + uriRequest.getCacheKey());
        }
        String absolutePath = createDiskCacheFile.getAbsolutePath();
        this.f40762c = absolutePath;
        this.f40761b = absolutePath;
        this.f40764e = false;
    }

    /* renamed from: e */
    private static boolean m181e(UriRequest uriRequest) {
        if (uriRequest == null) {
            return false;
        }
        String responseHeader = uriRequest.getResponseHeader("Accept-Ranges");
        if (responseHeader != null) {
            return responseHeader.contains("bytes");
        }
        String responseHeader2 = uriRequest.getResponseHeader(Headers.HEAD_KEY_CONTENT_RANGE);
        boolean z = false;
        if (responseHeader2 != null) {
            z = false;
            if (responseHeader2.contains("bytes")) {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    protected File load(InputStream inputStream) {
        BufferedOutputStream bufferedOutputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        Throwable th2;
        BufferedInputStream bufferedInputStream = null;
        try {
            File file = new File(this.f40761b);
            if (file.isDirectory()) {
                throw new IOException("could not create the file: " + this.f40761b);
            }
            if (!file.exists()) {
                File parentFile = file.getParentFile();
                if ((!parentFile.exists() && !parentFile.mkdirs()) || !parentFile.isDirectory()) {
                    throw new IOException("could not create the dir: " + parentFile.getAbsolutePath());
                }
            }
            char length = file.length();
            if (this.f40763d && length > 0) {
                long j = length - 512;
                try {
                    if (j <= 0) {
                        IOUtil.deleteFileOrDir(file);
                        throw new RuntimeException("need retry");
                    }
                    fileInputStream = new FileInputStream(file);
                    try {
                        if (!Arrays.equals(IOUtil.readBytes(inputStream, 0L, 512), IOUtil.readBytes(fileInputStream, j, 512))) {
                            IOUtil.closeQuietly(fileInputStream);
                            IOUtil.deleteFileOrDir(file);
                            throw new RuntimeException("need retry");
                        }
                        this.f40765f -= 512;
                        IOUtil.closeQuietly(fileInputStream);
                    } catch (Throwable th3) {
                        th2 = th3;
                        IOUtil.closeQuietly(fileInputStream);
                        throw th2;
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                    fileInputStream = null;
                }
            }
            if (this.f40763d) {
                fileOutputStream = new FileOutputStream(file, true);
            } else {
                fileOutputStream = new FileOutputStream(file);
                length = 0;
            }
            long j2 = this.f40765f + length;
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
            try {
                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream);
                try {
                    ProgressHandler progressHandler = this.progressHandler;
                    if (progressHandler != null && !progressHandler.updateProgress(j2, length, true)) {
                        throw new Callback.CancelledException("download stopped!");
                    }
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = bufferedInputStream2.read(bArr);
                        if (read == -1) {
                            bufferedOutputStream2.flush();
                            DiskCacheFile diskCacheFile = this.f40767h;
                            DiskCacheFile diskCacheFile2 = file;
                            if (diskCacheFile != null) {
                                diskCacheFile2 = diskCacheFile.commit();
                            }
                            ProgressHandler progressHandler2 = this.progressHandler;
                            if (progressHandler2 != null) {
                                progressHandler2.updateProgress(j2, length, true);
                            }
                            IOUtil.closeQuietly(bufferedInputStream2);
                            IOUtil.closeQuietly(bufferedOutputStream2);
                            return m184b(diskCacheFile2);
                        } else if (!file.getParentFile().exists()) {
                            file.getParentFile().mkdirs();
                            throw new IOException("parent be deleted!");
                        } else {
                            bufferedOutputStream2.write(bArr, 0, read);
                            ?? r0 = read + length;
                            ProgressHandler progressHandler3 = this.progressHandler;
                            length = r0;
                            if (progressHandler3 != 0) {
                                if (!progressHandler3.updateProgress(j2, r0, false)) {
                                    bufferedOutputStream2.flush();
                                    throw new Callback.CancelledException("download stopped!");
                                }
                                length = r0;
                            }
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    bufferedOutputStream = bufferedOutputStream2;
                    bufferedInputStream = bufferedInputStream2;
                    IOUtil.closeQuietly(bufferedInputStream);
                    IOUtil.closeQuietly(bufferedOutputStream);
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
                bufferedOutputStream = null;
            }
        } catch (Throwable th7) {
            th = th7;
            bufferedOutputStream = null;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v250, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r1v24 */
    @Override // org.xutils.http.loader.Loader
    public File load(UriRequest uriRequest) {
        File file;
        ProcessLock tryLock;
        ProcessLock processLock = null;
        try {
            try {
                String saveFilePath = this.f40760a.getSaveFilePath();
                this.f40762c = saveFilePath;
                this.f40767h = null;
                if (TextUtils.isEmpty(saveFilePath)) {
                    ProgressHandler progressHandler = this.progressHandler;
                    if (progressHandler != null && !progressHandler.updateProgress(0L, 0L, false)) {
                        throw new Callback.CancelledException("download stopped!");
                    }
                    m182d(uriRequest);
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(this.f40762c);
                    sb.append(".tmp");
                    this.f40761b = sb.toString();
                }
                ProgressHandler progressHandler2 = this.progressHandler;
                if (progressHandler2 != null && !progressHandler2.updateProgress(0L, 0L, false)) {
                    throw new Callback.CancelledException("download stopped!");
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.f40762c);
                sb2.append("_lock");
                tryLock = ProcessLock.tryLock(sb2.toString(), true);
            } catch (HttpException e) {
                if (e.getCode() != 416) {
                    throw e;
                }
                DiskCacheFile diskCacheFile = this.f40767h;
                DiskCacheFile commit = diskCacheFile != null ? diskCacheFile.commit() : new File(this.f40761b);
                if (commit == null || !commit.exists()) {
                    IOUtil.deleteFileOrDir(commit);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("cache file not found");
                    sb3.append(uriRequest.getCacheKey());
                    throw new IllegalStateException(sb3.toString());
                }
                if (this.f40764e) {
                    this.f40766g = m183c(uriRequest);
                }
                file = m184b(commit);
            }
            if (tryLock == null || !tryLock.isValid()) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("download exists: ");
                sb4.append(this.f40762c);
                throw new FileLockedException(sb4.toString());
            }
            this.f40760a = uriRequest.getParams();
            ?? r17 = false;
            if (this.f40763d) {
                File file2 = new File(this.f40761b);
                long length = file2.length();
                if (length <= 512) {
                    IOUtil.deleteFileOrDir(file2);
                    r17 = false;
                } else {
                    r17 = length - 512;
                }
            }
            RequestParams requestParams = this.f40760a;
            StringBuilder sb5 = new StringBuilder();
            sb5.append("bytes=");
            sb5.append(r17 == true ? 1L : 0L);
            sb5.append("-");
            requestParams.setHeader("Range", sb5.toString());
            ProgressHandler progressHandler3 = this.progressHandler;
            if (progressHandler3 != null && !progressHandler3.updateProgress(0L, 0L, false)) {
                throw new Callback.CancelledException("download stopped!");
            }
            uriRequest.sendRequest();
            this.f40765f = uriRequest.getContentLength();
            if (this.f40764e) {
                this.f40766g = m183c(uriRequest);
            }
            if (this.f40763d) {
                this.f40763d = m181e(uriRequest);
            }
            ProgressHandler progressHandler4 = this.progressHandler;
            if (progressHandler4 != null && !progressHandler4.updateProgress(0L, 0L, false)) {
                throw new Callback.CancelledException("download stopped!");
            }
            DiskCacheFile diskCacheFile2 = this.f40767h;
            if (diskCacheFile2 != null) {
                try {
                    DiskCacheEntity cacheEntity = diskCacheFile2.getCacheEntity();
                    cacheEntity.setLastAccess(System.currentTimeMillis());
                    cacheEntity.setEtag(uriRequest.getETag());
                    cacheEntity.setExpires(uriRequest.getExpiration());
                    cacheEntity.setLastModify(new Date(uriRequest.getLastModified()));
                } catch (Throwable th) {
                    LogUtil.m258e(th.getMessage(), th);
                }
            }
            processLock = tryLock;
            file = load(uriRequest.getInputStream());
            IOUtil.closeQuietly(processLock);
            IOUtil.closeQuietly(this.f40767h);
            return file;
        } catch (Throwable th2) {
            IOUtil.closeQuietly((Closeable) null);
            IOUtil.closeQuietly(this.f40767h);
            throw th2;
        }
    }

    @Override // org.xutils.http.loader.Loader
    public File loadFromCache(DiskCacheEntity diskCacheEntity) {
        return LruDiskCache.getDiskCache(this.f40760a.getCacheDirName()).getDiskCacheFile(diskCacheEntity.getKey());
    }

    @Override // org.xutils.http.loader.Loader
    public Loader<File> newInstance() {
        return new FileLoader();
    }

    @Override // org.xutils.http.loader.Loader
    public void save2Cache(UriRequest uriRequest) {
    }

    @Override // org.xutils.http.loader.Loader
    public void setParams(RequestParams requestParams) {
        if (requestParams != null) {
            this.f40760a = requestParams;
            this.f40763d = requestParams.isAutoResume();
            this.f40764e = requestParams.isAutoRename();
        }
    }
}
