package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dan.class */
public final class dan implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dbt f26675a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ int f26676b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ dak f26677c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dan(dak dakVar, dbt dbtVar, int i) {
        this.f26677c = dakVar;
        this.f26675a = dbtVar;
        this.f26676b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f26675a.isCancelled()) {
                this.f26677c.f26670b = null;
                this.f26677c.cancel(false);
            } else {
                this.f26677c.a(this.f26676b, (Future) this.f26675a);
            }
        } finally {
            dak.a(this.f26677c, (cyt) null);
        }
    }
}
