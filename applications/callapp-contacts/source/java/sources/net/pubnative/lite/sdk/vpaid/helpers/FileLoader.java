package net.pubnative.lite.sdk.vpaid.helpers;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.vpaid.PlayerInfo;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import net.pubnative.lite.sdk.vpaid.enums.VastError;
import net.pubnative.lite.sdk.vpaid.utils.FileUtils;
import net.pubnative.lite.sdk.vpaid.utils.Utils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/helpers/FileLoader.class */
public class FileLoader {
    private static final int CONNECT_TIMEOUT = 10000;
    private static final String LOG_TAG = "FileLoader";
    private static final int READ_TIMEOUT = 10000;
    private static boolean useMobileNetworkForCaching;
    private boolean firstQuartile;
    private final Callback mCallback;
    private volatile HttpURLConnection mConnection;
    private final Context mContext;
    private volatile boolean mIsFileFullyDownloaded;
    private final File mLoadingFile;
    private final String mRemoteFileUrl;
    private volatile boolean mStop;
    private boolean midpoint;
    private boolean thirdQuartile;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback.class */
    public interface Callback {
        void onError(PlayerInfo playerInfo);

        void onFileLoaded(String str);

        void onProgress(double d);
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/helpers/FileLoader$FileHeaders.class */
    public static class FileHeaders {
        String eTag;
        int fileLength;

        FileHeaders(String str, int i) {
            this.eTag = str;
            this.fileLength = i;
        }
    }

    public FileLoader(String str, Context context, Callback callback) {
        this.mCallback = callback;
        this.mContext = context;
        this.mRemoteFileUrl = str;
        this.mLoadingFile = new File(FileUtils.getParentDir(context), FileUtils.obtainHashName(str));
    }

    private int appendFile(File file, String str, int i, FileHeaders fileHeaders) {
        Exception e;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        InputStream inputStream2;
        Throwable th;
        FileOutputStream fileOutputStream3;
        int i2;
        try {
            this.mConnection = obtainGetConnection(str, i, fileHeaders);
            inputStream2 = this.mConnection.getInputStream();
            try {
                fileOutputStream3 = new FileOutputStream(file, true);
                i2 = i;
            } catch (Exception e2) {
                e = e2;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = null;
            }
        } catch (Exception e3) {
            e = e3;
            fileOutputStream = null;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = null;
            inputStream = null;
        }
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                i2 = i;
                int read = inputStream2.read(bArr);
                if (read == -1) {
                    break;
                }
                fileOutputStream3.write(bArr, 0, read);
                i += read;
                handelProgress(i / fileHeaders.fileLength);
            }
            closeStream(inputStream2);
            fileOutputStream = fileOutputStream3;
        } catch (Exception e4) {
            e = e4;
            fileOutputStream = fileOutputStream3;
            i = i2;
            inputStream = inputStream2;
            try {
                Logger.m628e(LOG_TAG, "appendFile interrupted: " + e.getMessage());
                closeStream(inputStream);
                closeStream(fileOutputStream);
                return i;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream2 = fileOutputStream;
                closeStream(inputStream);
                closeStream(fileOutputStream2);
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream2 = fileOutputStream3;
            inputStream = inputStream2;
            th = th;
            closeStream(inputStream);
            closeStream(fileOutputStream2);
            throw th;
        }
        closeStream(fileOutputStream);
        return i;
    }

