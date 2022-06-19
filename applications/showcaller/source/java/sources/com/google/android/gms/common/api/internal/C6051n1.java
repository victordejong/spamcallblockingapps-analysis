package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import p020b.p036e.C1489a;
import p078c.p084c.p085a.p086a.p088b.p091c.HandlerC1854h;
/* renamed from: com.google.android.gms.common.api.internal.n1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/n1.class */
public final class C6051n1 extends Fragment implements AbstractC6031h {

    /* renamed from: e0 */
    private static final WeakHashMap<FragmentActivity, WeakReference<C6051n1>> f19332e0 = new WeakHashMap<>();

    /* renamed from: f0 */
    private final Map<String, LifecycleCallback> f19333f0 = Collections.synchronizedMap(new C1489a());

    /* renamed from: g0 */
    private int f19334g0 = 0;

    /* renamed from: h0 */
    private Bundle f19335h0;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
        if (r0.m32904r0() != false) goto L12;
     */
    /* renamed from: a2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.C6051n1 m17302a2(androidx.fragment.app.FragmentActivity r6) {
        /*
            java.util.WeakHashMap<androidx.fragment.app.FragmentActivity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.n1>> r0 = com.google.android.gms.common.api.internal.C6051n1.f19332e0
            r7 = r0
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L22
            r0 = r8
            java.lang.Object r0 = r0.get()
            com.google.android.gms.common.api.internal.n1 r0 = (com.google.android.gms.common.api.internal.C6051n1) r0
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L20
            goto L22
        L20:
            r0 = r8
            return r0
        L22:
            r0 = r6
            androidx.fragment.app.FragmentManager r0 = r0.m32877A()     // Catch: java.lang.ClassCastException -> L65
            java.lang.String r1 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.Fragment r0 = r0.m32784i0(r1)     // Catch: java.lang.ClassCastException -> L65
            com.google.android.gms.common.api.internal.n1 r0 = (com.google.android.gms.common.api.internal.C6051n1) r0     // Catch: java.lang.ClassCastException -> L65
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L3c
            r0 = r9
            r8 = r0
            r0 = r9
            boolean r0 = r0.m32904r0()
            if (r0 == 0) goto L55
        L3c:
            com.google.android.gms.common.api.internal.n1 r0 = new com.google.android.gms.common.api.internal.n1
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r6
            androidx.fragment.app.FragmentManager r0 = r0.m32877A()
            androidx.fragment.app.s r0 = r0.m32776l()
            r1 = r8
            java.lang.String r2 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.s r0 = r0.m32506e(r1, r2)
            int r0 = r0.mo32502i()
        L55:
            r0 = r7
            r1 = r6
            java.lang.ref.WeakReference r2 = new java.lang.ref.WeakReference
            r3 = r2
            r4 = r8
            r3.<init>(r4)
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r8
            return r0
        L65:
            r6 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"
            r3 = r6
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.C6051n1.m17302a2(androidx.fragment.app.FragmentActivity):com.google.android.gms.common.api.internal.n1");
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: B0 */
    public final void mo4888B0(Bundle bundle) {
        super.mo4888B0(bundle);
        this.f19334g0 = 1;
        this.f19335h0 = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f19333f0.entrySet()) {
            entry.getValue().mo17331f(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H0 */
    public final void mo17304H0() {
        super.mo17304H0();
        this.f19334g0 = 5;
        for (LifecycleCallback lifecycleCallback : this.f19333f0.values()) {
            lifecycleCallback.m17437g();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Y0 */
    public final void mo17303Y0() {
        super.mo17303Y0();
        this.f19334g0 = 3;
        for (LifecycleCallback lifecycleCallback : this.f19333f0.values()) {
            lifecycleCallback.mo17268h();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Z0 */
    public final void mo4886Z0(Bundle bundle) {
        super.mo4886Z0(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f19333f0.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().mo17330i(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a1 */
    public final void mo4903a1() {
        super.mo4903a1();
        this.f19334g0 = 2;
        for (LifecycleCallback lifecycleCallback : this.f19333f0.values()) {
            lifecycleCallback.mo17267j();
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6031h
    /* renamed from: b */
    public final void mo17246b(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f19333f0.containsKey(str)) {
            this.f19333f0.put(str, lifecycleCallback);
            if (this.f19334g0 <= 0) {
                return;
            }
            new HandlerC1854h(Looper.getMainLooper()).post(new RunnableC6048m1(this, lifecycleCallback, str));
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("LifecycleCallback with tag ");
        sb.append(str);
        sb.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: b1 */
    public final void mo4902b1() {
        super.mo4902b1();
        this.f19334g0 = 4;
        for (LifecycleCallback lifecycleCallback : this.f19333f0.values()) {
            lifecycleCallback.mo17266k();
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6031h
    /* renamed from: d */
    public final <T extends LifecycleCallback> T mo17244d(String str, Class<T> cls) {
        return cls.cast(this.f19333f0.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6031h
    /* renamed from: e */
    public final /* bridge */ /* synthetic */ Activity mo17243e() {
        return m32896u();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: q */
    public final void mo17299q(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.mo17299q(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f19333f0.values()) {
            lifecycleCallback.m17441a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: w0 */
    public final void mo17298w0(int i, int i2, Intent intent) {
        super.mo17298w0(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f19333f0.values()) {
            lifecycleCallback.mo17332e(i, i2, intent);
        }
    }
}
