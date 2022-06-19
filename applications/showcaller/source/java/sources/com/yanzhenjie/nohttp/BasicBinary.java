package com.yanzhenjie.nohttp;

import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import com.yanzhenjie.nohttp.able.Finishable;
import com.yanzhenjie.nohttp.able.Startable;
import com.yanzhenjie.nohttp.tools.IOUtils;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/BasicBinary.class */
public abstract class BasicBinary implements Binary, Startable, Finishable {
    private String fileName;
    private OnUploadListener mUploadListener;
    private String mimeType;
    private int what;
    private boolean isStarted = false;
    private boolean isCancel = false;
    private boolean isFinish = false;

    /* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/BasicBinary$UploadPoster.class */
    public class UploadPoster implements Runnable {
        static final int ON_CANCEL = 1;
        static final int ON_ERROR = 4;
        static final int ON_FINISH = 3;
        static final int ON_PROGRESS = 2;
        static final int ON_START = 0;
        private int command;
        private Exception exception;
        private final OnUploadListener mOnUploadListener;
        private int progress;
        private final int what;

        public UploadPoster(int i, OnUploadListener onUploadListener) {
            BasicBinary.this = r4;
            this.what = i;
            this.mOnUploadListener = onUploadListener;
        }

        public void cancel() {
            this.command = 1;
        }

        public void error(Exception exc) {
            this.command = 4;
            this.exception = exc;
        }

        public void finish() {
            this.command = 3;
        }

        public void progress(int i) {
            this.command = 2;
            this.progress = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            OnUploadListener onUploadListener = this.mOnUploadListener;
            if (onUploadListener != null) {
                int i = this.command;
                if (i == 0) {
                    onUploadListener.onStart(this.what);
                } else if (i == 3) {
                    onUploadListener.onFinish(this.what);
                } else if (i == 2) {
                    onUploadListener.onProgress(this.what, this.progress);
                } else if (i == 1) {
                    onUploadListener.onCancel(this.what);
                } else if (i != 4) {
                } else {
                    onUploadListener.onError(this.what, this.exception);
                }
            }
        }

        public void start() {
            this.command = 0;
        }
    }

    public BasicBinary(String str, String str2) {
        this.fileName = str;
        this.mimeType = str2;
    }

    @Override // com.yanzhenjie.nohttp.able.Cancelable
    public void cancel() {
        if (!this.isCancel) {
            this.isCancel = true;
            postCancel();
        }
    }

    @Override // com.yanzhenjie.nohttp.able.Finishable
    @Deprecated
    public void finish() {
        this.isFinish = true;
    }

    public abstract long getBinaryLength();

    @Override // com.yanzhenjie.nohttp.Binary
    public String getFileName() {
        if (TextUtils.isEmpty(this.fileName)) {
            this.fileName = Long.toString(System.currentTimeMillis());
        }
        return this.fileName;
    }

    protected abstract InputStream getInputStream();

    @Override // com.yanzhenjie.nohttp.Binary
    public final long getLength() {
        if (!isCancelled()) {
            return getBinaryLength();
        }
        return 0L;
    }

    @Override // com.yanzhenjie.nohttp.Binary
    public String getMimeType() {
        String fileName = getFileName();
        if (TextUtils.isEmpty(this.mimeType) && !TextUtils.isEmpty(fileName)) {
            this.mimeType = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(fileName));
        }
        if (TextUtils.isEmpty(this.mimeType)) {
            this.mimeType = Headers.HEAD_VALUE_CONTENT_TYPE_OCTET_STREAM;
        }
        return this.mimeType;
    }

    @Override // com.yanzhenjie.nohttp.able.Cancelable
    @Deprecated
    public boolean isCanceled() {
        return isCancelled();
    }

    @Override // com.yanzhenjie.nohttp.able.Cancelable
    public boolean isCancelled() {
        return this.isCancel;
    }

    @Override // com.yanzhenjie.nohttp.able.Finishable
    @Deprecated
    public boolean isFinished() {
        return this.isFinish;
    }

    @Override // com.yanzhenjie.nohttp.able.Startable
    @Deprecated
    public boolean isStarted() {
        return this.isStarted;
    }

    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    @Override // com.yanzhenjie.nohttp.Binary
    public void onWriteBinary(OutputStream outputStream) {
        BufferedInputStream bufferedInputStream;
        InputStream inputStream;
        if (!isCancelled()) {
            BufferedInputStream bufferedInputStream2 = null;
            BufferedInputStream bufferedInputStream3 = null;
            try {
                try {
                    inputStream = getInputStream();
                } catch (Exception e) {
                    Logger.m566e((Throwable) e);
                    BufferedInputStream bufferedInputStream4 = bufferedInputStream2;
                    postError(e);
                    bufferedInputStream = bufferedInputStream2;
                }
                if (inputStream != null) {
                    BufferedInputStream bufferedInputStream5 = IOUtils.toBufferedInputStream(inputStream);
                    start();
                    postStart();
                    long length = getLength();
                    byte[] bArr = new byte[4096];
                    char c = 0;
                    int i = 0;
                    while (true) {
                        bufferedInputStream3 = bufferedInputStream5;
                        bufferedInputStream2 = bufferedInputStream5;
                        bufferedInputStream = bufferedInputStream5;
                        if (isCancelled()) {
                            break;
                        }
                        int read = bufferedInputStream5.read(bArr);
                        bufferedInputStream = bufferedInputStream5;
                        if (read == -1) {
                            break;
                        }
                        outputStream.write(bArr, 0, read);
                        if (length != 0 && this.mUploadListener != null) {
                            ?? r0 = c + read;
                            int i2 = (int) ((100 * r0) / length);
                            if (i2 % 3 != 0 && i2 % 5 != 0) {
                                c = r0;
                                if (i2 % 7 == 0) {
                                }
                            }
                            c = r0;
                            if (i != i2) {
                                postProgress(i2);
                                i = i2;
                                c = r0;
                            }
                        }
                    }
                } else {
                    IOUtils.closeQuietly(inputStream);
                    postFinish();
                    return;
                }
            } finally {
                IOUtils.closeQuietly(bufferedInputStream3);
                postFinish();
            }
        }
        finish();
    }

    protected void postCancel() {
        UploadPoster uploadPoster = new UploadPoster(this.what, this.mUploadListener);
        uploadPoster.cancel();
        HandlerDelivery.getInstance().post(uploadPoster);
    }

    protected void postError(Exception exc) {
        UploadPoster uploadPoster = new UploadPoster(this.what, this.mUploadListener);
        uploadPoster.error(exc);
        HandlerDelivery.getInstance().post(uploadPoster);
    }

    protected void postFinish() {
        UploadPoster uploadPoster = new UploadPoster(this.what, this.mUploadListener);
        uploadPoster.finish();
        HandlerDelivery.getInstance().post(uploadPoster);
    }

    protected void postProgress(int i) {
        UploadPoster uploadPoster = new UploadPoster(this.what, this.mUploadListener);
        uploadPoster.progress(i);
        HandlerDelivery.getInstance().post(uploadPoster);
    }

    protected void postStart() {
        UploadPoster uploadPoster = new UploadPoster(this.what, this.mUploadListener);
        uploadPoster.start();
        HandlerDelivery.getInstance().post(uploadPoster);
    }

    public void setUploadListener(int i, OnUploadListener onUploadListener) {
        this.what = i;
        this.mUploadListener = onUploadListener;
    }

    @Override // com.yanzhenjie.nohttp.able.Startable
    @Deprecated
    public void start() {
        this.isStarted = true;
    }
}
