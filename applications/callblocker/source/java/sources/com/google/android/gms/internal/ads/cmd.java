package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.internal.AbstractC2623c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmd.class */
public final class cmd implements AbstractC2623c.AbstractC2624a, AbstractC2623c.AbstractC2625b {

    /* renamed from: a */
    private final cmy f13325a;

    /* renamed from: b */
    private final cmt f13326b;

    /* renamed from: c */
    private final Object f13327c = new Object();

    /* renamed from: d */
    private boolean f13328d = false;

    /* renamed from: e */
    private boolean f13329e = false;

    public cmd(Context context, Looper looper, cmt cmtVar) {
        this.f13326b = cmtVar;
        this.f13325a = new cmy(context, looper, this, this, 12800000);
    }

    /* renamed from: b */
    private final void m11057b() {
        synchronized (this.f13327c) {
            if (this.f13325a.m14081f() || this.f13325a.m14079g()) {
                this.f13325a.m14083e();
            }
            Binder.flushPendingCommands();
        }
    }

    /* renamed from: a */
    public final void m11058a() {
        synchronized (this.f13327c) {
            if (!this.f13328d) {
                this.f13328d = true;
                this.f13325a.m14072o();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4310a(int i) {
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4308a(Bundle bundle) {
        synchronized (this.f13327c) {
            if (this.f13329e) {
                return;
            }
            this.f13329e = true;
            try {
                this.f13325a.m11002c().mo10999a(new cmw(this.f13326b.mo9984l()));
                m11057b();
            } catch (Exception e) {
                m11057b();
            } catch (Throwable th) {
                m11057b();
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2625b
    /* renamed from: a */
    public final void mo4307a(C2579b c2579b) {
    }
}
