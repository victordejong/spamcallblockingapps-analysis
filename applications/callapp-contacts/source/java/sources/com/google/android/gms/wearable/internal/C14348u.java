package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C12045o;
import java.util.concurrent.ExecutorService;
/* renamed from: com.google.android.gms.wearable.internal.u */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/u.class */
public final class C14348u extends AbstractC14327do<Status> {

    /* renamed from: a */
    private final /* synthetic */ Uri f52318a;

    /* renamed from: b */
    private final /* synthetic */ long f52319b;

    /* renamed from: g */
    private final /* synthetic */ long f52320g;

    /* renamed from: h */
    private final /* synthetic */ zzay f52321h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14348u(zzay zzayVar, AbstractC11826g abstractC11826g, Uri uri, long j, long j2) {
        super(abstractC11826g);
        this.f52321h = zzayVar;
        this.f52318a = uri;
        this.f52319b = j;
        this.f52320g = j2;
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
        str = this.f52321h.zzce;
        Uri uri = this.f52318a;
        long j = this.f52319b;
        long j2 = this.f52320g;
        try {
            ExecutorService executorService = c14314db2.f52250a;
            C12045o.m19162a(this);
            C12045o.m19162a(str);
            C12045o.m19162a(uri);
            C12045o.m19156a(j >= 0, "startOffset is negative: %s", Long.valueOf(j));
            C12045o.m19156a(j2 >= -1, "invalid length: %s", Long.valueOf(j2));
            executorService.execute(new RunnableC14316dd(c14314db2, uri, this, str, j, j2));
        } catch (RuntimeException e) {
            mo11400b(new Status(8));
            throw e;
        }
    }
}
