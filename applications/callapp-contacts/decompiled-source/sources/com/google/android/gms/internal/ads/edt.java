package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.view.Surface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edt.class */
public final class edt {

    /* renamed from: a  reason: collision with root package name */
    final Handler f27695a;

    /* renamed from: b  reason: collision with root package name */
    final edu f27696b;

    public edt(Handler handler, edu eduVar) {
        this.f27695a = eduVar != null ? (Handler) ecr.a(handler) : null;
        this.f27696b = eduVar;
    }

    public final void a(int i, int i2, int i3, float f) {
        if (this.f27696b != null) {
            this.f27695a.post(new eea(this, i, i2, i3, f));
        }
    }

    public final void a(int i, long j) {
        if (this.f27696b != null) {
            this.f27695a.post(new edx(this, i, j));
        }
    }

    public final void a(Surface surface) {
        if (this.f27696b != null) {
            this.f27695a.post(new edz(this, surface));
        }
    }

    public final void a(dxk dxkVar) {
        if (this.f27696b != null) {
            this.f27695a.post(new eeb(this, dxkVar));
        }
    }
}
