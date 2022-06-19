package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C12045o;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.android.gms.wearable.internal.t */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/t.class */
final class C14347t extends AbstractC14327do<Status> {

    /* renamed from: a */
    private final /* synthetic */ Uri f52315a;

    /* renamed from: b */
    private final /* synthetic */ boolean f52316b;

    /* renamed from: g */
    private final /* synthetic */ zzay f52317g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14347t(zzay zzayVar, AbstractC11826g abstractC11826g, Uri uri, boolean z) {
        super(abstractC11826g);
        this.f52317g = zzayVar;
        this.f52315a = uri;
        this.f52316b = z;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final /* synthetic */ AbstractC11925m mo11354a(Status status) {
        return status;
    }

    @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11893a
    /* renamed from: a */
    public final /* synthetic */ void mo11353a(C14314db c14314db) throws RemoteException {
        String str;
        C14314db c14314db2 = c14314db;
        str = this.f52317g.zzce;
        Uri uri = this.f52315a;
        boolean z = this.f52316b;
        try {
            ExecutorService executorService = c14314db2.f52250a;
            C12045o.m19162a(this);
            C12045o.m19162a(str);
            C12045o.m19162a(uri);
            executorService.execute(new RunnableC14315dc(c14314db2, uri, this, z, str));
        } catch (RuntimeException e) {
            mo11400b(new Status(8));
            throw e;
        }
    }
}
