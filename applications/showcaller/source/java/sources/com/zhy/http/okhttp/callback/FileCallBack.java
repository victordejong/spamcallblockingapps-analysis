package com.zhy.http.okhttp.callback;

import com.zhy.http.okhttp.OkHttpUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/callback/FileCallBack.class */
public abstract class FileCallBack extends Callback<File> {
    private String destFileDir;
    private String destFileName;

    public FileCallBack(String str, String str2) {
        this.destFileDir = str;
        this.destFileName = str2;
    }

    @Override // com.zhy.http.okhttp.callback.Callback
    public File parseNetworkResponse(Response response, int i) {
        return saveFile(response, i);
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    public File saveFile(Response response, final int i) {
        Throwable th;
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        byte[] bArr = new byte[2048];
        try {
            inputStream = response.body().byteStream();
            try {
                final long contentLength = response.body().contentLength();
                final char c = 0;
                File file = new File(this.destFileDir);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, this.destFileName);
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                while (true) {
                    try {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        c += read;
                        fileOutputStream2.write(bArr, 0, read);
                        OkHttpUtils.getInstance().getDelivery().execute(new Runnable() { // from class: com.zhy.http.okhttp.callback.FileCallBack.1
                            @Override // java.lang.Runnable
                            public void run() {
                                FileCallBack fileCallBack = FileCallBack.this;
                                float f = (float) c;
                                long j = contentLength;
                                fileCallBack.inProgress((f * 1.0f) / ((float) j), j, i);
                            }
                        });
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        try {
                            response.body().close();
                            if (inputStream != null) {
                                inputStream.close();
                            }
                        } catch (IOException e) {
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e2) {
                            }
                        }
                        throw th;
                    }
                }
                fileOutputStream2.flush();
                try {
                    response.body().close();
                    inputStream.close();
                } catch (IOException e3) {
                }
                try {
                    fileOutputStream2.close();
                } catch (IOException e4) {
                }
                return file2;
            } catch (Throwable th3) {
                th = th3;
                fileOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
            inputStream = null;
        }
    }
}
