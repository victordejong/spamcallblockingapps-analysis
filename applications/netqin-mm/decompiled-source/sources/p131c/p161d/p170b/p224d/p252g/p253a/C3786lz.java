package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdp;
import com.google.android.gms.internal.ads.zzdta;
import com.google.android.gms.internal.ads.zzdux;
import java.io.File;
import java.security.GeneralSecurityException;
/* renamed from: c.d.b.d.g.a.lz */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/lz.class */
public final class C3786lz implements zzdux {

    /* renamed from: a */
    public final /* synthetic */ zzdta f14006a;

    public C3786lz(zzdp zzdpVar, zzdta zzdtaVar) {
        this.f14006a = zzdtaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdux
    /* renamed from: a */
    public final boolean mo13135a(File file) {
        try {
            return this.f14006a.m13224a(file);
        } catch (GeneralSecurityException e) {
            return false;
        }
    }
}
