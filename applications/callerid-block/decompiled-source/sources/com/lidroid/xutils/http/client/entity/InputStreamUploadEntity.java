package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import java.io.InputStream;
import org.apache.http.entity.AbstractHttpEntity;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/entity/InputStreamUploadEntity.class */
public class InputStreamUploadEntity extends AbstractHttpEntity implements UploadEntity {
    private static final int BUFFER_SIZE = 2048;
    private final InputStream content;
    private final long length;
    private long uploadedSize = 0;
    private RequestCallBackHandler callBackHandler = null;

    public InputStreamUploadEntity(InputStream inputStream, long j) {
        if (inputStream != null) {
            this.content = inputStream;
            this.length = j;
            return;
        }
        throw new IllegalArgumentException("Source input stream may not be null");
    }

    public void consumeContent() {
        this.content.close();
    }

    public InputStream getContent() {
        return this.content;
    }

    public long getContentLength() {
        return this.length;
    }

    public boolean isRepeatable() {
        return false;
    }

    public boolean isStreaming() {
        return true;
    }

    @Override // com.lidroid.xutils.http.client.entity.UploadEntity
    public void setCallBackHandler(RequestCallBackHandler requestCallBackHandler) {
        this.callBackHandler = requestCallBackHandler;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeTo(java.io.OutputStream r9) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.http.client.entity.InputStreamUploadEntity.writeTo(java.io.OutputStream):void");
    }
}
