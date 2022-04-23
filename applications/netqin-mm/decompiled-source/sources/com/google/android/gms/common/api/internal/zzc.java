package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.internal.common.zzi;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import p012b.p035f.C0780a;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.RunnableC3283u0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zzc.class */
public final class zzc extends Fragment implements LifecycleFragment {

    /* renamed from: c0 */
    public static WeakHashMap<FragmentActivity, WeakReference<zzc>> f23306c0 = new WeakHashMap<>();

    /* renamed from: Z */
    public Map<String, LifecycleCallback> f23307Z = Collections.synchronizedMap(new C0780a());

    /* renamed from: a0 */
    public int f23308a0 = 0;

    /* renamed from: b0 */
    public Bundle f23309b0;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (r0.m38440V() != false) goto L_0x0037;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.zzc m17446a(androidx.fragment.app.FragmentActivity r6) {
        /*
            java.util.WeakHashMap<androidx.fragment.app.FragmentActivity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzc>> r0 = com.google.android.gms.common.api.internal.zzc.f23306c0
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001d
            r0 = r7
            java.lang.Object r0 = r0.get()
            com.google.android.gms.common.api.internal.zzc r0 = (com.google.android.gms.common.api.internal.zzc) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001d
            r0 = r7
            return r0
        L_0x001d:
            r0 = r6
            b.m.a.g r0 = r0.m38334g()     // Catch: ClassCastException -> 0x0066
            java.lang.String r1 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.Fragment r0 = r0.mo34849a(r1)     // Catch: ClassCastException -> 0x0066
            com.google.android.gms.common.api.internal.zzc r0 = (com.google.android.gms.common.api.internal.zzc) r0     // Catch: ClassCastException -> 0x0066
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0037
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.m38440V()
            if (r0 == 0) goto L_0x0054
        L_0x0037:
            com.google.android.gms.common.api.internal.zzc r0 = new com.google.android.gms.common.api.internal.zzc
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            b.m.a.g r0 = r0.m38334g()
            b.m.a.j r0 = r0.mo34878a()
            r8 = r0
            r0 = r8
            r1 = r7
            java.lang.String r2 = "SupportLifecycleFragmentImpl"
            b.m.a.j r0 = r0.m34746a(r1, r2)
            r0 = r8
            int r0 = r0.mo34744b()
        L_0x0054:
            java.util.WeakHashMap<androidx.fragment.app.FragmentActivity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzc>> r0 = com.google.android.gms.common.api.internal.zzc.f23306c0
            r1 = r6
            java.lang.ref.WeakReference r2 = new java.lang.ref.WeakReference
            r3 = r2
            r4 = r7
            r3.<init>(r4)
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r7
            return r0
        L_0x0066:
            r6 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"
            r3 = r6
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zzc.m17446a(androidx.fragment.app.FragmentActivity):com.google.android.gms.common.api.internal.zzc");
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: a */
    public final <T extends LifecycleCallback> T mo17442a(String str, Class<T> cls) {
        return cls.cast(this.f23307Z.get(str));
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public final void mo17447a(int i, int i2, Intent intent) {
        super.mo17447a(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f23307Z.values()) {
            lifecycleCallback.mo17474a(i, i2, intent);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: a */
    public final void mo17444a(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f23307Z.containsKey(str)) {
            this.f23307Z.put(str, lifecycleCallback);
            if (this.f23308a0 > 0) {
                new zzi(Looper.getMainLooper()).post(new RunnableC3283u0(this, lifecycleCallback, str));
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("LifecycleCallback with tag ");
        sb.append(str);
        sb.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public final void mo17443a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.mo17443a(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f23307Z.values()) {
            lifecycleCallback.mo17479a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a0 */
    public final void mo17441a0() {
        super.mo17441a0();
        this.f23308a0 = 5;
        for (LifecycleCallback lifecycleCallback : this.f23307Z.values()) {
            lifecycleCallback.mo17510b();
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: c */
    public final /* synthetic */ Activity mo17439c() {
        return m38386h();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: c */
    public final void mo17438c(Bundle bundle) {
        super.mo17438c(bundle);
        this.f23308a0 = 1;
        this.f23309b0 = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f23307Z.entrySet()) {
            entry.getValue().mo17473a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: e */
    public final void mo17437e(Bundle bundle) {
        super.mo17437e(bundle);
        if (bundle != null) {
            for (Map.Entry<String, LifecycleCallback> entry : this.f23307Z.entrySet()) {
                Bundle bundle2 = new Bundle();
                entry.getValue().mo17471b(bundle2);
                bundle.putBundle(entry.getKey(), bundle2);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: f0 */
    public final void mo17436f0() {
        super.mo17436f0();
        this.f23308a0 = 3;
        for (LifecycleCallback lifecycleCallback : this.f23307Z.values()) {
            lifecycleCallback.mo17456c();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: g0 */
    public final void mo17435g0() {
        super.mo17435g0();
        this.f23308a0 = 2;
        for (LifecycleCallback lifecycleCallback : this.f23307Z.values()) {
            lifecycleCallback.mo17455d();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: h0 */
    public final void mo17434h0() {
        super.mo17434h0();
        this.f23308a0 = 4;
        for (LifecycleCallback lifecycleCallback : this.f23307Z.values()) {
            lifecycleCallback.mo17454e();
        }
    }
}
