package com.facebook;

import android.os.Handler;
import com.facebook.C2102k;
/* renamed from: com.facebook.x */
/* loaded from: classes-dex2jar.jar:com/facebook/x.class */
public class C2207x {

    /* renamed from: a */
    private final C2102k f6461a;

    /* renamed from: b */
    private final Handler f6462b;

    /* renamed from: c */
    private final long f6463c = C2095j.m15357k();

    /* renamed from: d */
    private long f6464d;

    /* renamed from: e */
    private long f6465e;

    /* renamed from: f */
    private long f6466f;

    public C2207x(Handler handler, C2102k c2102k) {
        this.f6461a = c2102k;
        this.f6462b = handler;
    }

    /* renamed from: a */
    public void m14943a() {
        if (this.f6464d > this.f6465e) {
            C2102k.AbstractC2108b m15296g = this.f6461a.m15296g();
            if (this.f6466f <= 0 || !(m15296g instanceof C2102k.AbstractC2111e)) {
                return;
            }
            final long j = this.f6464d;
            final long j2 = this.f6466f;
            final C2102k.AbstractC2111e abstractC2111e = (C2102k.AbstractC2111e) m15296g;
            if (this.f6462b == null) {
                abstractC2111e.m15282a(j, j2);
            } else {
                this.f6462b.post(new Runnable() { // from class: com.facebook.x.1
                    @Override // java.lang.Runnable
                    public void run() {
                        abstractC2111e.m15282a(j, j2);
                    }
                });
            }
            this.f6465e = this.f6464d;
        }
    }

    /* renamed from: a */
    public void m14942a(long j) {
        this.f6464d += j;
        if (this.f6464d >= this.f6465e + this.f6463c || this.f6464d >= this.f6466f) {
            m14943a();
        }
    }

    /* renamed from: b */
    public void m14941b(long j) {
        this.f6466f += j;
    }
}
