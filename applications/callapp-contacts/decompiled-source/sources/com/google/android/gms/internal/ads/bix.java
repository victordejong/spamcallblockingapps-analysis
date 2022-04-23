package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bix.class */
public final class bix implements asg {

    /* renamed from: a  reason: collision with root package name */
    private final adt f24531a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bix(adt adtVar) {
        this.f24531a = !((Boolean) ekb.e().a(aq.aw)).booleanValue() ? null : adtVar;
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void a(Context context) {
        adt adtVar = this.f24531a;
        if (adtVar != null) {
            adtVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void b(Context context) {
        adt adtVar = this.f24531a;
        if (adtVar != null) {
            adtVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.asg
    public final void c(Context context) {
        adt adtVar = this.f24531a;
        if (adtVar != null) {
            adtVar.destroy();
        }
    }
}
