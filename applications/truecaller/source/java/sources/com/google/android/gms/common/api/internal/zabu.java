package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zabu.class */
public interface zabu {
    /* renamed from: a */
    void mo4275a();

    /* renamed from: b */
    boolean mo4274b(SignInConnectionListener signInConnectionListener);

    /* renamed from: c */
    void mo4273c();

    /* renamed from: d */
    <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo4272d(T t);

    /* renamed from: e */
    <A extends Api.AnyClient, R extends Result, T extends BaseImplementation.ApiMethodImpl<R, A>> T mo4271e(T t);

    /* renamed from: f */
    void mo4270f();

    /* renamed from: g */
    void mo4269g();

    /* renamed from: h */
    boolean mo4268h();

    /* renamed from: i */
    boolean mo4267i();

    /* renamed from: j */
    void mo4266j(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    /* renamed from: k */
    ConnectionResult mo4265k(long j, TimeUnit timeUnit);
}
