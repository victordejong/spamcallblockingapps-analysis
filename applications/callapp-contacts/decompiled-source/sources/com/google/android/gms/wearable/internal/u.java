package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.o;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/u.class */
public final class u extends Cdo<Status> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Uri f30155a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ long f30156b;
    private final /* synthetic */ long g;
    private final /* synthetic */ zzay h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(zzay zzayVar, g gVar, Uri uri, long j, long j2) {
        super(gVar);
        this.h = zzayVar;
        this.f30155a = uri;
        this.f30156b = j;
        this.g = j2;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ m a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final /* synthetic */ void a(db dbVar) throws RemoteException {
        String str;
        db dbVar2 = dbVar;
        str = this.h.zzce;
        Uri uri = this.f30155a;
        long j = this.f30156b;
        long j2 = this.g;
        try {
            ExecutorService executorService = dbVar2.f30108a;
            o.a(this);
            o.a(str);
            o.a(uri);
            o.a(j >= 0, "startOffset is negative: %s", Long.valueOf(j));
            o.a(j2 >= -1, "invalid length: %s", Long.valueOf(j2));
            executorService.execute(new dd(dbVar2, uri, this, str, j, j2));
        } catch (RuntimeException e) {
            b(new Status(8));
            throw e;
        }
    }
}
