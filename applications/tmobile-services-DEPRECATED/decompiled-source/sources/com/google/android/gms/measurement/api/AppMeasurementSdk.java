package com.google.android.gms.measurement.api;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.measurement.internal.zzgw;
import com.google.android.gms.measurement.internal.zzgx;
import java.util.List;
import java.util.Map;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk.class */
public class AppMeasurementSdk {

    /* renamed from: a */
    private final zzag f8820a;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty.class */
    public static final class ConditionalUserProperty {
        private ConditionalUserProperty() {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk$EventInterceptor.class */
    public interface EventInterceptor extends zzgx {
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener.class */
    public interface OnEventListener extends zzgw {
    }

    public AppMeasurementSdk(zzag zzagVar) {
        this.f8820a = zzagVar;
    }

    @KeepForSdk
    /* renamed from: a */
    public void m11826a(@NonNull @Size(max = 24, min = 1) String str, @Nullable String str2, @Nullable Bundle bundle) {
        this.f8820a.m13452M(str, str2, bundle);
    }

    @KeepForSdk
    @WorkerThread
    /* renamed from: b */
    public List<Bundle> m11825b(@Nullable String str, @Nullable @Size(max = 23, min = 1) String str2) {
        return this.f8820a.m13458G(str, str2);
    }

    @KeepForSdk
    @WorkerThread
    /* renamed from: c */
    public int m11824c(@NonNull @Size(min = 1) String str) {
        return this.f8820a.m13444U(str);
    }

    @KeepForSdk
    @WorkerThread
    /* renamed from: d */
    public Map<String, Object> m11823d(@Nullable String str, @Nullable @Size(max = 24, min = 1) String str2, boolean z) {
        return this.f8820a.m13424h(str, str2, z);
    }

    @KeepForSdk
    /* renamed from: e */
    public void m11822e(String str, String str2, Bundle bundle) {
        this.f8820a.m13409w(str, str2, bundle);
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: f */
    public void m11821f(OnEventListener onEventListener) {
        this.f8820a.m13416p(onEventListener);
    }

    @KeepForSdk
    /* renamed from: g */
    public void m11820g(@NonNull Bundle bundle) {
        this.f8820a.m13420l(bundle);
    }

    @KeepForSdk
    /* renamed from: h */
    public void m11819h(String str, String str2, Object obj) {
        this.f8820a.m13406z(str, str2, obj);
    }

    /* renamed from: i */
    public final void m11818i(boolean z) {
        this.f8820a.m13463B(z);
    }
}
