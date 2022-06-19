package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/s42.class */
public final class s42 {

    /* renamed from: a */
    private final Handler f29404a = new Handler();

    /* renamed from: b */
    private final AudioTrack.StreamEventCallback f29405b;

    /* renamed from: c */
    final /* synthetic */ t52 f29406c;

    public s42(t52 t52Var) {
        this.f29406c = t52Var;
        this.f29405b = new r32(this, t52Var);
    }

    /* renamed from: a */
    public final void m11116a(AudioTrack audioTrack) {
        audioTrack.registerStreamEventCallback(q22.m12039b(this.f29404a), this.f29405b);
    }

    /* renamed from: b */
    public final void m11115b(AudioTrack audioTrack) {
        audioTrack.unregisterStreamEventCallback(this.f29405b);
        this.f29404a.removeCallbacksAndMessages(null);
    }
}
