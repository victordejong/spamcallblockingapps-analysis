package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.p013b.C0373a;
import com.google.android.gms.internal.p138e.HandlerC3727i;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.common.api.internal.bh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/bh.class */
public final class FragmentC2539bh extends Fragment implements AbstractC2554i {

    /* renamed from: a */
    private static WeakHashMap<Activity, WeakReference<FragmentC2539bh>> f7148a = new WeakHashMap<>();

    /* renamed from: b */
    private Map<String, LifecycleCallback> f7149b = new C0373a();

    /* renamed from: c */
    private int f7150c = 0;

    /* renamed from: d */
    private Bundle f7151d;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (r0.isRemoving() != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (r7 != null) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.FragmentC2539bh m14338a(android.app.Activity r6) {
        /*
            java.util.WeakHashMap<android.app.Activity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.bh>> r0 = com.google.android.gms.common.api.internal.FragmentC2539bh.f7148a
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L1d
            r0 = r7
            java.lang.Object r0 = r0.get()
            com.google.android.gms.common.api.internal.bh r0 = (com.google.android.gms.common.api.internal.FragmentC2539bh) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L1d
        L1b:
            r0 = r7
            return r0
        L1d:
            r0 = r6
            android.app.FragmentManager r0 = r0.getFragmentManager()     // Catch: java.lang.ClassCastException -> L63
            java.lang.String r1 = "LifecycleFragmentImpl"
            android.app.Fragment r0 = r0.findFragmentByTag(r1)     // Catch: java.lang.ClassCastException -> L63
            com.google.android.gms.common.api.internal.bh r0 = (com.google.android.gms.common.api.internal.FragmentC2539bh) r0     // Catch: java.lang.ClassCastException -> L63
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L37
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.isRemoving()
            if (r0 == 0) goto L50
        L37:
            com.google.android.gms.common.api.internal.bh r0 = new com.google.android.gms.common.api.internal.bh
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
        L50:
            java.util.WeakHashMap<android.app.Activity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.bh>> r0 = com.google.android.gms.common.api.internal.FragmentC2539bh.f7148a
            r1 = r6
            java.lang.ref.WeakReference r2 = new java.lang.ref.WeakReference
            r3 = r2
            r4 = r7
            r3.<init>(r4)
            java.lang.Object r0 = r0.put(r1, r2)
            goto L1b
        L63:
            r6 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl"
            r3 = r6
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.FragmentC2539bh.m14338a(android.app.Activity):com.google.android.gms.common.api.internal.bh");
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2554i
    /* renamed from: a */
    public final Activity mo14242a() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2554i
    /* renamed from: a */
    public final <T extends LifecycleCallback> T mo14240a(String str, Class<T> cls) {
        return cls.cast(this.f7149b.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2554i
    /* renamed from: a */
    public final void mo14241a(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f7149b.containsKey(str)) {
            this.f7149b.put(str, lifecycleCallback);
            if (this.f7150c <= 0) {
                return;
            }
            new HandlerC3727i(Looper.getMainLooper()).post(new RunnableC2540bi(this, lifecycleCallback, str));
            return;
        }
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 59).append("LifecycleCallback with tag ").append(str).append(" already added to this fragment.").toString());
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f7149b.values()) {
            lifecycleCallback.m14401a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f7149b.values()) {
            lifecycleCallback.mo14355a(i, i2, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7150c = 1;
        this.f7151d = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f7149b.entrySet()) {
            entry.getValue().mo14354a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f7150c = 5;
        for (LifecycleCallback lifecycleCallback : this.f7149b.values()) {
            lifecycleCallback.m14400e();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f7150c = 3;
        for (LifecycleCallback lifecycleCallback : this.f7149b.values()) {
            lifecycleCallback.mo14224c();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f7149b.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().mo14352b(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f7150c = 2;
        for (LifecycleCallback lifecycleCallback : this.f7149b.values()) {
            lifecycleCallback.mo14225b();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f7150c = 4;
        for (LifecycleCallback lifecycleCallback : this.f7149b.values()) {
            lifecycleCallback.mo3906d();
        }
    }
}
