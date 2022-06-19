package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/azw.class */
public final class azw implements AbstractC2833bj {

    /* renamed from: a */
    private final /* synthetic */ bam f10744a;

    /* renamed from: b */
    private final /* synthetic */ ViewGroup f10745b;

    /* renamed from: c */
    private final /* synthetic */ azv f10746c;

    public azw(azv azvVar, bam bamVar, ViewGroup viewGroup) {
        this.f10746c = azvVar;
        this.f10744a = bamVar;
        this.f10745b = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2833bj
    /* renamed from: a */
    public final void mo11864a() {
        boolean m12188a;
        azv azvVar = this.f10746c;
        m12188a = azv.m12188a(this.f10744a, azt.f10719a);
        if (m12188a) {
            this.f10744a.onClick(this.f10745b);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2833bj
    /* renamed from: a */
    public final void mo11863a(MotionEvent motionEvent) {
        this.f10744a.onTouch(null, motionEvent);
    }
}
