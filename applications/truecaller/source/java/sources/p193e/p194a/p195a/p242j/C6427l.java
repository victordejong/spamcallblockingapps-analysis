package p193e.p194a.p195a.p242j;

import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.VideoEntity;
import com.truecaller.messaging.mediaviewer.MediaPosition;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.AbstractC5655p5;
import p193e.p194a.p195a.p200c.C5678q5;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6147o;
import p193e.p194a.p195a.p231g.p234l0.C6227c;
import p193e.p194a.p195a.p241i1.AbstractC6397d;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p269n.AbstractC7004h;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.j.l */
/* loaded from: classes7-dex2jar.jar:e/a/a/j/l.class */
public final class C6427l extends AbstractC20574a<AbstractC6424i> implements AbstractC6423h {

    /* renamed from: e */
    public float f21362e;

    /* renamed from: f */
    public final int f21363f;

    /* renamed from: h */
    public boolean f21365h;

    /* renamed from: i */
    public long f21366i;

    /* renamed from: j */
    public long f21367j;

    /* renamed from: k */
    public final long f21368k;

    /* renamed from: l */
    public AbstractC6147o f21369l;

    /* renamed from: n */
    public final f f21371n;

    /* renamed from: o */
    public final boolean f21372o;

    /* renamed from: p */
    public BinaryEntity f21373p;

    /* renamed from: q */
    public Message f21374q;

    /* renamed from: r */
    public final Conversation f21375r;

    /* renamed from: s */
    public final AbstractC18951b0 f21376s;

    /* renamed from: t */
    public final AbstractC19223c0 f21377t;

    /* renamed from: u */
    public final C6422g f21378u;

    /* renamed from: v */
    public final AbstractC19222c f21379v;

    /* renamed from: w */
    public final AbstractC7004h f21380w;

    /* renamed from: x */
    public final AbstractC5655p5 f21381x;

    /* renamed from: y */
    public final AbstractC6397d f21382y;

    /* renamed from: z */
    public final AbstractC6392i0 f21383z;

    /* renamed from: d */
    public boolean f21361d = true;

    /* renamed from: g */
    public boolean f21364g = true;

    /* renamed from: m */
    public final Map<MediaPosition, C6227c> f21370m = new LinkedHashMap();

    @e(c = "com.truecaller.messaging.mediaviewer.MediaViewerPresenter$setMedia$1", f = "MediaViewerPresenter.kt", l = {410}, m = "invokeSuspend")
    /* renamed from: e.a.a.j.l$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/j/l$a.class */
    public static final class C6428a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f21384e;

        /* renamed from: g */
        public final /* synthetic */ C6227c f21386g;

        /* renamed from: h */
        public final /* synthetic */ MediaPosition f21387h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6428a(C6227c c6227c, MediaPosition mediaPosition, d dVar) {
            super(2, dVar);
            C6427l.this = r5;
            this.f21386g = c6227c;
            this.f21387h = mediaPosition;
        }

