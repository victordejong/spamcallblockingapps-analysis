package com.freshchat.consumer.sdk.beans.fragment;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/Thumbnail.class */
public class Thumbnail {
    private String content;
    private String contentType;
    private long height;
    private long width;

    public String getContent() {
        return this.content;
    }

    public String getContentType() {
        return this.contentType;
    }

    public long getHeight() {
        return this.height;
    }

    public long getWidth() {
        return this.width;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void setHeight(long j) {
        this.height = j;
    }

    public void setWidth(long j) {
        this.width = j;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Thumbnail{content='");
        C22128a.m8678P0(m8728C, this.content, '\'', ", contentType='");
        C22128a.m8678P0(m8728C, this.contentType, '\'', ", height=");
        m8728C.append(this.height);
        m8728C.append(", width=");
        m8728C.append(this.width);
        m8728C.append('}');
        return m8728C.toString();
    }
}
