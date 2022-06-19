package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r32.class */
public final class r32 extends AudioTrack.StreamEventCallback {

    /* renamed from: a */
    final /* synthetic */ t52 f28756a;

    /* renamed from: b */
    final /* synthetic */ s42 f28757b;

    public r32(s42 s42Var, t52 t52Var) {
        this.f28757b = s42Var;
        this.f28756a = t52Var;
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onDataRequest(AudioTrack audioTrack, int i) {
        AudioTrack audioTrack2;
        il1 il1Var;
        boolean z;
        il1 il1Var2;
        audioTrack2 = this.f28757b.f29406c.f29842n;
        C7173y8.m8895d(audioTrack == audioTrack2);
        il1Var = this.f28757b.f29406c.f29839k;
        if (il1Var != null) {
            z = this.f28757b.f29406c.f29821I;
            if (!z) {
                return;
            }
            il1Var2 = this.f28757b.f29406c.f29839k;
            il1Var2.zza();
        }
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onTearDown(AudioTrack audioTrack) {
        AudioTrack audioTrack2;
        il1 il1Var;
        boolean z;
        il1 il1Var2;
        audioTrack2 = this.f28757b.f29406c.f29842n;
        C7173y8.m8895d(audioTrack == audioTrack2);
        il1Var = this.f28757b.f29406c.f29839k;
        if (il1Var != null) {
            z = this.f28757b.f29406c.f29821I;
            if (!z) {
                return;
            }
            il1Var2 = this.f28757b.f29406c.f29839k;
            il1Var2.zza();
        }
    }
}