        /* renamed from: i */
        public final d<s> m31247i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6428a(this.f21386g, this.f21387h, dVar);
        }

        /* renamed from: k */
        public final Object m31246k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C6428a(this.f21386g, this.f21387h, dVar).m31245s(s.a);
        }

        /* renamed from: s */
        public final Object m31245s(Object obj) {
            int i;
            s sVar = s.a;
            a aVar = a.a;
            int i2 = this.f21384e;
            if (i2 == 0) {
                C25225a.m3932a3(obj);
                AbstractC5655p5 abstractC5655p5 = C6427l.this.f21381x;
                Uri uri = this.f21386g.f20878h;
                this.f21384e = 1;
                Object m32790a = ((C5678q5) abstractC5655p5).m32790a(uri, this);
                obj = m32790a;
                if (m32790a == aVar) {
                    return aVar;
                }
            } else if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            boolean booleanValue = ((Boolean) obj).booleanValue();
            if (!l.a(C6427l.this.f21370m.get(this.f21387h), this.f21386g)) {
                return sVar;
            }
            if (!booleanValue) {
                AbstractC6424i abstractC6424i = (AbstractC6424i) C6427l.this.f57683a;
                if (abstractC6424i != null) {
                    abstractC6424i.mo31282Gp(this.f21387h);
                }
            } else {
                String str = this.f21386g.f20877g;
                l.e(str, "contentType");
                if (r.w(str, "image/", true)) {
                    AbstractC6424i abstractC6424i2 = (AbstractC6424i) C6427l.this.f57683a;
                    if (abstractC6424i2 != null) {
                        MediaPosition mediaPosition = this.f21387h;
                        C6227c c6227c = this.f21386g;
                        abstractC6424i2.mo31277Nd(mediaPosition, c6227c.f20878h, c6227c.f20876f);
                    }
                } else {
                    String str2 = this.f21386g.f20877g;
                    l.e(str2, "contentType");
                    if (r.w(str2, "video/", true)) {
                        AbstractC6424i abstractC6424i3 = (AbstractC6424i) C6427l.this.f57683a;
                        if (abstractC6424i3 != null) {
                            MediaPosition mediaPosition2 = this.f21387h;
                            C6227c c6227c2 = this.f21386g;
                            Uri uri2 = c6227c2.f20878h;
                            int i3 = c6227c2.f20880j;
                            abstractC6424i3.mo31280Ih(mediaPosition2, uri2, (i3 < 1 || (i = c6227c2.f20881k) < 1) ? 1.0f : i3 / i, c6227c2.f20876f);
                        }
                        C6427l.this.m31248pc(false, false);
                    }
                }
            }
            return sVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6427l(@Named("UI") f fVar, @Named("is_bubble_intent") boolean z, BinaryEntity binaryEntity, Message message, Conversation conversation, AbstractC18951b0 abstractC18951b0, AbstractC19223c0 abstractC19223c0, C6422g c6422g, AbstractC19222c abstractC19222c, AbstractC7004h abstractC7004h, AbstractC5655p5 abstractC5655p5, AbstractC6397d abstractC6397d, AbstractC6392i0 abstractC6392i0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(binaryEntity, "entity");
        l.e(message, "message");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(c6422g, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19222c, "clock");
        l.e(abstractC7004h, "messageAttachmentFetcher");
        l.e(abstractC5655p5, "conversationUtil");
        l.e(abstractC6397d, "messagingActionHelper");
        l.e(abstractC6392i0, "settings");
        this.f21371n = fVar;
        this.f21372o = z;
        this.f21373p = binaryEntity;
        this.f21374q = message;
        this.f21375r = conversation;
        this.f21376s = abstractC18951b0;
        this.f21377t = abstractC19223c0;
        this.f21378u = c6422g;
        this.f21379v = abstractC19222c;
        this.f21380w = abstractC7004h;
        this.f21381x = abstractC5655p5;
        this.f21382y = abstractC6397d;
        this.f21383z = abstractC6392i0;
        this.f21363f = abstractC19223c0.mo13770H(C2752R.dimen.media_viewer_dismiss_distance_threshold);
        this.f21368k = this.f21373p.f13306a;
    }

    /* renamed from: Ij */
    public final void m31252Ij(C6227c c6227c) {
        this.f21373p = C10480a.m26024R2(c6227c);
        this.f21374q = C10480a.m25962f3(c6227c, this.f21374q.f13381b);
        m31249Lj();
    }

    /* renamed from: Jj */
    public final void m31251Jj(MediaPosition mediaPosition, C6227c c6227c) {
        this.f21370m.put(mediaPosition, c6227c);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C6428a(c6227c, mediaPosition, null), 3, (Object) null);
    }

    /* renamed from: Kj */
    public final void m31250Kj(boolean z) {
        AbstractC6424i abstractC6424i = (AbstractC6424i) this.f57683a;
        if (abstractC6424i != null) {
            if (z) {
                abstractC6424i.mo31283Gj();
            } else {
                abstractC6424i.mo31260yf();
            }
            abstractC6424i.mo31269l9(z);
            if (this.f21373p.mo34892w()) {
                abstractC6424i.mo31265r2(z);
            }
            this.f21361d = z;
        }
    }

    /* renamed from: Lj */
    public final void m31249Lj() {
        String str;
        AbstractC6424i abstractC6424i = (AbstractC6424i) this.f57683a;
        if (abstractC6424i != null) {
            if (C10480a.m25934l1(this.f21374q)) {
                String mo13768b = this.f21377t.mo13768b(C2752R.string.MessageDraft, new Object[0]);
                l.d(mo13768b, "resourceProvider.getString(R.string.MessageDraft)");
                abstractC6424i.setTitle(mo13768b);
            } else {
                boolean m25874x1 = C10480a.m25874x1(this.f21374q);
                if (m25874x1) {
                    str = this.f21377t.mo13768b(C2752R.string.ParticipantSelfName, new Object[0]);
                } else if (m25874x1) {
                    throw new s1.i();
                } else {
                    Participant participant = this.f21374q.f13382c;
                    l.d(participant, "message.participant");
                    str = C6405h.m31301c(participant);
                }
                l.d(str, "when (message.isOutgoing…yName()\n                }");
                abstractC6424i.setTitle(str);
                AbstractC18951b0 abstractC18951b0 = this.f21376s;
                b bVar = this.f21374q.f13384e;
                l.d(bVar, "message.date");
                abstractC6424i.mo31264t4(abstractC18951b0.mo14281n(((w3.b.a.e0.e) bVar).a));
                String m35025a = this.f21374q.m35025a();
                l.d(m35025a, "message.buildMessageText()");
                abstractC6424i.mo31273cl(m35025a.length() > 0, m35025a, C10480a.m25865z1(this.f21374q));
            }
            abstractC6424i.mo31278KA(this.f21373p.mo34892w());
            abstractC6424i.mo31265r2(this.f21361d && this.f21373p.mo34892w());
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.a.j.i] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC6424i abstractC6424i) {
        AbstractC6424i abstractC6424i2 = abstractC6424i;
        l.e(abstractC6424i2, "presenterView");
        this.f57683a = abstractC6424i2;
        m31249Lj();
        if (!this.f21373p.mo34895l()) {
            if (!(this.f21373p instanceof VideoEntity)) {
                return;
            }
            m31250Kj(false);
            return;
        }
        m31250Kj(true);
        MediaPosition mediaPosition = MediaPosition.CURRENT;
        BinaryEntity binaryEntity = this.f21373p;
        abstractC6424i2.mo31277Nd(mediaPosition, binaryEntity.f13173i, binaryEntity.f13306a);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC6147o abstractC6147o = this.f21369l;
        if (abstractC6147o != null) {
            abstractC6147o.close();
        }
        this.f21369l = null;
        super.mo9806c();
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6430n
    /* renamed from: fa */
    public void mo31243fa() {
        AbstractC6147o abstractC6147o = this.f21369l;
        if (abstractC6147o == null || !abstractC6147o.moveToNext()) {
            return;
        }
        m31252Ij(abstractC6147o.mo31742f2());
        if (abstractC6147o.moveToNext()) {
            m31251Jj(MediaPosition.PREVIOUS, abstractC6147o.mo31742f2());
        }
        abstractC6147o.moveToPrevious();
    }

    public final void finish() {
        AbstractC6424i abstractC6424i = (AbstractC6424i) this.f57683a;
        if (abstractC6424i != null) {
            abstractC6424i.mo31274Y4(this.f21373p.f13306a == this.f21368k);
        }
    }

    /* renamed from: pc */
    public void m31248pc(boolean z, boolean z2) {
        this.f21364g = z;
        if (z) {
            AbstractC6424i abstractC6424i = (AbstractC6424i) this.f57683a;
            if (abstractC6424i != null) {
                abstractC6424i.mo31259z2(C2752R.C2753drawable.ic_media_player_pause);
            }
        } else {
            AbstractC6424i abstractC6424i2 = (AbstractC6424i) this.f57683a;
            if (abstractC6424i2 != null) {
                abstractC6424i2.mo31259z2(C2752R.C2753drawable.ic_media_player_play);
            }
        }
        if (!z || !z2) {
            return;
        }
        AbstractC6424i abstractC6424i3 = (AbstractC6424i) this.f57683a;
        if (abstractC6424i3 != null) {
            abstractC6424i3.mo31266qa();
        }
        AbstractC6424i abstractC6424i4 = (AbstractC6424i) this.f57683a;
        if (abstractC6424i4 != null) {
            abstractC6424i4.mo31276Ne(0L);
        }
        m31250Kj(true);
    }

    @Override // p193e.p194a.p195a.p242j.AbstractC6430n
    /* renamed from: pf */
    public void mo31242pf() {
        AbstractC6147o abstractC6147o = this.f21369l;
        if (abstractC6147o == null || !abstractC6147o.moveToPrevious()) {
            return;
        }
        m31252Ij(abstractC6147o.mo31742f2());
        if (abstractC6147o.moveToPrevious()) {
            m31251Jj(MediaPosition.NEXT, abstractC6147o.mo31742f2());
        }
        abstractC6147o.moveToNext();
    }
}
