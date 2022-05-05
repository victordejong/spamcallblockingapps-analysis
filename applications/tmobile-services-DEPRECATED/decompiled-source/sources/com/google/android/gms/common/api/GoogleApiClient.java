package com.google.android.gms.common.api;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.zack;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.WeakHashMap;
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient.class */
public abstract class GoogleApiClient {

    @KeepForSdk
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$Builder.class */
    public static final class Builder {
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks.class */
    public interface ConnectionCallbacks extends com.google.android.gms.common.api.internal.ConnectionCallbacks {
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener.class */
    public interface OnConnectionFailedListener extends com.google.android.gms.common.api.internal.OnConnectionFailedListener {
    }

    static {
        Collections.newSetFromMap(new WeakHashMap());
    }

    /* renamed from: d */
    public abstract void mo14819d();

    /* renamed from: e */
    public abstract void mo14818e();

    /* renamed from: f */
    public abstract void mo14817f(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    @KeepForSdk
    /* renamed from: g */
    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo14785g(@NonNull T t) {
        throw new UnsupportedOperationException();
    }

    @KeepForSdk
    /* renamed from: h */
    public Looper mo14784h() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: i */
    public abstract void mo14816i(@NonNull OnConnectionFailedListener onConnectionFailedListener);

    /* renamed from: j */
    public void mo14783j(zack zackVar) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: k */
    public void mo14782k(zack zackVar) {
        throw new UnsupportedOperationException();
    }
}
