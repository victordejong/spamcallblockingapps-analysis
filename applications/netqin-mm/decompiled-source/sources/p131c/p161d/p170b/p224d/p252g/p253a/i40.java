package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeam;
import com.google.android.gms.internal.ads.zzeao;
import com.google.android.gms.internal.ads.zzeaq;
import com.google.android.gms.internal.ads.zzefv;
import com.google.android.gms.internal.ads.zzegl;
import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* renamed from: c.d.b.d.g.a.i40 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/i40.class */
public class i40 implements zzeaq<zzeam> {

    /* renamed from: c.d.b.d.g.a.i40$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/i40$a.class */
    public static final class C3644a implements zzeam {

        /* renamed from: a */
        public final zzeao<zzeam> f13490a;

        /* renamed from: b */
        public final byte[] f13491b;

        public C3644a(zzeao<zzeam> zzeaoVar) {
            this.f13491b = new byte[]{0};
            this.f13490a = zzeaoVar;
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [byte[], byte[][]] */
        /* JADX WARN: Type inference failed for: r0v9, types: [byte[], byte[][]] */
        /* JADX WARN: Type inference failed for: r4v2, types: [byte[], byte[][]] */
        @Override // com.google.android.gms.internal.ads.zzeam
        /* renamed from: a */
        public final byte[] mo12552a(byte[] bArr) throws GeneralSecurityException {
            return this.f13490a.m12932b().m12938c().equals(zzefv.LEGACY) ? zzegl.m12575a(new byte[]{this.f13490a.m12932b().m12937d(), this.f13490a.m12932b().m12940a().mo12552a(zzegl.m12575a(new byte[]{bArr, this.f13491b}))}) : zzegl.m12575a(new byte[]{this.f13490a.m12932b().m12937d(), this.f13490a.m12932b().m12940a().mo12552a(bArr)});
        }
    }

    static {
        Logger.getLogger(i40.class.getName());
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    /* renamed from: a */
    public final Class<zzeam> mo12904a() {
        return zzeam.class;
    }

    @Override // com.google.android.gms.internal.ads.zzeaq
    /* renamed from: a */
    public final /* synthetic */ zzeam mo12903a(zzeao<zzeam> zzeaoVar) throws GeneralSecurityException {
        return new C3644a(zzeaoVar);
    }
}
