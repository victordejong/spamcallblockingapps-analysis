package com.freshchat.consumer.sdk.beans.fragment;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/ImageFragment.class */
public class ImageFragment extends MessageFragment {
    private int height;
    private Thumbnail thumbnail;
    private int width;

    public ImageFragment() {
        super(FragmentType.IMAGE.asInt());
    }

    public int getHeight() {
        return this.height;
    }

    public Thumbnail getThumbnail() {
        return this.thumbnail;
    }

    public int getWidth() {
        return this.width;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setThumbnail(Thumbnail thumbnail) {
        this.thumbnail = thumbnail;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    @Override // com.freshchat.consumer.sdk.beans.fragment.MessageFragment
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ImageFragment{height=");
        m8728C.append(this.height);
        m8728C.append(", width=");
        m8728C.append(this.width);
        m8728C.append(", thumbnail=");
        m8728C.append(this.thumbnail);
        m8728C.append("} ");
        m8728C.append(super.toString());
        return m8728C.toString();
    }
}
