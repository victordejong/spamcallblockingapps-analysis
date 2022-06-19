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
import p1727n3.p1788g.C26174a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.RunnableC24907a1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zzb.class */
public final class zzb extends Fragment implements LifecycleFragment {

    /* renamed from: d */
    public static final WeakHashMap<Activity, WeakReference<zzb>> f5906d = new WeakHashMap<>();

    /* renamed from: a */
    public final Map<String, LifecycleCallback> f5907a = Collections.synchronizedMap(new C26174a());

    /* renamed from: b */
    public int f5908b = 0;

    /* renamed from: c */
    public Bundle f5909c;

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: Dh */
    public final Activity mo38923Dh() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: Gm */
    public final void mo38922Gm(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f5907a.containsKey(str)) {
            this.f5907a.put(str, lifecycleCallback);
            if (this.f5908b <= 0) {
                return;
            }
            new zzi(Looper.getMainLooper()).post(new RunnableC24907a1(this, lifecycleCallback, str));
            return;
        }
        throw new IllegalArgumentException(C22128a.m8610j(new StringBuilder(str.length() + 59), "LifecycleCallback with tag ", str, " already added to this fragment."));
    }

    @Override // android.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f5907a.values()) {
            lifecycleCallback.mo38937a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // android.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f5907a.values()) {
            lifecycleCallback.mo38935d(i, i2, intent);
        }
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f5908b = 1;
        this.f5909c = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f5907a.entrySet()) {
            entry.getValue().mo38934e(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f5908b = 5;
        for (LifecycleCallback lifecycleCallback : this.f5907a.values()) {
            lifecycleCallback.mo38950f();
        }
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f5908b = 3;
        for (LifecycleCallback lifecycleCallback : this.f5907a.values()) {
            lifecycleCallback.mo39012g();
        }
    }

    @Override // android.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f5907a.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().mo38933h(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f5908b = 2;
        for (LifecycleCallback lifecycleCallback : this.f5907a.values()) {
            lifecycleCallback.mo38932i();
        }
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f5908b = 4;
        for (LifecycleCallback lifecycleCallback : this.f5907a.values()) {
            lifecycleCallback.mo38931j();
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: q9 */
    public final <T extends LifecycleCallback> T mo38921q9(String str, Class<T> cls) {
        return cls.cast(this.f5907a.get(str));
    }
}
