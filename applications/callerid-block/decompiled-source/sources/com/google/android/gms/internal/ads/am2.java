package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/am2.class */
public final class am2 extends Thread {

    /* renamed from: b */
    final /* synthetic */ AudioTrack f6044b;

    /* renamed from: c */
    final /* synthetic */ fm2 f6045c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am2(fm2 fm2Var, AudioTrack audioTrack) {
        this.f6045c = fm2Var;
        this.f6044b = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.f6044b.flush();
            this.f6044b.release();
        } finally {
            conditionVariable = this.f6045c.f6540e;
            conditionVariable.open();
        }
    }
}
