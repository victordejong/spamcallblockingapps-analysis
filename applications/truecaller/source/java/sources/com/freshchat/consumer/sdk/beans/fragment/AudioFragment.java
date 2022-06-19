package com.freshchat.consumer.sdk.beans.fragment;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/AudioFragment.class */
public class AudioFragment extends MessageFragment {
    private int duration;

    public AudioFragment() {
        super(FragmentType.AUDIO.asInt());
    }

    public int getDuration() {
        return this.duration;
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    @Override // com.freshchat.consumer.sdk.beans.fragment.MessageFragment
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AudioFragment{duration=");
        m8728C.append(this.duration);
        m8728C.append("} ");
        m8728C.append(super.toString());
        return m8728C.toString();
    }
}
