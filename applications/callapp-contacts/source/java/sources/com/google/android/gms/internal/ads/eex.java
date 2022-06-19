package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eex.class */
public final class eex {

    /* renamed from: a */
    final Object f48912a = new Object();

    /* renamed from: b */
    efa f48913b = null;

    /* renamed from: c */
    boolean f48914c = false;

    /* renamed from: a */
    public final Activity m15114a() {
        synchronized (this.f48912a) {
            efa efaVar = this.f48913b;
            if (efaVar != null) {
                return efaVar.f48919a;
            }
            return null;
        }
    }

    /* renamed from: a */
    public final void m15113a(efc efcVar) {
        synchronized (this.f48912a) {
            if (this.f48913b == null) {
                this.f48913b = new efa();
            }
            this.f48913b.m15104a(efcVar);
        }
    }

    /* renamed from: b */
    public final Context m15112b() {
        synchronized (this.f48912a) {
            efa efaVar = this.f48913b;
            if (efaVar != null) {
                return efaVar.f48920b;
            }
            return null;
        }
    }

    /* renamed from: b */
    public final void m15111b(efc efcVar) {
        synchronized (this.f48912a) {
            efa efaVar = this.f48913b;
            if (efaVar == null) {
                return;
            }
            efaVar.m15102b(efcVar);
        }
    }
}
