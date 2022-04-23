package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.internal.common.zzi;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import p012b.p035f.C0780a;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.RunnableC3281t0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zzb.class */
public final class zzb extends Fragment implements LifecycleFragment {

    /* renamed from: d */
    public static WeakHashMap<Activity, WeakReference<zzb>> f23302d = new WeakHashMap<>();

    /* renamed from: a */
    public Map<String, LifecycleCallback> f23303a = Collections.synchronizedMap(new C0780a());

    /* renamed from: b */
    public int f23304b = 0;

    /* renamed from: c */
    public Bundle f23305c;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (r0.isRemoving() != false) goto L_0x0037;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.zzb m17450a(android.app.Activity r6) {
        /*
            java.util.WeakHashMap<android.app.Activity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzb>> r0 = com.google.android.gms.common.api.internal.zzb.f23302d
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001d
            r0 = r7
            java.lang.Object r0 = r0.get()
            com.google.android.gms.common.api.internal.zzb r0 = (com.google.android.gms.common.api.internal.zzb) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001d
            r0 = r7
            return r0
        L_0x001d:
            r0 = r6
            android.app.FragmentManager r0 = r0.getFragmentManager()     // Catch: ClassCastException -> 0x0062
            java.lang.String r1 = "LifecycleFragmentImpl"
            android.app.Fragment r0 = r0.findFragmentByTag(r1)     // Catch: ClassCastException -> 0x0062
            com.google.android.gms.common.api.internal.zzb r0 = (com.google.android.gms.common.api.internal.zzb) r0     // Catch: ClassCastException -> 0x0062
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0037
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.isRemoving()
            if (r0 == 0) goto L_0x0050
        L_0x0037:
            com.google.android.gms.common.api.internal.zzb r0 = new com.google.android.gms.common.api.internal.zzb
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            android.app.FragmentManager r0 = r0.getFragmentManager()
            android.app.FragmentTransaction r0 = r0.beginTransaction()
            r1 = r7
            java.lang.String r2 = "LifecycleFragmentImpl"
            android.app.FragmentTransaction r0 = r0.add(r1, r2)
            int r0 = r0.commitAllowingStateLoss()
        L_0x0050:
            java.util.WeakHashMap<android.app.Activity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzb>> r0 = com.google.android.gms.common.api.internal.zzb.f23302d
            r1 = r6
            java.lang.ref.WeakReference r2 = new java.lang.ref.WeakReference
            r3 = r2
            r4 = r7
            r3.<init>(r4)
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r7
            return r0
        L_0x0062:
            r6 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl"
            r3 = r6
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zzb.m17450a(android.app.Activity):com.google.android.gms.common.api.internal.zzb");
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: a */
    public final <T extends LifecycleCallback> T mo17442a(String str, Class<T> cls) {
        return cls.cast(this.f23303a.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: a */
    public final void mo17444a(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f23303a.containsKey(str)) {
            this.f23303a.put(str, lifecycleCallback);
            if (this.f23304b > 0) {
                new zzi(Looper.getMainLooper()).post(new RunnableC3281t0(this, lifecycleCallback, str));
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

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: c */
    public final Activity mo17439c() {
        return getActivity();
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f23303a.values()) {
            lifecycleCallback.mo17479a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f23303a.values()) {
            lifecycleCallback.mo17474a(i, i2, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f23304b = 1;
        this.f23305c = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f23303a.entrySet()) {
            entry.getValue().mo17473a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f23304b = 5;
        for (LifecycleCallback lifecycleCallback : this.f23303a.values()) {
            lifecycleCallback.mo17510b();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f23304b = 3;
        for (LifecycleCallback lifecycleCallback : this.f23303a.values()) {
            lifecycleCallback.mo17456c();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (Map.Entry<String, LifecycleCallback> entry : this.f23303a.entrySet()) {
                Bundle bundle2 = new Bundle();
                entry.getValue().mo17471b(bundle2);
                bundle.putBundle(entry.getKey(), bundle2);
            }
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f23304b = 2;
        for (LifecycleCallback lifecycleCallback : this.f23303a.values()) {
            lifecycleCallback.mo17455d();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f23304b = 4;
        for (LifecycleCallback lifecycleCallback : this.f23303a.values()) {
            lifecycleCallback.mo17454e();
        }
    }
}
