package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p023b.C0428a;
import com.google.android.gms.internal.p357c.HandlerC13168h;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.common.api.internal.cd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/cd.class */
public final class C11891cd extends Fragment implements AbstractC11898h {

    /* renamed from: a */
    private static final WeakHashMap<FragmentActivity, WeakReference<C11891cd>> f39337a = new WeakHashMap<>();

    /* renamed from: b */
    private final Map<String, LifecycleCallback> f39338b = Collections.synchronizedMap(new C0428a());

    /* renamed from: c */
    private int f39339c = 0;

    /* renamed from: d */
    private Bundle f39340d;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
        if (r0.isRemoving() != false) goto L12;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.C11891cd m19363a(androidx.fragment.app.FragmentActivity r6) {
        /*
            java.util.WeakHashMap<androidx.fragment.app.FragmentActivity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.cd>> r0 = com.google.android.gms.common.api.internal.C11891cd.f39337a
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
            com.google.android.gms.common.api.internal.cd r0 = (com.google.android.gms.common.api.internal.C11891cd) r0
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L20
            goto L22
        L20:
            r0 = r8
            return r0
        L22:
            r0 = r6
            androidx.fragment.app.FragmentManager r0 = r0.getSupportFragmentManager()     // Catch: java.lang.ClassCastException -> L65
            java.lang.String r1 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.Fragment r0 = r0.m43740a(r1)     // Catch: java.lang.ClassCastException -> L65
            com.google.android.gms.common.api.internal.cd r0 = (com.google.android.gms.common.api.internal.C11891cd) r0     // Catch: java.lang.ClassCastException -> L65
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L3c
            r0 = r9
            r8 = r0
            r0 = r9
            boolean r0 = r0.isRemoving()
            if (r0 == 0) goto L55
        L3c:
            com.google.android.gms.common.api.internal.cd r0 = new com.google.android.gms.common.api.internal.cd
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r6
            androidx.fragment.app.FragmentManager r0 = r0.getSupportFragmentManager()
            androidx.fragment.app.s r0 = r0.m43765a()
            r1 = r8
            java.lang.String r2 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.s r0 = r0.m43537a(r1, r2)
            int r0 = r0.mo43532c()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.C11891cd.m19363a(androidx.fragment.app.FragmentActivity):com.google.android.gms.common.api.internal.cd");
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11898h
    /* renamed from: a */
    public final /* synthetic */ Activity mo19299a() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11898h
    /* renamed from: a */
    public final <T extends LifecycleCallback> T mo19295a(String str, Class<T> cls) {
        return cls.cast(this.f39338b.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11898h
    /* renamed from: a */
    public final void mo19296a(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f39338b.containsKey(str)) {
            this.f39338b.put(str, lifecycleCallback);
            if (this.f39339c <= 0) {
                return;
            }
            new HandlerC13168h(Looper.getMainLooper()).post(new RunnableC11890cc(this, lifecycleCallback, str));
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("LifecycleCallback with tag ");
        sb.append(str);
        sb.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // androidx.fragment.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator<LifecycleCallback> it2 = this.f39338b.values().iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f39338b.values()) {
            lifecycleCallback.mo19376a(i, i2, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f39339c = 1;
        this.f39340d = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f39338b.entrySet()) {
            entry.getValue().mo19375a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f39339c = 5;
        Iterator<LifecycleCallback> it2 = this.f39338b.values().iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f39339c = 3;
        for (LifecycleCallback lifecycleCallback : this.f39338b.values()) {
            lifecycleCallback.mo19305c();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f39338b.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().mo19371b(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f39339c = 2;
        for (LifecycleCallback lifecycleCallback : this.f39338b.values()) {
            lifecycleCallback.mo19306b();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f39339c = 4;
        for (LifecycleCallback lifecycleCallback : this.f39338b.values()) {
            lifecycleCallback.mo19304d();
        }
    }
}
