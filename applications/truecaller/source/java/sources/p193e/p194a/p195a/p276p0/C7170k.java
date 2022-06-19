package p193e.p194a.p195a.p276p0;

import android.content.ContentResolver;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.messaging.data.types.Message;
import java.util.Date;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.p235g1.AbstractC6254b;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p524b.AbstractC9693l;
import p193e.p194a.p437c.p548h.p551m.C10266c;
import p193e.p194a.p437c.p552i.p555c.AbstractC10313c;
import p193e.p194a.p437c.p552i.p561i.AbstractC10357a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10549f;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.p0.k */
/* loaded from: classes10-dex2jar.jar:e/a/a/p0/k.class */
public final class C7170k {

    /* renamed from: a */
    public final AbstractC9691j f23046a;

    /* renamed from: b */
    public final ContentResolver f23047b;

    /* renamed from: c */
    public final AbstractC7158b f23048c;

    /* renamed from: d */
    public final AbstractC6694m f23049d;

    /* renamed from: e */
    public final AbstractC10357a f23050e;

    /* renamed from: f */
    public final AbstractC10313c f23051f;

    /* renamed from: g */
    public final AbstractC6254b f23052g;

    /* renamed from: h */
    public final AbstractC9693l f23053h;

    /* renamed from: i */
    public final AbstractC19462a f23054i;

    /* renamed from: j */
    public final f f23055j;

    @Inject
    public C7170k(AbstractC9691j abstractC9691j, ContentResolver contentResolver, AbstractC7158b abstractC7158b, AbstractC6694m abstractC6694m, AbstractC10357a abstractC10357a, AbstractC10313c abstractC10313c, AbstractC6254b abstractC6254b, AbstractC9693l abstractC9693l, AbstractC19462a abstractC19462a, @Named("CPU") f fVar) {
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC7158b, "categorizerManager");
        l.e(abstractC6694m, "participantCache");
        l.e(abstractC10357a, "parseManager");
        l.e(abstractC10313c, "transactionManager");
        l.e(abstractC6254b, "translateManager");
        l.e(abstractC9693l, "insightsVersionProvider");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(fVar, "coroutineContext");
        this.f23046a = abstractC9691j;
        this.f23047b = contentResolver;
        this.f23048c = abstractC7158b;
        this.f23049d = abstractC6694m;
        this.f23050e = abstractC10357a;
        this.f23051f = abstractC10313c;
        this.f23052g = abstractC6254b;
        this.f23053h = abstractC9693l;
        this.f23054i = abstractC19462a;
        this.f23055j = fVar;
    }

    /* renamed from: a */
    public final AbstractC10549f m30026a(long j, String str, long j2, long j3, Message message, int i, String str2, boolean z) {
        AbstractC10549f.C10550a c10550a = AbstractC10549f.C10550a.f31475a;
        if (this.f23046a.mo27256g()) {
            AbstractC10357a abstractC10357a = this.f23050e;
            String m35025a = message.m35025a();
            l.d(m35025a, "message.buildMessageText()");
            c10550a = abstractC10357a.mo26289z(new C10266c(j, str, m35025a, new Date(j3), j2, i, null, 0, null, z, str2, 448));
        }
        return c10550a;
    }
}
