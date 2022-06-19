package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.p023b.C0428a;
import com.google.android.gms.internal.p357c.HandlerC13168h;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/zzb.class */
public final class zzb extends Fragment implements AbstractC11898h {

    /* renamed from: a */
    private static final WeakHashMap<Activity, WeakReference<zzb>> f39416a = new WeakHashMap<>();

    /* renamed from: b */
    private final Map<String, LifecycleCallback> f39417b = Collections.synchronizedMap(new C0428a());

    /* renamed from: c */
    private int f39418c = 0;

    /* renamed from: d */
    private Bundle f39419d;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
        if (r0.isRemoving() != false) goto L12;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.zzb m19298a(android.app.Activity r6) {
        /*
            java.util.WeakHashMap<android.app.Activity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzb>> r0 = com.google.android.gms.common.api.internal.zzb.f39416a
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zzb.m19298a(android.app.Activity):com.google.android.gms.common.api.internal.zzb");
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11898h
    /* renamed from: a */
    public final Activity mo19299a() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11898h
    /* renamed from: a */
    public final <T extends LifecycleCallback> T mo19295a(String str, Class<T> cls) {
        return cls.cast(this.f39417b.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11898h
    /* renamed from: a */
    public final void mo19296a(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f39417b.containsKey(str)) {
            this.f39417b.put(str, lifecycleCallback);
            if (this.f39418c <= 0) {
                return;
            }
            new HandlerC13168h(Looper.getMainLooper()).post(new RunnableC11889cb(this, lifecycleCallback, str));
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("LifecycleCallback with tag ");
        sb.append(str);
        sb.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator<LifecycleCallback> it2 = this.f39417b.values().iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f39417b.values()) {
            lifecycleCallback.mo19376a(i, i2, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f39418c = 1;
        this.f39419d = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f39417b.entrySet()) {
            entry.getValue().mo19375a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f39418c = 5;
        Iterator<LifecycleCallback> it2 = this.f39417b.values().iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f39418c = 3;
        for (LifecycleCallback lifecycleCallback : this.f39417b.values()) {
            lifecycleCallback.mo19305c();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f39417b.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().mo19371b(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f39418c = 2;
        for (LifecycleCallback lifecycleCallback : this.f39417b.values()) {
            lifecycleCallback.mo19306b();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f39418c = 4;
        for (LifecycleCallback lifecycleCallback : this.f39417b.values()) {
            lifecycleCallback.mo19304d();
        }
    }
}
