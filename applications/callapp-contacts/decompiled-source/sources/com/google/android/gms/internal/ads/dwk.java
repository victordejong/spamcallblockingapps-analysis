package com.google.android.gms.internal.ads;

import android.os.Handler;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwk.class */
public final class dwk {

    /* renamed from: a  reason: collision with root package name */
    final Handler f27309a;

    /* renamed from: b  reason: collision with root package name */
    final dwl f27310b;

    public dwk(Handler handler, dwl dwlVar) {
        this.f27309a = dwlVar != null ? (Handler) ecr.a(handler) : null;
        this.f27310b = dwlVar;
    }

    public final void a(dxk dxkVar) {
        if (this.f27310b != null) {
            this.f27309a.post(new dwr(this, dxkVar));
        }
    }
}
