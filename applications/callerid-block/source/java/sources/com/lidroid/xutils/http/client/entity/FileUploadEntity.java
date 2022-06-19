package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.entity.FileEntity;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/entity/FileUploadEntity.class */
public class FileUploadEntity extends FileEntity implements UploadEntity {
    private long fileSize;
    private long uploadedSize = 0;
    private RequestCallBackHandler callBackHandler = null;

    public FileUploadEntity(File file, String str) {
        super(file, str);
        this.fileSize = file.length();
    }

    @Override // com.lidroid.xutils.http.client.entity.UploadEntity
    public void setCallBackHandler(RequestCallBackHandler requestCallBackHandler) {
        this.callBackHandler = requestCallBackHandler;
    }

    public void writeTo(OutputStream outputStream) {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        if (outputStream != null) {
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(((FileEntity) this).file));
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read == -1) {
                            outputStream.flush();
                            RequestCallBackHandler requestCallBackHandler = this.callBackHandler;
                            if (requestCallBackHandler != null) {
                                requestCallBackHandler.updateProgress(this.fileSize, this.uploadedSize, true);
                            }
                            IOUtils.closeQuietly(bufferedInputStream);
                            return;
                        }
                        outputStream.write(bArr, 0, read);
                        long j = this.uploadedSize + read;
                        this.uploadedSize = j;
                        RequestCallBackHandler requestCallBackHandler2 = this.callBackHandler;
                        if (requestCallBackHandler2 != null && !requestCallBackHandler2.updateProgress(this.fileSize, j, false)) {
                            throw new InterruptedIOException("cancel");
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly(bufferedInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedInputStream = null;
            }
        } else {
            throw new IllegalArgumentException("Output stream may not be null");
        }
    }
}
