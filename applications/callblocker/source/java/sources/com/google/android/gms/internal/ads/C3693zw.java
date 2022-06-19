package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.internal.ads.zw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zw.class */
public final class C3693zw {

    /* renamed from: a */
    private final Context f17721a;

    /* renamed from: b */
    private final aad f17722b;

    /* renamed from: c */
    private final ViewGroup f17723c;

    /* renamed from: d */
    private C3687zq f17724d;

    private C3693zw(Context context, ViewGroup viewGroup, aad aadVar, C3687zq c3687zq) {
        this.f17721a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f17723c = viewGroup;
        this.f17722b = aadVar;
        this.f17724d = null;
    }

    public C3693zw(Context context, ViewGroup viewGroup, act actVar) {
        this(context, viewGroup, actVar, null);
    }

    /* renamed from: a */
    public final C3687zq m6651a() {
        C2662s.m13974b("getAdVideoUnderlay must be called from the UI thread.");
        return this.f17724d;
    }

    /* renamed from: a */
    public final void m6650a(int i, int i2, int i3, int i4) {
        C2662s.m13974b("The underlay may only be modified from the UI thread.");
        if (this.f17724d != null) {
            this.f17724d.m6683a(i, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public final void m6649a(int i, int i2, int i3, int i4, int i5, boolean z, aae aaeVar) {
        if (this.f17724d != null) {
            return;
        }
        C3238j.m7741a(this.f17722b.mo13439i().m7348a(), this.f17722b.mo13446e(), "vpr2");
        this.f17724d = new C3687zq(this.f17721a, this.f17722b, i5, z, this.f17722b.mo13439i().m7348a(), aaeVar);
        this.f17723c.addView(this.f17724d, 0, new ViewGroup.LayoutParams(-1, -1));
        this.f17724d.m6683a(i, i2, i3, i4);
        this.f17722b.mo13460a(false);
    }

    /* renamed from: b */
    public final void m6648b() {
        C2662s.m13974b("onPause must be called from the UI thread.");
        if (this.f17724d != null) {
            this.f17724d.m6661i();
        }
    }

    /* renamed from: c */
    public final void m6647c() {
        C2662s.m13974b("onDestroy must be called from the UI thread.");
        if (this.f17724d != null) {
            this.f17724d.m6656n();
            this.f17723c.removeView(this.f17724d);
            this.f17724d = null;
        }
    }
}
