package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cqm.class */
public final class cqm implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ crt f13577a;

    /* renamed from: b */
    private final /* synthetic */ int f13578b;

    /* renamed from: c */
    private final /* synthetic */ cqn f13579c;

    public cqm(cqn cqnVar, crt crtVar, int i) {
        this.f13579c = cqnVar;
        this.f13577a = crtVar;
        this.f13578b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f13577a.isCancelled()) {
                this.f13579c.f13581b = null;
                this.f13579c.cancel(false);
            } else {
                this.f13579c.m10820a(this.f13578b, (Future) this.f13577a);
            }
        } finally {
            this.f13579c.m10819a((cpb) null);
        }
    }
}
