package p193e.p194a.p195a.p276p0;

import com.truecaller.insights.categorizer.CategorizerInputType;
import com.truecaller.messaging.data.types.Message;
import java.util.List;
import org.apache.avro.Schema;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17457b2;
import p193e.p194a.p1050l5.p1051a.C17463b4;
import p193e.p194a.p437c.p538g.AbstractC10105a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10549f;
import s1.i;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.a.p0.b */
/* loaded from: classes10-dex2jar.jar:e/a/a/p0/b.class */
public interface AbstractC7158b {

    /* renamed from: a */
    public static final /* synthetic */ int f22982a = 0;

    /* renamed from: e.a.a.p0.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/a/p0/b$a.class */
    public static final class C7159a {

        /* renamed from: a */
        public static final /* synthetic */ C7159a f22983a = new C7159a();

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public final C17457b2.C17459b m30050a(List<? extends C17463b4> list, AbstractC10105a abstractC10105a, AbstractC10549f abstractC10549f, boolean z, CategorizerInputType categorizerInputType) {
            CharSequence charSequence;
            l.e(list, "participantList");
            l.e(abstractC10105a, "category");
            l.e(abstractC10549f, "insightsParseResponse");
            l.e(categorizerInputType, "type");
            Schema schema = C17457b2.f48902l;
            C17457b2.C17459b c17459b = new C17457b2.C17459b(null);
            c17459b.validate(c17459b.fields()[2], list);
            c17459b.f48917a = list;
            c17459b.fieldSetFlags()[2] = true;
            if (abstractC10105a instanceof AbstractC10105a.C10107b) {
                charSequence = "Spam";
            } else if (!(abstractC10105a instanceof AbstractC10105a.C10106a)) {
                throw new i();
            } else {
                charSequence = "Other";
            }
            c17459b.validate(c17459b.fields()[3], charSequence);
            c17459b.f48918b = charSequence;
            c17459b.fieldSetFlags()[3] = true;
            c17459b.validate(c17459b.fields()[5], 20807);
            c17459b.f48920d = 20807;
            c17459b.fieldSetFlags()[5] = true;
            String mo25784a = abstractC10549f instanceof AbstractC10549f.C10551b ? ((AbstractC10549f.C10551b) abstractC10549f).f31477b.mo25784a() : "UNKNOWN";
            c17459b.validate(c17459b.fields()[4], mo25784a);
            c17459b.f48919c = mo25784a;
            c17459b.fieldSetFlags()[4] = true;
            c17459b.validate(c17459b.fields()[6], 10086);
            c17459b.f48921e = 10086;
            c17459b.fieldSetFlags()[6] = true;
            c17459b.m16021b(C25225a.m3938Z1(new k("MessageType", categorizerInputType.toString())));
            c17459b.validate(c17459b.fields()[7], Boolean.valueOf(z));
            c17459b.f48922f = z;
            c17459b.fieldSetFlags()[7] = true;
            return c17459b;
        }
    }

    /* renamed from: a */
    C7157a mo30049a(Message message, AbstractC10549f abstractC10549f);

    /* renamed from: b */
    C7157a mo30048b(Message message);

    /* renamed from: c */
    void mo30047c();
}
