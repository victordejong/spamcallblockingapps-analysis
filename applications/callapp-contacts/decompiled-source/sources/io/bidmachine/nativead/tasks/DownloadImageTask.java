package io.bidmachine.nativead.tasks;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.nativead.utils.ImageHelper;
import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/tasks/DownloadImageTask.class */
public class DownloadImageTask implements Runnable {
    private static final String DIR_NAME = "native_cache_image";
    private static final int RESULT_FAIL = 0;
    private static final int RESULT_IMAGE_SUCCESS = 2;
    private static final int RESULT_PATH_SUCCESS = 1;
    private static final int SERVER_TIME_OUT = 20000;
    private File cacheDir;
    private boolean checkAspectRatio;
    private Context context;
    private final Handler handler = new Handler(Looper.getMainLooper()) { // from class: io.bidmachine.nativead.tasks.DownloadImageTask.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (DownloadImageTask.this.listener != null) {
                int i = message.what;
                if (i == 0) {
                    DownloadImageTask.this.listener.onFail(DownloadImageTask.this);
                } else if (i == 1) {
                    DownloadImageTask.this.listener.onPathSuccess(DownloadImageTask.this, (Uri) message.obj);
                } else if (i == 2) {
                    DownloadImageTask.this.listener.onImageSuccess(DownloadImageTask.this, (Bitmap) message.obj);
                }
            }
        }
    };
    private OnCacheImageListener listener;
    private String url;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/tasks/DownloadImageTask$Builder.class */
    public class Builder {
        public Builder(Context context, String str) {
            DownloadImageTask.this.context = context;
            DownloadImageTask.this.url = str;
        }

        /* JADX WARN: Finally extract failed */
        public DownloadImageTask build() {
            try {
                DownloadImageTask downloadImageTask = DownloadImageTask.this;
                if (downloadImageTask.context == null) {
                    if (DownloadImageTask.this.listener != null) {
                        DownloadImageTask.this.listener.onFail(DownloadImageTask.this);
                    }
                } else if (Utils.canUseExternalFilesDir(DownloadImageTask.this.context)) {
                    DownloadImageTask downloadImageTask2 = DownloadImageTask.this;
                    downloadImageTask2.cacheDir = Utils.getCacheDir(downloadImageTask2.context, DownloadImageTask.DIR_NAME);
                }
                return downloadImageTask;
            } catch (Throwable th) {
                if (DownloadImageTask.this.context == null) {
                    if (DownloadImageTask.this.listener != null) {
                        DownloadImageTask.this.listener.onFail(DownloadImageTask.this);
                    }
                } else if (Utils.canUseExternalFilesDir(DownloadImageTask.this.context)) {
                    DownloadImageTask downloadImageTask3 = DownloadImageTask.this;
                    downloadImageTask3.cacheDir = Utils.getCacheDir(downloadImageTask3.context, DownloadImageTask.DIR_NAME);
                }
                throw th;
            }
        }

        public Builder setCheckAspectRatio(boolean z) {
            DownloadImageTask.this.checkAspectRatio = z;
            return this;
        }

        public Builder setOnCacheImageListener(OnCacheImageListener onCacheImageListener) {
            DownloadImageTask.this.listener = onCacheImageListener;
            return this;
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener.class */
    public interface OnCacheImageListener {
        void onFail(DownloadImageTask downloadImageTask);

        void onImageSuccess(DownloadImageTask downloadImageTask, Bitmap bitmap);

        void onPathSuccess(DownloadImageTask downloadImageTask, Uri uri);
    }

    private DownloadImageTask() {
    }

    private Bitmap convert(byte[] bArr, BitmapFactory.Options options) {
        Throwable th;
        Exception e;
        ByteArrayOutputStream byteArrayOutputStream;
        options.inJustDecodeBounds = false;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(bArr.length);
                try {
                    writeBitmap(bArr, options, byteArrayOutputStream2);
                    Bitmap decodeStream = BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream2.toByteArray()));
                    Utils.flush(byteArrayOutputStream2);
                    Utils.close(byteArrayOutputStream2);
                    return decodeStream;
                } catch (Exception e2) {
                    e = e2;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    Logger.log(e);
                    Utils.flush(byteArrayOutputStream);
                    Utils.close(byteArrayOutputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                Utils.flush(null);
                Utils.close(null);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            byteArrayOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            Utils.flush(null);
            Utils.close(null);
            throw th;
        }
    }

    private void downloadImage(Context context, String str) {
        File file;
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inJustDecodeBounds = true;
        InputStream inputStream = null;
        if (this.cacheDir != null) {
            File file2 = new File(this.cacheDir, Utils.generateFileName(str));
            file = file2;
            if (file2.exists()) {
                file = file2;
                if (file2.length() > 0) {
                    BitmapFactory.decodeFile(file2.getPath(), options);
                    if (isAspectRatioCorrect(options)) {
                        sendPathSuccess(Uri.fromFile(file2));
                        return;
                    } else {
                        sendFail();
                        return;
                    }
                }
            }
        } else {
            file = null;
        }
        try {
            inputStream = b.getInputStream(str, SERVER_TIME_OUT);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream(inputStream.available());
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
        try {
            byte[] bArr = new byte[PropertyFlags.UNSIGNED];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
            if (!isAspectRatioCorrect(options)) {
                sendFail();
                return;
            }
            if (file != null) {
                saveImage(file, byteArray, options);
                sendPathSuccess(Uri.fromFile(file));
            } else {
                int calculateReqWidth = ImageHelper.calculateReqWidth(context);
                options.inSampleSize = ImageHelper.calculateInSamplesSize(options, calculateReqWidth, ImageHelper.calculateReqHeight(calculateReqWidth, this.checkAspectRatio));
                Bitmap convert = convert(byteArray, options);
                if (convert != null) {
                    sendImageSuccess(convert);
                } else {
                    sendFail();
                }
            }
        } catch (Throwable th4) {
            th = th4;
            inputStream = inputStream;
            try {
                Logger.log(th);
                sendFail();
            } finally {
                Utils.flush(byteArrayOutputStream);
                Utils.close(byteArrayOutputStream);
                Utils.close(inputStream);
            }
        }
    }

    private boolean isAspectRatioCorrect(BitmapFactory.Options options) {
        if (!this.checkAspectRatio) {
            return true;
        }
        return ((float) options.outWidth) / ((float) options.outHeight) >= 1.5f;
    }

    public static Builder newBuilder(Context context, String str) {
        return new Builder(context, str);
    }

    private void saveImage(File file, byte[] bArr, BitmapFactory.Options options) {
        Throwable th;
        Exception e;
        FileOutputStream fileOutputStream;
        options.inJustDecodeBounds = false;
        FileOutputStream fileOutputStream2 = null;
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            writeBitmap(bArr, options, fileOutputStream);
            Utils.flush(fileOutputStream);
            Utils.close(fileOutputStream);
        } catch (Exception e3) {
            e = e3;
            fileOutputStream2 = fileOutputStream;
            Logger.log(e);
            Utils.flush(fileOutputStream2);
            Utils.close(fileOutputStream2);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream3 = fileOutputStream;
            Utils.flush(fileOutputStream3);
            Utils.close(fileOutputStream3);
            throw th;
        }
    }

    private void sendFail() {
        Handler handler = this.handler;
        if (handler != null) {
            handler.sendEmptyMessage(0);
        }
    }

    private void sendImageSuccess(Bitmap bitmap) {
        Handler handler = this.handler;
        if (handler != null) {
            this.handler.sendMessage(handler.obtainMessage(2, bitmap));
        }
    }

    private void sendPathSuccess(Uri uri) {
        Handler handler = this.handler;
        if (handler != null) {
            this.handler.sendMessage(handler.obtainMessage(1, uri));
        }
    }

    private void writeBitmap(byte[] bArr, BitmapFactory.Options options, OutputStream outputStream) {
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        decodeByteArray.compress(Bitmap.CompressFormat.PNG, 85, outputStream);
        decodeByteArray.recycle();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (TextUtils.isEmpty(this.url) || !Utils.isHttpUrl(this.url)) {
            sendFail();
            return;
        }
        String replace = this.url.replace(StringUtils.SPACE, "%20");
        this.url = replace;
        downloadImage(this.context, replace);
    }
}
