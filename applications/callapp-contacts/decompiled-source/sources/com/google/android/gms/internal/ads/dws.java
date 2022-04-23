package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dws.class */
public final class dws extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ AudioTrack f27327a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ dwt f27328b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dws(dwt dwtVar, AudioTrack audioTrack) {
        this.f27328b = dwtVar;
        this.f27327a = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        try {
            this.f27327a.flush();
            this.f27327a.release();
        } finally {
            conditionVariable = this.f27328b.A;
            conditionVariable.open();
        }
    }
}
