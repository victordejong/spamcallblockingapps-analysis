package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24922h0;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24924i0;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/TaskApiCall.class */
public abstract class TaskApiCall<A extends Api.AnyClient, ResultT> {
    private final Feature[] zaa;
    private final boolean zab;
    private final int zac;

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/TaskApiCall$Builder.class */
    public static class Builder<A extends Api.AnyClient, ResultT> {

        /* renamed from: a */
        public RemoteCall<A, TaskCompletionSource<ResultT>> f5775a;

        /* renamed from: c */
        public Feature[] f5777c;

        /* renamed from: b */
        public boolean f5776b = true;

        /* renamed from: d */
        public int f5778d = 0;

        private Builder() {
        }

        public /* synthetic */ Builder(C24922h0 c24922h0) {
        }

        @RecentlyNonNull
        @KeepForSdk
        /* renamed from: a */
        public TaskApiCall<A, ResultT> m39016a() {
            Preconditions.m38906b(this.f5775a != null, "execute parameter required");
            return new C24924i0(this, this.f5777c, this.f5776b, this.f5778d);
        }
    }

    @KeepForSdk
    @Deprecated
    public TaskApiCall() {
        this.zaa = null;
        this.zab = false;
        this.zac = 0;
    }

    @KeepForSdk
    public TaskApiCall(Feature[] featureArr, boolean z, int i) {
        this.zaa = featureArr;
        boolean z2 = false;
        if (featureArr != null) {
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        this.zab = z2;
        this.zac = i;
    }

    @RecentlyNonNull
    @KeepForSdk
    public static <A extends Api.AnyClient, ResultT> Builder<A, ResultT> builder() {
        return new Builder<>(null);
    }

    @KeepForSdk
    public abstract void doExecute(@RecentlyNonNull A a, @RecentlyNonNull TaskCompletionSource<ResultT> taskCompletionSource) throws RemoteException;

    @KeepForSdk
    public boolean shouldAutoResolveMissingFeatures() {
        return this.zab;
    }

    @RecentlyNullable
    public final Feature[] zaa() {
        return this.zaa;
    }

    public final int zab() {
        return this.zac;
    }
}
