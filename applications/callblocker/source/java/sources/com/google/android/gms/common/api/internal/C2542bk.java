package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.fragment.app.ActivityC0664d;
import androidx.fragment.app.Fragment;
import androidx.p013b.C0373a;
import com.google.android.gms.internal.p138e.HandlerC3727i;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.common.api.internal.bk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/bk.class */
public final class C2542bk extends Fragment implements AbstractC2554i {

    /* renamed from: a */
    private static WeakHashMap<ActivityC0664d, WeakReference<C2542bk>> f7158a = new WeakHashMap<>();

    /* renamed from: b */
    private Map<String, LifecycleCallback> f7159b = new C0373a();

    /* renamed from: c */
    private int f7160c = 0;

    /* renamed from: d */
    private Bundle f7161d;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (r0.m20021B() != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (r7 != null) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.C2542bk m14335a(androidx.fragment.app.ActivityC0664d r6) {
        /*
            java.util.WeakHashMap<androidx.fragment.app.d, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.bk>> r0 = com.google.android.gms.common.api.internal.C2542bk.f7158a
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L1d
            r0 = r7
            java.lang.Object r0 = r0.get()
            com.google.android.gms.common.api.internal.bk r0 = (com.google.android.gms.common.api.internal.C2542bk) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L1d
        L1b:
            r0 = r7
            return r0
        L1d:
            r0 = r6
            androidx.fragment.app.i r0 = r0.m19874m()     // Catch: java.lang.ClassCastException -> L63
            java.lang.String r1 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.Fragment r0 = r0.mo19772a(r1)     // Catch: java.lang.ClassCastException -> L63
            com.google.android.gms.common.api.internal.bk r0 = (com.google.android.gms.common.api.internal.C2542bk) r0     // Catch: java.lang.ClassCastException -> L63
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L37
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.m20021B()
            if (r0 == 0) goto L50
        L37:
            com.google.android.gms.common.api.internal.bk r0 = new com.google.android.gms.common.api.internal.bk
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            androidx.fragment.app.i r0 = r0.m19874m()
            androidx.fragment.app.o r0 = r0.mo19803a()
            r1 = r7
            java.lang.String r2 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.o r0 = r0.m19659a(r1, r2)
            int r0 = r0.mo19653c()
        L50:
            java.util.WeakHashMap<androidx.fragment.app.d, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.bk>> r0 = com.google.android.gms.common.api.internal.C2542bk.f7158a
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
            java.lang.String r2 = "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"
            r3 = r6
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.C2542bk.m14335a(androidx.fragment.app.d):com.google.android.gms.common.api.internal.bk");
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: I */
    public final void mo875I() {
        super.mo875I();
        this.f7160c = 3;
        for (LifecycleCallback lifecycleCallback : this.f7159b.values()) {
            lifecycleCallback.mo14224c();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K */
    public final void mo954K() {
        super.mo954K();
        this.f7160c = 5;
        for (LifecycleCallback lifecycleCallback : this.f7159b.values()) {
            lifecycleCallback.m14400e();
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2554i
    /* renamed from: a */
    public final /* synthetic */ Activity mo14242a() {
        return m19922r();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2554i
    /* renamed from: a */
    public final <T extends LifecycleCallback> T mo14240a(String str, Class<T> cls) {
        return cls.cast(this.f7159b.get(str));
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public final void mo952a(int i, int i2, Intent intent) {
        super.mo952a(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f7159b.values()) {
            lifecycleCallback.mo14355a(i, i2, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public final void mo3149a(Bundle bundle) {
        super.mo3149a(bundle);
        this.f7160c = 1;
        this.f7161d = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f7159b.entrySet()) {
            entry.getValue().mo14354a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2554i
    /* renamed from: a */
    public final void mo14241a(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f7159b.containsKey(str)) {
            this.f7159b.put(str, lifecycleCallback);
            if (this.f7160c <= 0) {
                return;
            }
            new HandlerC3727i(Looper.getMainLooper()).post(new RunnableC2541bj(this, lifecycleCallback, str));
            return;
        }
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 59).append("LifecycleCallback with tag ").append(str).append(" already added to this fragment.").toString());
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public final void mo14333a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.mo14333a(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f7159b.values()) {
            lifecycleCallback.m14401a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: e */
    public final void mo3147e(Bundle bundle) {
        super.mo3147e(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f7159b.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().mo14352b(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: i */
    public final void mo3152i() {
        super.mo3152i();
        this.f7160c = 2;
        for (LifecycleCallback lifecycleCallback : this.f7159b.values()) {
            lifecycleCallback.mo14225b();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: j */
    public final void mo3151j() {
        super.mo3151j();
        this.f7160c = 4;
        for (LifecycleCallback lifecycleCallback : this.f7159b.values()) {
            lifecycleCallback.mo3906d();
        }
    }
}
