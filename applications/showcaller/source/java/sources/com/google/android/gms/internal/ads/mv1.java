package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mv1.class */
public final class mv1 extends Thread {

    /* renamed from: d */
    final /* synthetic */ AudioTrack f26890d;

    /* renamed from: e */
    final /* synthetic */ t52 f26891e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mv1(t52 t52Var, String str, AudioTrack audioTrack) {
        super("ExoPlayer:AudioTrackReleaseThread");
        this.f26891e = t52Var;
        this.f26890d = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.f26890d.flush();
            this.f26890d.release();
        } finally {
            conditionVariable = this.f26891e.f29833e;
            conditionVariable.open();
        }
    }
}
