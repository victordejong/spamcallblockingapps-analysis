package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.fragment.app.Fragment;
import com.google.android.gms.internal.common.zzi;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import n3.r.a.l;
import p1727n3.p1788g.C26174a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.RunnableC24910b1;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zzd.class */
public final class zzd extends Fragment implements LifecycleFragment {

    /* renamed from: d */
    public static final WeakHashMap<l, WeakReference<zzd>> f5910d = new WeakHashMap<>();

    /* renamed from: a */
    public final Map<String, LifecycleCallback> f5911a = Collections.synchronizedMap(new C26174a());

    /* renamed from: b */
    public int f5912b = 0;

    /* renamed from: c */
    public Bundle f5913c;

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: Dh */
    public final /* synthetic */ Activity mo38923Dh() {
        return getActivity();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: Gm */
    public final void mo38922Gm(String str, LifecycleCallback lifecycleCallback) {
        if (!this.f5911a.containsKey(str)) {
            this.f5911a.put(str, lifecycleCallback);
            if (this.f5912b <= 0) {
                return;
            }
            new zzi(Looper.getMainLooper()).post(new RunnableC24910b1(this, lifecycleCallback, str));
            return;
        }
        throw new IllegalArgumentException(C22128a.m8610j(new StringBuilder(str.length() + 59), "LifecycleCallback with tag ", str, " already added to this fragment."));
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        zzd.super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f5911a.values()) {
            lifecycleCallback.mo38937a(str, fileDescriptor, printWriter, strArr);
        }
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        zzd.super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f5911a.values()) {
            lifecycleCallback.mo38935d(i, i2, intent);
        }
    }

    public final void onCreate(Bundle bundle) {
        zzd.super.onCreate(bundle);
        this.f5912b = 1;
        this.f5913c = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f5911a.entrySet()) {
            entry.getValue().mo38934e(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    public final void onDestroy() {
        zzd.super.onDestroy();
        this.f5912b = 5;
        for (LifecycleCallback lifecycleCallback : this.f5911a.values()) {
            lifecycleCallback.mo38950f();
        }
    }

    public final void onResume() {
        zzd.super.onResume();
        this.f5912b = 3;
        for (LifecycleCallback lifecycleCallback : this.f5911a.values()) {
            lifecycleCallback.mo39012g();
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        zzd.super.onSaveInstanceState(bundle);
        if (bundle == null) {
            return;
        }
        for (Map.Entry<String, LifecycleCallback> entry : this.f5911a.entrySet()) {
            Bundle bundle2 = new Bundle();
            entry.getValue().mo38933h(bundle2);
            bundle.putBundle(entry.getKey(), bundle2);
        }
    }

    public final void onStart() {
        zzd.super.onStart();
        this.f5912b = 2;
        for (LifecycleCallback lifecycleCallback : this.f5911a.values()) {
            lifecycleCallback.mo38932i();
        }
    }

    public final void onStop() {
        zzd.super.onStop();
        this.f5912b = 4;
        for (LifecycleCallback lifecycleCallback : this.f5911a.values()) {
            lifecycleCallback.mo38931j();
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleFragment
    /* renamed from: q9 */
    public final <T extends LifecycleCallback> T mo38921q9(String str, Class<T> cls) {
        return cls.cast(this.f5911a.get(str));
    }
}
