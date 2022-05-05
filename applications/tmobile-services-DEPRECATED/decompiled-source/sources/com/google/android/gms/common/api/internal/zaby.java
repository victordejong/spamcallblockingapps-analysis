package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaby.class */
final /* synthetic */ class zaby implements RemoteCall {

    /* renamed from: a */
    private final BiConsumer f7252a;

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    /* renamed from: a */
    public final void mo14761a(Object obj, Object obj2) {
        this.f7252a.m14343a((Api.AnyClient) obj, (TaskCompletionSource) obj2);
    }
}
