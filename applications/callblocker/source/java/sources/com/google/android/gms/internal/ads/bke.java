package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.internal.AbstractC2623c;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bke.class */
public abstract class bke implements AbstractC2623c.AbstractC2624a, AbstractC2623c.AbstractC2625b {

    /* renamed from: a */
    protected final C3658yo<InputStream> f11415a = new C3658yo<>();

    /* renamed from: b */
    protected final Object f11416b = new Object();

    /* renamed from: c */
    protected boolean f11417c = false;

    /* renamed from: d */
    protected boolean f11418d = false;

    /* renamed from: e */
    protected C3423pw f11419e;

    /* renamed from: f */
    protected C3404pd f11420f;

    /* renamed from: a */
    public final void m11836a() {
        synchronized (this.f11416b) {
            this.f11418d = true;
            if (this.f11420f.m14081f() || this.f11420f.m14079g()) {
                this.f11420f.m14083e();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public void mo4310a(int i) {
        C3556uu.m6751b("Cannot connect to remote service, fallback to local instance.");
    }

    /* renamed from: a */
    public void mo4307a(C2579b c2579b) {
        C3556uu.m6751b("Disconnected from remote ad request service.");
        this.f11415a.m6733a(new zzclc(0));
    }
}
