package com.google.android.gms.tasks;

import android.app.Activity;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/zzv.class */
final class zzv extends LifecycleCallback {
    private final List<WeakReference<zzq<?>>> zza = new ArrayList();

    private zzv(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.mLifecycleFragment.addCallback("TaskOnStopCallback", this);
    }

    public static zzv zza(Activity activity) {
        LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
        zzv zzvVar = (zzv) fragment.getCallbackOrNull("TaskOnStopCallback", zzv.class);
        zzv zzvVar2 = zzvVar;
        if (zzvVar == null) {
            zzvVar2 = new zzv(fragment);
        }
        return zzvVar2;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        synchronized (this.zza) {
            for (WeakReference<zzq<?>> weakReference : this.zza) {
                zzq<?> zzqVar = weakReference.get();
                if (zzqVar != null) {
                    zzqVar.zzb();
                }
            }
            this.zza.clear();
        }
    }

    public final <T> void zzb(zzq<T> zzqVar) {
        synchronized (this.zza) {
            this.zza.add(new WeakReference<>(zzqVar));
        }
    }
}
