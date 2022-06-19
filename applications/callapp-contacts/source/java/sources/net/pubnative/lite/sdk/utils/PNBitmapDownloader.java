package net.pubnative.lite.sdk.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.URLUtil;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PNBitmapDownloader.class */
public class PNBitmapDownloader {
    private static final String TAG = "PNBitmapDownloader";
    private Runnable downloadTask = new Runnable() { // from class: net.pubnative.lite.sdk.utils.PNBitmapDownloader.1
        HttpURLConnection connection = null;

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    URL url = new URL(PNBitmapDownloader.this.mURL);
                    this.connection = (HttpURLConnection) url.openConnection();
                    InputStream inputStream = url.openConnection().getInputStream();
                    BitmapFactory.decodeStream(inputStream, new Rect(), PNBitmapDownloader.this.getBitmapOptionsDecodingBounds(true));
                    inputStream.close();
                    InputStream inputStream2 = url.openConnection().getInputStream();
                    Bitmap decodeStream = BitmapFactory.decodeStream(inputStream2, null, PNBitmapDownloader.this.getBitmapOptionsDecodingBounds(false));
                    inputStream2.close();
                    PNBitmapLruCache.addBitmapToMemoryCache(PNBitmapDownloader.this.mURL, decodeStream);
                    PNBitmapDownloader.this.invokeLoad(decodeStream);
                    HttpURLConnection httpURLConnection = this.connection;
                    if (httpURLConnection == null) {
                        return;
                    }
                    httpURLConnection.disconnect();
                } catch (Error e) {
                    PNBitmapDownloader.this.invokeFail(new Exception(e.toString()));
                    HttpURLConnection httpURLConnection2 = this.connection;
                    if (httpURLConnection2 == null) {
                        return;
                    }
                    httpURLConnection2.disconnect();
                } catch (Exception e2) {
                    PNBitmapDownloader.this.invokeFail(e2);
                    HttpURLConnection httpURLConnection3 = this.connection;
                    if (httpURLConnection3 == null) {
                        return;
                    }
                    httpURLConnection3.disconnect();
                }
            } catch (Throwable th) {
                HttpURLConnection httpURLConnection4 = this.connection;
                if (httpURLConnection4 != null) {
                    httpURLConnection4.disconnect();
                }
                throw th;
            }
        }
    };
    private Runnable loadFromFileSystemTask = new Runnable() { // from class: net.pubnative.lite.sdk.utils.PNBitmapDownloader.2
        @Override // java.lang.Runnable
        public void run() {
            try {
                Bitmap decodeFile = BitmapFactory.decodeFile(Uri.parse(PNBitmapDownloader.this.mURL).getEncodedPath(), PNBitmapDownloader.this.getBitmapOptionsDecodingBounds(false));
                PNBitmapLruCache.addBitmapToMemoryCache(PNBitmapDownloader.this.mURL, decodeFile);
                PNBitmapDownloader.this.invokeLoad(decodeFile);
            } catch (Error e) {
                PNBitmapDownloader.this.invokeFail(new Exception(e.toString()));
            } catch (Exception e2) {
                PNBitmapDownloader.this.invokeFail(e2);
            }
        }
    };
    private DownloadListener mDownloadListener;
    private Handler mHandler;
    private int mHeight;
    private String mURL;
    private int mWidth;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener.class */
    public interface DownloadListener {
        void onDownloadFailed(String str, Exception exc);

        void onDownloadFinish(String str, Bitmap bitmap);
    }

    private void downloadImage() {
        new Thread(this.downloadTask).start();
    }

    public BitmapFactory.Options getBitmapOptionsDecodingBounds(boolean z) {
        int i;
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i2 = this.mWidth;
        if (i2 > 0 && (i = this.mHeight) > 0 && !z) {
            options.inSampleSize = calculateInSampleSize(options, i2, i);
        }
        options.inJustDecodeBounds = z;
        return options;
    }

    private void loadCachedImage() {
        new Thread(this.loadFromFileSystemTask).start();
    }

    protected int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        int i6 = 1;
        if (i3 > i2 || i4 > i) {
            int i7 = i3 / 2;
            int i8 = i4 / 2;
            while (true) {
                i5 = i6;
                if (i7 / i6 < i2) {
                    break;
                }
                i5 = i6;
                if (i8 / i6 < i) {
                    break;
                }
                i6 *= 2;
            }
        }
        return i5;
    }

    public void download(String str, int i, int i2, DownloadListener downloadListener) {
        this.mHandler = new Handler(Looper.getMainLooper());
        if (downloadListener == null) {
            Log.w(TAG, "download won't start since there is no assigned listener to It");
            return;
        }
        this.mDownloadListener = downloadListener;
        this.mURL = str;
        this.mWidth = i;
        this.mHeight = i2;
        if (TextUtils.isEmpty(str)) {
            invokeFail(new Exception("Image URL is empty"));
        } else if (URLUtil.isHttpUrl(str) || URLUtil.isHttpsUrl(str)) {
            downloadImage();
        } else if (URLUtil.isFileUrl(str)) {
            loadCachedImage();
        } else {
            invokeFail(new Exception("Wrong file URL!"));
        }
    }

    public void download(String str, DownloadListener downloadListener) {
        download(str, 0, 0, downloadListener);
    }

    protected void invokeFail(final Exception exc) {
        this.mHandler.post(new Runnable() { // from class: net.pubnative.lite.sdk.utils.PNBitmapDownloader.4
            @Override // java.lang.Runnable
            public void run() {
                DownloadListener downloadListener = PNBitmapDownloader.this.mDownloadListener;
                PNBitmapDownloader.this.mDownloadListener = null;
                if (downloadListener != null) {
                    downloadListener.onDownloadFailed(PNBitmapDownloader.this.mURL, exc);
                }
            }
        });
    }

    protected void invokeLoad(final Bitmap bitmap) {
        this.mHandler.post(new Runnable() { // from class: net.pubnative.lite.sdk.utils.PNBitmapDownloader.3
            @Override // java.lang.Runnable
            public void run() {
                DownloadListener downloadListener = PNBitmapDownloader.this.mDownloadListener;
                PNBitmapDownloader.this.mDownloadListener = null;
                if (downloadListener != null) {
                    downloadListener.onDownloadFinish(PNBitmapDownloader.this.mURL, bitmap);
                }
            }
        });
    }
}
