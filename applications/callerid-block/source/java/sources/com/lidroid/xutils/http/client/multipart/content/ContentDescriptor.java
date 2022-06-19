package com.lidroid.xutils.http.client.multipart.content;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/multipart/content/ContentDescriptor.class */
public interface ContentDescriptor {
    String getCharset();

    long getContentLength();

    String getMediaType();

    String getMimeType();

    String getSubType();

    String getTransferEncoding();
}
