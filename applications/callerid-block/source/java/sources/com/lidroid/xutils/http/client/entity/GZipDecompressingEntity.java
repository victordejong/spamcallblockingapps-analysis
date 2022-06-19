package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/entity/GZipDecompressingEntity.class */
public class GZipDecompressingEntity extends DecompressingEntity {
    public GZipDecompressingEntity(HttpEntity httpEntity) {
        super(httpEntity);
    }

    @Override // com.lidroid.xutils.http.client.entity.DecompressingEntity
    InputStream decorate(InputStream inputStream) {
        return new GZIPInputStream(inputStream);
    }

    @Override // com.lidroid.xutils.http.client.entity.DecompressingEntity
    public /* bridge */ /* synthetic */ InputStream getContent() {
        return super.getContent();
    }

    public Header getContentEncoding() {
        return null;
    }

    @Override // com.lidroid.xutils.http.client.entity.DecompressingEntity
    public /* bridge */ /* synthetic */ long getContentLength() {
        return super.getContentLength();
    }

    @Override // com.lidroid.xutils.http.client.entity.DecompressingEntity, com.lidroid.xutils.http.client.entity.UploadEntity
    public /* bridge */ /* synthetic */ void setCallBackHandler(RequestCallBackHandler requestCallBackHandler) {
        super.setCallBackHandler(requestCallBackHandler);
    }

    @Override // com.lidroid.xutils.http.client.entity.DecompressingEntity
    public /* bridge */ /* synthetic */ void writeTo(OutputStream outputStream) {
        super.writeTo(outputStream);
    }
}
