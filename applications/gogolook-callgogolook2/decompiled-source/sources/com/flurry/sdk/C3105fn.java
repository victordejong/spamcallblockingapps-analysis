package com.flurry.sdk;

import android.view.View;
import java.lang.ref.WeakReference;
/* renamed from: com.flurry.sdk.fn */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fn.class */
public class C3105fn implements AbstractC3108fq {

    /* renamed from: a */
    public static final String f5019a = "fn";

    /* renamed from: c */
    public C2930da f5021c;

    /* renamed from: e */
    public long f5023e = 0;

    /* renamed from: f */
    public long f5024f = 0;

    /* renamed from: g */
    public long f5025g = Long.MIN_VALUE;

    /* renamed from: b */
    public WeakReference<View> f5020b = new WeakReference<>(null);

    /* renamed from: d */
    public boolean f5022d = false;

    public C3105fn(C2930da daVar) {
        this.f5021c = daVar;
    }

    /* renamed from: a */
    public static void m33058a(WeakReference<View> weakReference) {
        if (weakReference != null && weakReference.get() != null) {
            weakReference.clear();
        }
    }

    @Override // com.flurry.sdk.AbstractC3108fq
    /* renamed from: a */
    public final boolean mo33057a() {
        if (this.f5022d) {
            return false;
        }
        View view = this.f5020b.get();
        if (view == null || !view.hasWindowFocus()) {
            C3356jq.m32613a(f5019a, "Tracking view is null or lost window focus");
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        int a = C3019ef.m33278a(view);
        if (this.f5022d) {
            return false;
        }
        if (this.f5025g == Long.MIN_VALUE) {
            this.f5025g = currentTimeMillis;
        }
        C2930da daVar = this.f5021c;
        if (a >= daVar.f4554c) {
            long j = this.f5025g;
            if (currentTimeMillis - j <= 1000) {
                long j2 = currentTimeMillis - j;
                this.f5025g = currentTimeMillis;
                if (daVar.f4555d) {
                    this.f5024f += j2;
                    if (this.f5024f < daVar.f4553b) {
                        return false;
                    }
                    this.f5022d = true;
                    return true;
                }
                this.f5023e += j2;
                if (this.f5023e < daVar.f4553b) {
                    return false;
                }
                this.f5022d = true;
                return true;
            }
        }
        this.f5024f = 0L;
        this.f5025g = currentTimeMillis;
        return false;
    }

    @Override // com.flurry.sdk.AbstractC3108fq
    /* renamed from: b */
    public final boolean mo33056b() {
        if (this.f5022d) {
            m33058a(this.f5020b);
            return false;
        } else if (this.f5020b.get() != null) {
            return true;
        } else {
            C3356jq.m32613a(f5019a, "Tracking view is null, remove from Tracker");
            return false;
        }
    }
}
