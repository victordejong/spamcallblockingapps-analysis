package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.fragment.app.ActivityC0711c;
import androidx.fragment.app.Fragment;
import androidx.p014c.C0374a;
import com.google.android.gms.internal.common.zze;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zzc.class */
public final class zzc extends Fragment implements LifecycleFragment {
    private static WeakHashMap<ActivityC0711c, WeakReference<zzc>> zzbe = new WeakHashMap<>();
    private Map<String, LifecycleCallback> zzbf = new C0374a();
    private int zzbg = 0;
    private Bundle zzbh;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (r0.isRemoving() != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.zzc zza(androidx.fragment.app.ActivityC0711c r6) {
        /*
            java.util.WeakHashMap<androidx.fragment.app.c, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzc>> r0 = com.google.android.gms.common.api.internal.zzc.zzbe
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L1d
            r0 = r7
            java.lang.Object r0 = r0.get()
            com.google.android.gms.common.api.internal.zzc r0 = (com.google.android.gms.common.api.internal.zzc) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L1d
            r0 = r7
            return r0
        L1d:
            r0 = r6
            androidx.fragment.app.h r0 = r0.m5665j()     // Catch: java.lang.ClassCastException -> L62
            java.lang.String r1 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.Fragment r0 = r0.mo5563a(r1)     // Catch: java.lang.ClassCastException -> L62
            com.google.android.gms.common.api.internal.zzc r0 = (com.google.android.gms.common.api.internal.zzc) r0     // Catch: java.lang.ClassCastException -> L62
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L37
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.isRemoving()
            if (r0 == 0) goto L50
        L37:
            com.google.android.gms.common.api.internal.zzc r0 = new com.google.android.gms.common.api.internal.zzc
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            androidx.fragment.app.h r0 = r0.m5665j()
            androidx.fragment.app.l r0 = r0.mo5592a()
            r1 = r7
            java.lang.String r2 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.l r0 = r0.m5459a(r1, r2)
            int r0 = r0.mo5456c()
        L50:
            java.util.WeakHashMap<androidx.fragment.app.c, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzc>> r0 = com.google.android.gms.common.api.internal.zzc.zzbe
            r1 = r6
            java.lang.ref.WeakReference r2 = new java.lang.ref.WeakReference
            r3 = r2
            r4 = r7
            r3.<init>(r4)
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r7
            return r0
        L62:
            r6 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"
            r3 = r6
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zzc.zza(androidx.fragment.app.c):com.google.android.gms.common.api.internal.zzc");
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final void addCallback(String str, LifecycleCallback lifecycleCallback) {
        if (!this.zzbf.containsKey(str)) {
            this.zzbf.put(str, lifecycleCallback);
            if (this.zzbg <= 0) {
                return;
            }
            new zze(Looper.getMainLooper()).post(new zzd(this, lifecycleCallback, str));
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
        for (LifecycleCallback lifecycleCallback : this.zzbf.values()) {
            lifecycleCallback.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final <T extends LifecycleCallback> T getCallbackOrNull(String str, Class<T> cls) {
        return cls.cast(this.zzbf.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final /* synthetic */ Activity getLifecycleActivity() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final boolean isCreated() {
        return this.zzbg > 0;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final boolean isStarted() {
        return this.zzbg >= 2;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.zzbf.values()) {
            lifecycleCallback.onActivityResult(i, i2, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzbg = 1;
        this.zzbh = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.zzbf.entrySet()) {
            entry.getValue().onCreate(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.zzbg = 5;
        for (LifecycleCallback lifecycleCallback : this.zzbf.values()) {
            lifecycleCallback.onDestroy();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.zzbg = 3;
        for (LifecycleCallback lifecycleCallback : this.zzbf.values()) {
            lifecycleCallback.onResume();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.zzbf.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().onSaveInstanceState(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.zzbg = 2;
        for (LifecycleCallback lifecycleCallback : this.zzbf.values()) {
            lifecycleCallback.onStart();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.zzbg = 4;
        for (LifecycleCallback lifecycleCallback : this.zzbf.values()) {
            lifecycleCallback.onStop();
        }
    }
}
