package com.google.android.exoplayer2.drm;

import android.media.MediaDrm;
import com.google.android.exoplayer2.drm.ExoMediaDrm;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/FrameworkMediaDrm$2.class */
public class FrameworkMediaDrm$2 implements MediaDrm.OnKeyStatusChangeListener {
    public final /* synthetic */ FrameworkMediaDrm this$0;
    public final /* synthetic */ ExoMediaDrm.OnKeyStatusChangeListener val$listener;

    public FrameworkMediaDrm$2(FrameworkMediaDrm frameworkMediaDrm, ExoMediaDrm.OnKeyStatusChangeListener onKeyStatusChangeListener) {
        this.this$0 = frameworkMediaDrm;
        this.val$listener = onKeyStatusChangeListener;
    }

    @Override // android.media.MediaDrm.OnKeyStatusChangeListener
    public void onKeyStatusChange(MediaDrm mediaDrm, byte[] bArr, List<MediaDrm.KeyStatus> list, boolean z) {
        ArrayList arrayList = new ArrayList();
        for (MediaDrm.KeyStatus keyStatus : list) {
            arrayList.add(new ExoMediaDrm.DefaultKeyStatus(keyStatus.getStatusCode(), keyStatus.getKeyId()));
        }
        this.val$listener.onKeyStatusChange(this.this$0, bArr, arrayList, z);
    }
}
