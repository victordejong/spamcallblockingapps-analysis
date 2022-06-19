package com.google.android.gms.internal.ads;

import android.os.Handler;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwk.class */
public final class dwk {

    /* renamed from: a */
    final Handler f47796a;

    /* renamed from: b */
    final dwl f47797b;

    public dwk(Handler handler, dwl dwlVar) {
        this.f47796a = dwlVar != null ? (Handler) ecr.m15251a(handler) : null;
        this.f47797b = dwlVar;
    }

    /* renamed from: a */
    public final void m15569a(dxk dxkVar) {
        if (this.f47797b != null) {
            this.f47796a.post(new dwr(this, dxkVar));
        }
    }
}
