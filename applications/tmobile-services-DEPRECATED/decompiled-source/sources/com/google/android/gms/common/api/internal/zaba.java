package com.google.android.gms.common.api.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaba.class */
public final class zaba implements ResultCallback<Status> {

    /* renamed from: a */
    private final /* synthetic */ StatusPendingResult f7210a;

    /* renamed from: b */
    private final /* synthetic */ boolean f7211b;

    /* renamed from: c */
    private final /* synthetic */ GoogleApiClient f7212c;

    /* renamed from: d */
    private final /* synthetic */ zaaw f7213d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaba(zaaw zaawVar, StatusPendingResult statusPendingResult, boolean z, GoogleApiClient googleApiClient) {
        this.f7213d = zaawVar;
        this.f7210a = statusPendingResult;
        this.f7211b = z;
        this.f7212c = googleApiClient;
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    /* renamed from: a */
    public final /* synthetic */ void mo14760a(@NonNull Status status) {
        Context context;
        Status status2 = status;
        context = this.f7213d.f7186f;
        Storage.m15140a(context).m15135f();
        if (status2.m14996d0() && this.f7213d.m14814m()) {
            this.f7213d.m14813n();
        }
        this.f7210a.m14974i(status2);
        if (this.f7211b) {
            this.f7212c.mo14818e();
        }
    }
}
