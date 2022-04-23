package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eex.class */
public final class eex {

    /* renamed from: a  reason: collision with root package name */
    final Object f27752a = new Object();

    /* renamed from: b  reason: collision with root package name */
    efa f27753b = null;

    /* renamed from: c  reason: collision with root package name */
    boolean f27754c = false;

    public final Activity a() {
        synchronized (this.f27752a) {
            efa efaVar = this.f27753b;
            if (efaVar == null) {
                return null;
            }
            return efaVar.f27759a;
        }
    }

    public final void a(efc efcVar) {
        synchronized (this.f27752a) {
            if (this.f27753b == null) {
                this.f27753b = new efa();
            }
            this.f27753b.a(efcVar);
        }
    }

    public final Context b() {
        synchronized (this.f27752a) {
            efa efaVar = this.f27753b;
            if (efaVar == null) {
                return null;
            }
            return efaVar.f27760b;
        }
    }

    public final void b(efc efcVar) {
        synchronized (this.f27752a) {
            efa efaVar = this.f27753b;
            if (efaVar != null) {
                efaVar.b(efcVar);
            }
        }
    }
}
