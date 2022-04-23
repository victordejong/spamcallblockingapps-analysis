package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MultipartEntity;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/multipart/content/ContentBody.class */
public interface ContentBody extends ContentDescriptor {
    String getFilename();

    void setCallBackInfo(MultipartEntity.CallBackInfo callBackInfo);

    void writeTo(OutputStream outputStream);
}
