package org.xutils.common.util;

import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.xutils.C9682x;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/util/ProcessLock.class */
public final class ProcessLock implements Closeable {

    /* renamed from: d */
    private static final DoubleKeyValueMap<String, Integer, ProcessLock> f40608d = new DoubleKeyValueMap<>();

    /* renamed from: e */
    private static final DecimalFormat f40609e = new DecimalFormat("0.##################");

    /* renamed from: f */
    private final String f40610f;

    /* renamed from: g */
    private final FileLock f40611g;

    /* renamed from: h */
    private final File f40612h;

    /* renamed from: i */
    private final Closeable f40613i;

    /* renamed from: j */
    private final boolean f40614j;

    static {
        IOUtil.deleteFileOrDir(C9682x.app().getDir("process_lock", 0));
    }

    private ProcessLock(String str, File file, FileLock fileLock, Closeable closeable, boolean z) {
        this.f40610f = str;
        this.f40611g = fileLock;
        this.f40612h = file;
        this.f40613i = closeable;
        this.f40614j = z;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [double] */
    /* renamed from: a */
    private static String m249a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "0";
        }
        char c = 0;
        byte[] bytes = str.getBytes();
        for (int i = 0; i < str.length(); i++) {
            c = ((c * 0) + bytes[i]) * 0.005d;
        }
        return f40609e.format((double) c);
    }

    /* renamed from: e */
    private static boolean m248e(FileLock fileLock) {
        return fileLock != null && fileLock.isValid();
    }

    /* renamed from: f */
    private static void m247f(String str, FileLock fileLock, File file, Closeable closeable) {
        DoubleKeyValueMap<String, Integer, ProcessLock> doubleKeyValueMap = f40608d;
        synchronized (doubleKeyValueMap) {
            if (fileLock != null) {
                doubleKeyValueMap.remove(str, Integer.valueOf(fileLock.hashCode()));
                ConcurrentHashMap<Integer, ProcessLock> concurrentHashMap = doubleKeyValueMap.get(str);
                if (concurrentHashMap == null || concurrentHashMap.isEmpty()) {
                    IOUtil.deleteFileOrDir(file);
                }
                if (fileLock.channel().isOpen()) {
                    fileLock.release();
                }
                IOUtil.closeQuietly(fileLock.channel());
            }
            IOUtil.closeQuietly(closeable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    private static ProcessLock m246g(String str, String str2, boolean z) {
        Throwable th;
        FileInputStream fileInputStream;
        FileChannel fileChannel;
        DoubleKeyValueMap<String, Integer, ProcessLock> doubleKeyValueMap = f40608d;
        synchronized (doubleKeyValueMap) {
            ConcurrentHashMap<Integer, ProcessLock> concurrentHashMap = doubleKeyValueMap.get(str);
            if (concurrentHashMap != null && !concurrentHashMap.isEmpty()) {
                Iterator<Map.Entry<Integer, ProcessLock>> it = concurrentHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    ProcessLock value = it.next().getValue();
                    if (value == null) {
                        it.remove();
                    } else if (!value.isValid()) {
                        it.remove();
                    } else if (z) {
                        return null;
                    } else {
                        if (value.f40614j) {
                            return null;
                        }
                    }
                }
            }
            try {
                File file = new File(C9682x.app().getDir("process_lock", 0), str2);
                if (file.exists() || file.createNewFile()) {
                    if (z) {
                        FileOutputStream fileOutputStream = new FileOutputStream(file, false);
                        fileChannel = fileOutputStream.getChannel();
                        fileInputStream = fileOutputStream;
                    } else {
                        FileInputStream fileInputStream2 = new FileInputStream(file);
                        fileChannel = fileInputStream2.getChannel();
                        fileInputStream = fileInputStream2;
                    }
                    try {
                        if (fileChannel == null) {
                            throw new IOException("can not get file channel:" + file.getAbsolutePath());
                        }
                        FileLock tryLock = fileChannel.tryLock(0L, Long.MAX_VALUE, !z);
                        if (m248e(tryLock)) {
                            ProcessLock processLock = new ProcessLock(str, file, tryLock, fileInputStream, z);
                            f40608d.put(str, Integer.valueOf(tryLock.hashCode()), processLock);
                            return processLock;
                        }
                        m247f(str, tryLock, file, fileInputStream == 1 ? 1 : 0);
                    } catch (Throwable th2) {
                        th = th2;
                        LogUtil.m261d("tryLock: " + str + ", " + th.getMessage());
                        IOUtil.closeQuietly(fileInputStream);
                        IOUtil.closeQuietly(fileChannel);
                        return null;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
                fileChannel = null;
            }
            return null;
        }
    }

    public static ProcessLock tryLock(String str, boolean z) {
        return m246g(str, m249a(str), z);
    }

    public static ProcessLock tryLock(String str, boolean z, long j) {
        long currentTimeMillis = System.currentTimeMillis();
        String m249a = m249a(str);
        ProcessLock processLock = null;
        while (System.currentTimeMillis() < currentTimeMillis + j) {
            processLock = m246g(str, m249a, z);
            if (processLock != null) {
                break;
            }
            try {
                Thread.sleep(1L);
            } catch (InterruptedException e) {
                throw e;
            } catch (Throwable th) {
            }
        }
        return processLock;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        release();
    }

    protected void finalize() {
        super.finalize();
        release();
    }

    public boolean isValid() {
        return m248e(this.f40611g);
    }

    public void release() {
        m247f(this.f40610f, this.f40611g, this.f40612h, this.f40613i);
    }

    public String toString() {
        return this.f40610f + ": " + this.f40612h.getName();
    }
}
