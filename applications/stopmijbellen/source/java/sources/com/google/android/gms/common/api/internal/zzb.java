package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.internal.common.zzi;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zzb.class */
public final class zzb extends Fragment implements LifecycleFragment {
    private static final WeakHashMap<Activity, WeakReference<zzb>> zza = new WeakHashMap<>();
    private final Map<String, LifecycleCallback> zzb = Collections.synchronizedMap(new C4251a());
    private int zzc = 0;
    private Bundle zzd;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
        if (r0.isRemoving() != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.common.api.internal.zzb zzc(android.app.Activity r6) {
        /*
            java.util.WeakHashMap<android.app.Activity, java.lang.ref.WeakReference<com.google.android.gms.common.api.internal.zzb>> r0 = com.google.android.gms.common.api.internal.zzb.zza
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zzb.zzc(android.app.Activity):com.google.android.gms.common.api.internal.zzb");
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final void addCallback(String str, LifecycleCallback lifecycleCallback) {
        if (!this.zzb.containsKey(str)) {
            this.zzb.put(str, lifecycleCallback);
            if (this.zzc <= 0) {
                return;
            }
            new zzi(Looper.getMainLooper()).post(new zza(this, lifecycleCallback, str));
            return;
        }
        throw new IllegalArgumentException(C0608b.m7625j(new StringBuilder(String.valueOf(str).length() + 59), "LifecycleCallback with tag ", str, " already added to this fragment."));
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.zzb.values()) {
            lifecycleCallback.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final <T extends LifecycleCallback> T getCallbackOrNull(String str, Class<T> cls) {
        return cls.cast(this.zzb.get(str));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final Activity getLifecycleActivity() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final boolean isCreated() {
        return this.zzc > 0;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    public final boolean isStarted() {
        return this.zzc >= 2;
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.zzb.values()) {
            lifecycleCallback.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzc = 1;
        this.zzd = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.zzb.entrySet()) {
            entry.getValue().onCreate(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.zzc = 5;
        for (LifecycleCallback lifecycleCallback : this.zzb.values()) {
            lifecycleCallback.onDestroy();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.zzc = 3;
        for (LifecycleCallback lifecycleCallback : this.zzb.values()) {
            lifecycleCallback.onResume();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.zzb.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().onSaveInstanceState(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.zzc = 2;
        for (LifecycleCallback lifecycleCallback : this.zzb.values()) {
            lifecycleCallback.onStart();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.zzc = 4;
        for (LifecycleCallback lifecycleCallback : this.zzb.values()) {
            lifecycleCallback.onStop();
        }
    }
}
