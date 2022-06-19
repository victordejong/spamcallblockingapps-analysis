package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.internal.ads.zb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zb.class */
abstract class AbstractC3672zb {

    /* renamed from: a */
    private final WeakReference<View> f17680a;

    public AbstractC3672zb(View view) {
        this.f17680a = new WeakReference<>(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
        if (r0.isAlive() == false) goto L11;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.view.ViewTreeObserver m6704c() {
        /*
            r2 = this;
            r0 = r2
            java.lang.ref.WeakReference<android.view.View> r0 = r0.f17680a
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            r3 = r0
            r0 = r3
            if (r0 != 0) goto L13
            r0 = 0
            r3 = r0
        L11:
            r0 = r3
            return r0
        L13:
            r0 = r3
            android.view.ViewTreeObserver r0 = r0.getViewTreeObserver()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L25
            r0 = r4
            r3 = r0
            r0 = r4
            boolean r0 = r0.isAlive()
            if (r0 != 0) goto L11
        L25:
            r0 = 0
            r3 = r0
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.AbstractC3672zb.m6704c():android.view.ViewTreeObserver");
    }

    /* renamed from: a */
    public final void m6708a() {
        ViewTreeObserver m6704c = m6704c();
        if (m6704c != null) {
            mo6707a(m6704c);
        }
    }

    /* renamed from: a */
    protected abstract void mo6707a(ViewTreeObserver viewTreeObserver);

    /* renamed from: b */
    public final void m6706b() {
        ViewTreeObserver m6704c = m6704c();
        if (m6704c != null) {
            mo6705b(m6704c);
        }
    }

    /* renamed from: b */
    protected abstract void mo6705b(ViewTreeObserver viewTreeObserver);
}
