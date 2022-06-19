package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dws.class */
public final class dws extends Thread {

    /* renamed from: a */
    private final /* synthetic */ AudioTrack f47814a;

    /* renamed from: b */
    private final /* synthetic */ dwt f47815b;

    public dws(dwt dwtVar, AudioTrack audioTrack) {
        this.f47815b = dwtVar;
        this.f47814a = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.f47814a.flush();
            this.f47814a.release();
        } finally {
            conditionVariable = this.f47815b.f47818A;
            conditionVariable.open();
        }
    }
}
