package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c62.class */
public final class c62 implements va2<Bundle> {

    /* renamed from: a */
    private final zzbdr f21116a;

    /* renamed from: b */
    private final zzcgz f21117b;

    /* renamed from: c */
    private final boolean f21118c;

    public c62(zzbdr zzbdrVar, zzcgz zzcgzVar, boolean z) {
        this.f21116a = zzbdrVar;
        this.f21117b = zzcgzVar;
        this.f21118c = z;
    }

    @Override // com.google.android.gms.internal.ads.va2
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8928a(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (this.f21117b.f33856f >= ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25455C3)).intValue()) {
            bundle2.putString("app_open_version", "2");
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25463D3)).booleanValue()) {
            bundle2.putBoolean("app_switched", this.f21118c);
        }
        zzbdr zzbdrVar = this.f21116a;
        if (zzbdrVar != null) {
            int i = zzbdrVar.f33705d;
            if (i == 1) {
                bundle2.putString("avo", "p");
            } else if (i != 2) {
            } else {
                bundle2.putString("avo", "l");
            }
        }
    }
}
