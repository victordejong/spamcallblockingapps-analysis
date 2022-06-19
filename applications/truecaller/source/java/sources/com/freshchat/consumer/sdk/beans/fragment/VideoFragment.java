package com.freshchat.consumer.sdk.beans.fragment;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/VideoFragment.class */
public class VideoFragment extends MessageFragment {
    private Thumbnail thumbnail;

    public VideoFragment() {
        super(FragmentType.VIDEO.asInt());
    }

    public Thumbnail getThumbnail() {
        return this.thumbnail;
    }

    public void setThumbnail(Thumbnail thumbnail) {
        this.thumbnail = thumbnail;
    }

    @Override // com.freshchat.consumer.sdk.beans.fragment.MessageFragment
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoFragment{thumbnail=");
        m8728C.append(this.thumbnail);
        m8728C.append("} ");
        m8728C.append(super.toString());
        return m8728C.toString();
    }
}
