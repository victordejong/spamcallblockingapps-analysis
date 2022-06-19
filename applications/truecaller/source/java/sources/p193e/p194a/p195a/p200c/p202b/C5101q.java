package p193e.p194a.p195a.p200c.p202b;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.a.c.b.q */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/b/q.class */
public final class C5101q extends AbstractC20576b<AbstractC5099o> implements AbstractC5098n {

    /* renamed from: b */
    public final List<Participant> f17473b = new ArrayList();

    /* renamed from: c */
    public final List<Participant> f17474c = new ArrayList();

    /* renamed from: d */
    public final AbstractC19868j f17475d;

    /* renamed from: e */
    public final Conversation f17476e;

    /* renamed from: f */
    public final AbstractC19854f<AbstractC6485m> f17477f;

    @Inject
    public C5101q(@Named("ui_thread") AbstractC19868j abstractC19868j, @Named("conversation") Conversation conversation, AbstractC19854f<AbstractC6485m> abstractC19854f) {
        l.e(abstractC19868j, "uiThread");
        l.e(conversation, "conversation");
        l.e(abstractC19854f, "imGroupManager");
        this.f17475d = abstractC19868j;
        this.f17476e = conversation;
        this.f17477f = abstractC19854f;
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5098n
    /* renamed from: U8 */
    public void mo33831U8(String str) {
        l.e(str, "text");
        this.f17474c.clear();
        if (str.length() == 0) {
            this.f17474c.addAll(this.f17473b);
        } else {
            for (Participant participant : this.f17473b) {
                String str2 = participant.f11579l;
                if (str2 != null) {
                    Locale locale = Locale.ROOT;
                    l.d(locale, "Locale.ROOT");
                    String lowerCase = str2.toLowerCase(locale);
                    l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    l.d(locale, "Locale.ROOT");
                    String lowerCase2 = str.toLowerCase(locale);
                    l.d(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
                    if (v.B(lowerCase, lowerCase2, false, 2)) {
                        this.f17474c.add(participant);
                    }
                }
            }
        }
        AbstractC5099o abstractC5099o = (AbstractC5099o) this.f57683a;
        if (abstractC5099o != null) {
            abstractC5099o.mo33834gh(this.f17474c);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.a.c.b.o, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC5099o abstractC5099o) {
        AbstractC5099o abstractC5099o2 = abstractC5099o;
        l.e(abstractC5099o2, "presenterView");
        this.f57683a = abstractC5099o2;
        ImGroupInfo imGroupInfo = this.f17476e.f13224z;
        if (imGroupInfo != null) {
            this.f17477f.mo11854a().mo30898b(imGroupInfo.f13319a).mo11830e(this.f17475d, new C5100p(this));
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5098n
    /* renamed from: m */
    public void mo33830m() {
        AbstractC5099o abstractC5099o = (AbstractC5099o) this.f57683a;
        if (abstractC5099o != null) {
            abstractC5099o.mo33832s();
        }
    }

    @Override // p193e.p194a.p195a.p200c.p202b.AbstractC5098n
    /* renamed from: we */
    public void mo33829we(int i) {
        Participant participant = this.f17474c.get(i);
        AbstractC5099o abstractC5099o = (AbstractC5099o) this.f57683a;
        if (abstractC5099o != null) {
            abstractC5099o.mo33833l5(participant);
            abstractC5099o.mo33832s();
        }
    }
}
