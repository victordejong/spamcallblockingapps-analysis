package com.truecaller.voip.p189db;

import android.content.Context;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.p1752f0.AbstractC25649a;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p619d.p655t.AbstractC11796a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b!\u0018�� \u00072\u00020\u0001:\u0001\bB\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/truecaller/voip/db/VoipDatabase;", "Ln3/c0/q;", "Le/a/d/t/a;", "a", "()Le/a/d/t/a;", "<init>", "()V", AbstractC2405c.f7629a, C22021b.f61237c, "voip_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.voip.db.VoipDatabase */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/db/VoipDatabase.class */
public abstract class VoipDatabase extends AbstractC25677q {

    /* renamed from: a */
    public static VoipDatabase f16347a;

    /* renamed from: c */
    public static final C4811b f16349c = new C4811b(null);

    /* renamed from: b */
    public static final AbstractC25649a f16348b = new C4810a(1, 2);

    /* renamed from: com.truecaller.voip.db.VoipDatabase$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/db/VoipDatabase$a.class */
    public static final class C4810a extends AbstractC25649a {
        public C4810a(int i, int i2) {
            super(i, i2);
        }

        @Override // p1727n3.p1751c0.p1752f0.AbstractC25649a
        /* renamed from: a */
        public void mo1433a(AbstractC26147b abstractC26147b) {
            l.e(abstractC26147b, "database");
            abstractC26147b.mo2668S0("CREATE TABLE IF NOT EXISTS `voip_id_cache` (`_id` INTEGER PRIMARY KEY AUTOINCREMENT, `voip_id` TEXT NOT NULL, `number` TEXT NOT NULL, `expiry_epoch_seconds` INTEGER NOT NULL)");
            abstractC26147b.mo2668S0("CREATE UNIQUE INDEX `index_voip_id_cache_voip_id` ON `voip_id_cache` (`voip_id`)");
            abstractC26147b.mo2668S0("CREATE UNIQUE INDEX `index_voip_id_cache_number` ON `voip_id_cache` (`number`)");
        }
    }

    /* renamed from: com.truecaller.voip.db.VoipDatabase$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/voip/db/VoipDatabase$b.class */
    public static final class C4811b {
        public C4811b(f fVar) {
        }

        /* renamed from: a */
        public final VoipDatabase m34335a(Context context) {
            VoipDatabase voipDatabase;
            synchronized (this) {
                l.e(context, AnalyticsConstants.CONTEXT);
                if (VoipDatabase.f16347a == null) {
                    AbstractC25677q.C25678a m43274R = MediaSessionCompat.m43274R(context.getApplicationContext(), VoipDatabase.class, "voipDb");
                    m43274R.m3065b(VoipDatabase.f16348b);
                    m43274R.m3063d();
                    VoipDatabase.f16347a = (VoipDatabase) m43274R.m3064c();
                }
                voipDatabase = VoipDatabase.f16347a;
            }
            return voipDatabase;
        }
    }

    /* renamed from: a */
    public abstract AbstractC11796a mo34334a();
}
