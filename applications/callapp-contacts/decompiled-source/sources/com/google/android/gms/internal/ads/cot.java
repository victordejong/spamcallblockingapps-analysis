package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cot.class */
public final class cot {

    /* renamed from: a  reason: collision with root package name */
    private final f f26176a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f26177b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private volatile int f26178c = cow.f26187a;

    /* renamed from: d  reason: collision with root package name */
    private volatile long f26179d = 0;

    public cot(f fVar) {
        this.f26176a = fVar;
    }

    private final void c() {
        long a2 = this.f26176a.a();
        synchronized (this.f26177b) {
            if (this.f26178c == cow.f26189c) {
                if (this.f26179d + ((Long) ekb.e().a(aq.dA)).longValue() <= a2) {
                    this.f26178c = cow.f26187a;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, int i2) {
        c();
        long a2 = this.f26176a.a();
        synchronized (this.f26177b) {
            if (this.f26178c == i) {
                this.f26178c = i2;
                if (this.f26178c == cow.f26189c) {
                    this.f26179d = a2;
                }
            }
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this.f26177b) {
            c();
            z = this.f26178c == cow.f26188b;
        }
        return z;
    }

    public final boolean b() {
        boolean z;
        synchronized (this.f26177b) {
            c();
            z = this.f26178c == cow.f26189c;
        }
        return z;
    }
}
