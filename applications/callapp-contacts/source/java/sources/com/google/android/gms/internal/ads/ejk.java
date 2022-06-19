package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.BinderC12129d;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejk.class */
public final class ejk extends ejy<AbstractC12967uq> {

    /* renamed from: a */
    private final /* synthetic */ Context f49096a;

    /* renamed from: b */
    private final /* synthetic */ String f49097b;

    /* renamed from: c */
    private final /* synthetic */ AbstractC12746mm f49098c;

    /* renamed from: d */
    private final /* synthetic */ ejj f49099d;

    public ejk(ejj ejjVar, Context context, String str, AbstractC12746mm abstractC12746mm) {
        this.f49099d = ejjVar;
        this.f49096a = context;
        this.f49097b = str;
        this.f49098c = abstractC12746mm;
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    protected final /* synthetic */ AbstractC12967uq mo14839a() {
        ejj.m14857a(this.f49096a, Reporting.AdFormat.REWARDED);
        return new BinderC12815p();
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: a */
    public final /* synthetic */ AbstractC12967uq mo14838a(elf elfVar) throws RemoteException {
        return elfVar.zzb(BinderC12129d.m18979a(this.f49096a), this.f49097b, this.f49098c, 204890000);
    }

    @Override // com.google.android.gms.internal.ads.ejy
    /* renamed from: b */
    public final /* synthetic */ AbstractC12967uq mo14837b() throws RemoteException {
        return C12984vg.m14085a(this.f49096a, this.f49097b, this.f49098c);
    }
}
