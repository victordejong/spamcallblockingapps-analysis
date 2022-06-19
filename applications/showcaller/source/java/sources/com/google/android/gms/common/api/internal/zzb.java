package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import p020b.p036e.C1489a;
import p078c.p084c.p085a.p086a.p088b.p091c.HandlerC1854h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zzb.class */
public final class zzb extends Fragment implements AbstractC6031h {

    /* renamed from: d */
    private static final WeakHashMap<Activity, WeakReference<zzb>> f19376d = new WeakHashMap<>();

    /* renamed from: e */
    private final Map<String, LifecycleCallback> f19377e = Collections.synchronizedMap(new C1489a());

    /* renamed from: f */
    private int f19378f = 0;

    /* renamed from: g */
    private Bundle f19379g;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
        if (r0.isRemoving() != false) goto L12;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.zzb m17247a(android.app.Activity r6) {
        /*
            java.util.WeakHashMap<android.app.Activity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzb>> r0 = com.google.android.gms.common.api.internal.zzb.f19376d
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
            com.google.android.gms.common.api.internal.zzb r0 = (com.google.android.gms.common.api.internal.zzb) r0
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L20
            goto L22
        L20:
            r0 = r8
            return r0
        L22:
            r0 = r6
            android.app.FragmentManager r0 = r0.getFragmentManager()     // Catch: java.lang.ClassCastException -> L65
            java.lang.String r1 = "LifecycleFragmentImpl"
            android.app.Fragment r0 = r0.findFragmentByTag(r1)     // Catch: java.lang.ClassCastException -> L65
            com.google.android.gms.common.api.internal.zzb r0 = (com.google.android.gms.common.api.internal.zzb) r0     // Catch: java.lang.ClassCastException -> L65
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L3c
            r0 = r9
            r8 = r0
            r0 = r9
            boolean r0 = r0.isRemoving()
            if (r0 == 0) goto L55
        L3c:
            com.google.android.gms.common.api.internal.zzb r0 = new com.google.android.gms.common.api.internal.zzb
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r6
            android.app.FragmentManager r0 = r0.getFragmentManager()
            android.app.FragmentTransaction r0 = r0.beginTransaction()
            r1 = r8
            java.lang.String r2 = "LifecycleFragmentImpl"
            android.app.FragmentTransaction r0 = r0.add(r1, r2)
            int r0 = r0.commitAllowingStateLoss()
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
            java.lang.String r2 = "Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl"
            r3 = r6
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zzb.m17247a(android.app.Activity):com.google.android.gms.common.api.internal.zzb");
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6031h
    /* renamed from: b */
    public final void mo17246b(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f19377e.containsKey(str)) {
            this.f19377e.put(str, lifecycleCallback);
            if (this.f19378f <= 0) {
                return;
            }
            new HandlerC1854h(Looper.getMainLooper()).post(new RunnableC6045l1(this, lifecycleCallback, str));
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("LifecycleCallback with tag ");
        sb.append(str);
        sb.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6031h
    /* renamed from: d */
    public final <T extends LifecycleCallback> T mo17244d(String str, Class<T> cls) {
        return cls.cast(this.f19377e.get(str));
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f19377e.values()) {
            lifecycleCallback.m17441a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6031h
    /* renamed from: e */
    public final Activity mo17243e() {
        return getActivity();
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f19377e.values()) {
            lifecycleCallback.mo17332e(i, i2, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f19378f = 1;
        this.f19379g = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f19377e.entrySet()) {
            entry.getValue().mo17331f(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f19378f = 5;
        for (LifecycleCallback lifecycleCallback : this.f19377e.values()) {
            lifecycleCallback.m17437g();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f19378f = 3;
        for (LifecycleCallback lifecycleCallback : this.f19377e.values()) {
            lifecycleCallback.mo17268h();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f19377e.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().mo17330i(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f19378f = 2;
        for (LifecycleCallback lifecycleCallback : this.f19377e.values()) {
            lifecycleCallback.mo17267j();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f19378f = 4;
        for (LifecycleCallback lifecycleCallback : this.f19377e.values()) {
            lifecycleCallback.mo17266k();
        }
    }
}
