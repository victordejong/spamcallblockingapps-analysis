package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wf.class */
public final class wf {

    /* renamed from: a  reason: collision with root package name */
    private final zzf f28465a;

    /* renamed from: b  reason: collision with root package name */
    private final wo f28466b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public wf(zzf zzfVar, wo woVar) {
        this.f28465a = zzfVar;
        this.f28466b = woVar;
    }

    public final void a() {
        if (((Boolean) ekb.e().a(aq.aj)).booleanValue()) {
            this.f28466b.a();
        }
    }

    public final void a(int i) {
        if (!((Boolean) ekb.e().a(aq.ai)).booleanValue()) {
            if (!((Boolean) ekb.e().a(aq.aj)).booleanValue()) {
                this.f28465a.zzdk(-1);
            } else {
                this.f28465a.zzdk(i);
            }
            a();
        }
    }
}
