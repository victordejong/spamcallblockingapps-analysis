package com.callapp.contacts.util.video.videoFilters;

import android.graphics.Bitmap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/video/videoFilters/AnimationFrameProvider.class */
public interface AnimationFrameProvider {
    /* renamed from: a */
    void mo26885a();

    int getFrameCount();

    Bitmap getNextFrame();

    long getNextFrameDurationNs();
}
