package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejv.class */
public final class ejv extends ejy<ekp> {

    /* renamed from: a */
    private final /* synthetic */ Context f49129a;

    /* renamed from: b */
    private final /* synthetic */ String f49130b;

    /* renamed from: c */
    private final /* synthetic */ AbstractC12746mm f49131c;

    /* renamed from: d */
    private final /* synthetic */ ejj f49132d;

    public ejv(ejj ejjVar, Context context, String str, AbstractC12746mm abstractC12746mm) {
        this.f49132d = ejjVar;
        this.f49129a = context;
        this.f49130b = str;
        this.f49131c = abstractC12746mm;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    protected final /* synthetic */ ekp mo14839a() {
        ejj.m14857a(this.f49129a, "native_ad");
        return new BinderC12544f();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ ekp mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zza(BinderC12129d.m18979a(this.f49129a), this.f49130b, this.f49131c, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: b */
    public final /* synthetic */ ekp mo14837b() throws RemoteException {
        eiw eiwVar;
        eiwVar = this.f49132d.f49089b;
        return eiwVar.m14866a(this.f49129a, this.f49130b, this.f49131c);
    }
}
