package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzcjg;
import com.google.android.gms.internal.ads.zzdnj;
import com.google.android.gms.internal.ads.zzyh;
/* renamed from: c.d.b.d.g.a.zx */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/zx.class */
public final class C4306zx extends AdMetadataListener {

    /* renamed from: a */
    public final /* synthetic */ zzyh f16471a;

    /* renamed from: b */
    public final /* synthetic */ zzdnj f16472b;

    public C4306zx(zzdnj zzdnjVar, zzyh zzyhVar) {
        this.f16472b = zzdnjVar;
        this.f16471a = zzyhVar;
    }

    @Override // com.google.android.gms.ads.reward.AdMetadataListener
    /* renamed from: a */
    public final void mo13510a() {
        zzcjg zzcjgVar;
        zzcjgVar = this.f16472b.f27533f;
        if (zzcjgVar != null) {
            try {
                this.f16471a.mo11119O();
            } catch (RemoteException e) {
                zzbbq.m15851d("#007 Could not call remote method.", e);
            }
        }
    }
}
