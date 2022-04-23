package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.b.a;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.internal.c.h;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/cd.class */
public final class cd extends Fragment implements h {

    /* renamed from: a  reason: collision with root package name */
    private static final WeakHashMap<FragmentActivity, WeakReference<cd>> f22728a = new WeakHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, LifecycleCallback> f22729b = Collections.synchronizedMap(new a());

    /* renamed from: c  reason: collision with root package name */
    private int f22730c = 0;

    /* renamed from: d  reason: collision with root package name */
    private Bundle f22731d;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
        if (r0.isRemoving() != false) goto L_0x003c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.cd a(androidx.fragment.app.FragmentActivity r6) {
        /*
            java.util.WeakHashMap<androidx.fragment.app.FragmentActivity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.cd>> r0 = com.google.android.gms.common.api.internal.cd.f22728a
            r7 = r0
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0022
            r0 = r8
            java.lang.Object r0 = r0.get()
            com.google.android.gms.common.api.internal.cd r0 = (com.google.android.gms.common.api.internal.cd) r0
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0020
            goto L_0x0022
        L_0x0020:
            r0 = r8
            return r0
        L_0x0022:
            r0 = r6
            androidx.fragment.app.FragmentManager r0 = r0.getSupportFragmentManager()     // Catch: ClassCastException -> 0x0065
            java.lang.String r1 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.Fragment r0 = r0.a(r1)     // Catch: ClassCastException -> 0x0065
            com.google.android.gms.common.api.internal.cd r0 = (com.google.android.gms.common.api.internal.cd) r0     // Catch: ClassCastException -> 0x0065
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x003c
            r0 = r9
            r8 = r0
            r0 = r9
            boolean r0 = r0.isRemoving()
            if (r0 == 0) goto L_0x0055
        L_0x003c:
            com.google.android.gms.common.api.internal.cd r0 = new com.google.android.gms.common.api.internal.cd
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r6
            androidx.fragment.app.FragmentManager r0 = r0.getSupportFragmentManager()
            androidx.fragment.app.s r0 = r0.a()
            r1 = r8
            java.lang.String r2 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.s r0 = r0.a(r1, r2)
            int r0 = r0.c()
        L_0x0055:
            r0 = r7
            r1 = r6
            java.lang.ref.WeakReference r2 = new java.lang.ref.WeakReference
            r3 = r2
            r4 = r8
            r3.<init>(r4)
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r8
            return r0
        L_0x0065:
            r6 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"
            r3 = r6
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.cd.a(androidx.fragment.app.FragmentActivity):com.google.android.gms.common.api.internal.cd");
    }

    @Override // com.google.android.gms.common.api.internal.h
    public final /* synthetic */ Activity a() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.h
    public final <T extends LifecycleCallback> T a(String str, Class<T> cls) {
        return cls.cast(this.f22729b.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.h
    public final void a(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f22729b.containsKey(str)) {
            this.f22729b.put(str, lifecycleCallback);
            if (this.f22730c > 0) {
                new h(Looper.getMainLooper()).post(new cc(this, lifecycleCallback, str));
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
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        Iterator<LifecycleCallback> it2 = this.f22729b.values().iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f22729b.values()) {
            lifecycleCallback.a(i, i2, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f22730c = 1;
        this.f22731d = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f22729b.entrySet()) {
            entry.getValue().a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f22730c = 5;
        Iterator<LifecycleCallback> it2 = this.f22729b.values().iterator();
        while (it2.hasNext()) {
            it2.next();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f22730c = 3;
        for (LifecycleCallback lifecycleCallback : this.f22729b.values()) {
            lifecycleCallback.c();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (Map.Entry<String, LifecycleCallback> entry : this.f22729b.entrySet()) {
                Bundle bundle2 = new Bundle();
                entry.getValue().b(bundle2);
                bundle.putBundle(entry.getKey(), bundle2);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f22730c = 2;
        for (LifecycleCallback lifecycleCallback : this.f22729b.values()) {
            lifecycleCallback.b();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f22730c = 4;
        for (LifecycleCallback lifecycleCallback : this.f22729b.values()) {
            lifecycleCallback.d();
        }
    }
}
