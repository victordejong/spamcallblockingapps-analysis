package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.o;
import java.util.concurrent.ExecutorService;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/t.class */
final class t extends Cdo<Status> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Uri f30153a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ boolean f30154b;
    private final /* synthetic */ zzay g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(zzay zzayVar, g gVar, Uri uri, boolean z) {
        super(gVar);
        this.g = zzayVar;
        this.f30153a = uri;
        this.f30154b = z;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ m a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.d.a
    public final /* synthetic */ void a(db dbVar) throws RemoteException {
        String str;
        db dbVar2 = dbVar;
        str = this.g.zzce;
        Uri uri = this.f30153a;
        boolean z = this.f30154b;
        try {
            ExecutorService executorService = dbVar2.f30108a;
            o.a(this);
            o.a(str);
            o.a(uri);
            executorService.execute(new dc(dbVar2, uri, this, z, str));
        } catch (RuntimeException e) {
            b(new Status(8));
            throw e;
        }
    }
}
