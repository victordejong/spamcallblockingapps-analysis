package com.google.android.exoplayer2.drm;

import android.media.MediaDrm;
import com.google.android.exoplayer2.drm.ExoMediaDrm;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/FrameworkMediaDrm$1.class */
public class FrameworkMediaDrm$1 implements MediaDrm.OnEventListener {
    public final /* synthetic */ FrameworkMediaDrm this$0;
    public final /* synthetic */ ExoMediaDrm.OnEventListener val$listener;

    public FrameworkMediaDrm$1(FrameworkMediaDrm frameworkMediaDrm, ExoMediaDrm.OnEventListener onEventListener) {
        this.this$0 = frameworkMediaDrm;
        this.val$listener = onEventListener;
    }

    @Override // android.media.MediaDrm.OnEventListener
    public void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
        this.val$listener.onEvent(this.this$0, bArr, i, i2, bArr2);
    }
}