    private static void closeStream(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Logger.m628e(LOG_TAG, "Can't close stream");
            }
        }
    }

    private void handelProgress(double d) {
        Callback callback = this.mCallback;
        if (callback != null) {
            if (!this.firstQuartile) {
                if (d <= 0.25d) {
                    return;
                }
                this.firstQuartile = true;
                callback.onProgress(0.25d);
            } else if (!this.midpoint) {
                if (d <= 0.5d) {
                    return;
                }
                this.midpoint = true;
                callback.onProgress(0.5d);
            } else if (this.thirdQuartile || d <= 0.75d) {
            } else {
                this.thirdQuartile = true;
                callback.onProgress(0.75d);
            }
        }
    }

    private void handleEmulator() {
        if (Utils.isEmulator()) {
            Logger.m628e(LOG_TAG, "running on emulator");
            useMobileNetworkForCaching = true;
        }
    }

    private void handleFileFullDownloaded() {
        this.mIsFileFullyDownloaded = true;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.helpers.FileLoader.2
            @Override // java.lang.Runnable
            public void run() {
                if (FileLoader.this.mCallback != null) {
                    FileLoader.this.mCallback.onFileLoaded(FileLoader.this.mLoadingFile.getAbsolutePath());
                }
            }
        });
    }

    public void load() {
        try {
            if (this.mStop) {
                return;
            }
            FileHeaders obtainHeaders = obtainHeaders(this.mRemoteFileUrl);
            if (obtainHeaders == null) {
                Callback callback = this.mCallback;
                if (callback == null) {
                    return;
                }
                callback.onError(new PlayerInfo("Error during loading file"));
                return;
            }
            Logger.m630d(LOG_TAG, "File length: " + obtainHeaders.fileLength);
            long currentTimeMillis = System.currentTimeMillis();
            int i = 0;
            int i2 = 0;
            while (!this.mStop && i < obtainHeaders.fileLength) {
                i = appendFile(this.mLoadingFile, this.mRemoteFileUrl, i, obtainHeaders);
                i2++;
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            String str = LOG_TAG;
            Logger.m630d(str, "Load time: " + ((currentTimeMillis2 - currentTimeMillis) / 1000.0d));
            Logger.m630d(str, "AttemptsCount: ".concat(String.valueOf(i2)));
            if (i == obtainHeaders.fileLength) {
                handleFileFullDownloaded();
                return;
            }
            Callback callback2 = this.mCallback;
            if (callback2 == null) {
                return;
            }
            callback2.onError(new PlayerInfo("Error during file loading, attemptsCount: ".concat(String.valueOf(i2))));
        } catch (Exception e) {
            Logger.m628e(LOG_TAG, "Unexpected FileLoader error: " + e.getMessage());
        }
    }

    private void maybeLoadFile() {
        if (RequestParametersProvider.getConnectionType(this.mContext) == 2 || useMobileNetworkForCaching) {
            ExecutorHelper.getExecutor().submit(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.helpers.FileLoader.1
                @Override // java.lang.Runnable
                public void run() {
                    FileLoader.this.load();
                }
            });
            return;
        }
        Callback callback = this.mCallback;
        if (callback == null) {
            return;
        }
        callback.onError(new PlayerInfo("Mobile network. File will not be cached"));
    }

    private HttpURLConnection obtainGetConnection(String str, int i, FileHeaders fileHeaders) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setReadTimeout(10000);
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setRequestProperty("Range", "bytes=" + i + VerificationLanguage.REGION_PREFIX + fileHeaders.fileLength);
        httpURLConnection.setRequestProperty("If-Range", fileHeaders.eTag);
        return httpURLConnection;
    }

    private FileHeaders obtainHeaders(String str) {
        try {
            try {
                try {
                    this.mConnection = (HttpURLConnection) new URL(str).openConnection();
                    this.mConnection.setRequestMethod("HEAD");
                    if (this.mConnection.getResponseCode() == 200) {
                        FileHeaders fileHeaders = new FileHeaders(this.mConnection.getHeaderField("ETag"), this.mConnection.getContentLength());
                        if (this.mConnection != null) {
                            this.mConnection.disconnect();
                        }
                        return fileHeaders;
                    } else if (this.mConnection.getResponseCode() != 403 && this.mConnection.getResponseCode() != 206 && this.mConnection.getResponseCode() != 404) {
                        if (this.mConnection == null) {
                            return null;
                        }
                        this.mConnection.disconnect();
                        return null;
                    } else {
                        String str2 = LOG_TAG;
                        Logger.m628e(str2, "File not found by URL: " + this.mRemoteFileUrl);
                        ErrorLog.postError(this.mContext, VastError.TRAFFICKING);
                        if (this.mConnection == null) {
                            return null;
                        }
                        this.mConnection.disconnect();
                        return null;
                    }
                } catch (IOException e) {
                    String str3 = LOG_TAG;
                    Logger.m628e(str3, "File not found by URL: " + this.mRemoteFileUrl);
                    ErrorLog.postError(this.mContext, VastError.FILE_NOT_FOUND);
                    if (this.mConnection == null) {
                        return null;
                    }
                    this.mConnection.disconnect();
                    return null;
                }
            } catch (SocketTimeoutException e2) {
                String str4 = LOG_TAG;
                Logger.m628e(str4, "Timeout by URL: " + this.mRemoteFileUrl);
                ErrorLog.postError(this.mContext, VastError.TIMEOUT);
                if (this.mConnection == null) {
                    return null;
                }
                this.mConnection.disconnect();
                return null;
            }
        } catch (Throwable th) {
            if (this.mConnection != null) {
                this.mConnection.disconnect();
            }
            throw th;
        }
    }

    public static void setUseMobileNetworkForCaching(boolean z) {
        useMobileNetworkForCaching = z;
    }

    public void start() {
        String str = LOG_TAG;
        Logger.m630d(str, EventConstants.START);
        handleEmulator();
        Logger.m630d(str, "Use mobile network for caching: " + useMobileNetworkForCaching);
        if (TextUtils.isEmpty(this.mRemoteFileUrl)) {
            this.mCallback.onError(new PlayerInfo("FileUrl is empty"));
        } else if (!this.mLoadingFile.exists()) {
            maybeLoadFile();
        } else {
            Logger.m630d(str, "File already exists");
            handleFileFullDownloaded();
        }
    }

    public void stop() {
        File file;
        String str = LOG_TAG;
        Logger.m628e(str, "stop()");
        this.mStop = true;
        if (this.mConnection != null) {
            ExecutorHelper.getExecutor().submit(new Runnable() { // from class: net.pubnative.lite.sdk.vpaid.helpers.FileLoader.3
                @Override // java.lang.Runnable
                public void run() {
                    Logger.m628e(FileLoader.LOG_TAG, "disconnect()");
                    FileLoader.this.mConnection.disconnect();
                }
            });
        }
        if (this.mIsFileFullyDownloaded || (file = this.mLoadingFile) == null || !file.exists()) {
            return;
        }
        Logger.m628e(str, "remove bad file");
        this.mLoadingFile.delete();
    }
}
