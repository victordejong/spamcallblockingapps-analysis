package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dan.class */
public final class dan implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ dbt f46894a;

    /* renamed from: b */
    private final /* synthetic */ int f46895b;

    /* renamed from: c */
    private final /* synthetic */ dak f46896c;

    public dan(dak dakVar, dbt dbtVar, int i) {
        this.f46896c = dakVar;
        this.f46894a = dbtVar;
        this.f46895b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f46894a.isCancelled()) {
                this.f46896c.f46889b = null;
                this.f46896c.cancel(false);
            } else {
                this.f46896c.m16940a(this.f46895b, (Future) this.f46894a);
            }
        } finally {
            dak.m16937a(this.f46896c, (cyt) null);
        }
    }
}
