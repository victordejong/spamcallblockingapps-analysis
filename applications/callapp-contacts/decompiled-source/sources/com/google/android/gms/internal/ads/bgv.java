package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgv.class */
final class bgv implements dg {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ bgs f24419a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bgv(bgs bgsVar) {
        this.f24419a = bgsVar;
    }

    @Override // com.google.android.gms.internal.ads.dg
    public final void a() {
        bcf bcfVar;
        bcf bcfVar2;
        bcfVar = this.f24419a.f24411d;
        if (bcfVar != null) {
            bcfVar2 = this.f24419a.f24411d;
            bcfVar2.a("_videoMediaView");
        }
    }

    @Override // com.google.android.gms.internal.ads.dg
    public final void a(MotionEvent motionEvent) {
    }

    @Override // com.google.android.gms.internal.ads.dg
    public final JSONObject b() {
        return null;
    }
}
