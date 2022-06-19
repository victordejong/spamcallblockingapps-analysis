package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.view.Surface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edt.class */
public final class edt {

    /* renamed from: a */
    final Handler f48817a;

    /* renamed from: b */
    final edu f48818b;

    public edt(Handler handler, edu eduVar) {
        this.f48817a = eduVar != null ? (Handler) ecr.m15251a(handler) : null;
        this.f48818b = eduVar;
    }

    /* renamed from: a */
    public final void m15141a(int i, int i2, int i3, float f) {
        if (this.f48818b != null) {
            this.f48817a.post(new eea(this, i, i2, i3, f));
        }
    }

    /* renamed from: a */
    public final void m15140a(int i, long j) {
        if (this.f48818b != null) {
            this.f48817a.post(new edx(this, i, j));
        }
    }

    /* renamed from: a */
    public final void m15139a(Surface surface) {
        if (this.f48818b != null) {
            this.f48817a.post(new edz(this, surface));
        }
    }

    /* renamed from: a */
    public final void m15138a(dxk dxkVar) {
        if (this.f48818b != null) {
            this.f48817a.post(new eeb(this, dxkVar));
        }
    }
}
