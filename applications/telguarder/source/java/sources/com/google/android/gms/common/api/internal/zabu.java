package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabu.class */
public interface zabu {
    <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T zab(T t);

    <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T zac(T t);

    ConnectionResult zad(Api<?> api);

    void zae();

    ConnectionResult zaf();

    ConnectionResult zag(long j, TimeUnit timeUnit);

    void zah();

    boolean zai();

    boolean zaj();

    boolean zak(SignInConnectionListener signInConnectionListener);

    void zal();

    void zam();

    void zan(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);
}
