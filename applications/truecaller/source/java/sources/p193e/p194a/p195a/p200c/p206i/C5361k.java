package p193e.p194a.p195a.p200c.p206i;

import com.truecaller.C2752R;
import com.truecaller.calling.dialer.call_log.data.HistoryEventsScope;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.flashsdk.models.FlashContact;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p195a.p200c.AbstractC5484l5;
import p193e.p194a.p195a.p200c.p206i.AbstractC5352d;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.c.i.k */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i/k.class */
public final class C5361k extends AbstractC20576b<AbstractC5363l> implements AbstractC5360j, AbstractC5352d.AbstractC5353a {

    /* renamed from: b */
    public final Participant f18323b;

    /* renamed from: c */
    public final long f18324c;

    /* renamed from: d */
    public final long f18325d;

    /* renamed from: e */
    public final boolean f18326e;

    /* renamed from: f */
    public final boolean f18327f;

    /* renamed from: g */
    public final FlashContact f18328g;

    /* renamed from: h */
    public final AbstractC5352d f18329h;

    /* renamed from: i */
    public final AbstractC19854f<AbstractC17348c> f18330i;

    /* renamed from: j */
    public final AbstractC19870l f18331j;

    /* renamed from: k */
    public final AbstractC11476s1 f18332k;

    /* renamed from: l */
    public final AbstractC5484l5 f18333l;

    /* renamed from: m */
    public final AbstractC19223c0 f18334m;

    /* renamed from: e.a.a.c.i.k$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i/k$a.class */
    public static final class C5362a<R> implements AbstractC19851d0<AbstractC17373b> {
        public C5362a() {
            C5361k.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(AbstractC17373b abstractC17373b) {
            AbstractC17373b abstractC17373b2 = abstractC17373b;
            C5361k c5361k = C5361k.this;
            AbstractC5363l abstractC5363l = (AbstractC5363l) c5361k.f57683a;
            if (abstractC5363l != null) {
                c5361k.f18329h.mo33268c(abstractC17373b2);
                c5361k.f18329h.mo33270a(c5361k);
                abstractC5363l.mo33256o0(c5361k.f18333l.mo33017z(new b(c5361k.f18324c)));
                if (c5361k.f18327f) {
                    String mo13759k = c5361k.f18334m.mo13759k(C2752R.plurals.ConversationFlashHistoryCount, c5361k.f18329h.mo33269b(), Integer.valueOf(c5361k.f18329h.mo33269b()));
                    l.d(mo13759k, "resourceProvider.getQuan…nt(), dataSource.count())");
                    abstractC5363l.mo33260Fa(mo13759k);
                } else {
                    String mo13759k2 = c5361k.f18334m.mo13759k(C2752R.plurals.ConversationCallsHistoryCount, c5361k.f18329h.mo33269b(), Integer.valueOf(c5361k.f18329h.mo33269b()));
                    l.d(mo13759k2, "resourceProvider.getQuan…nt(), dataSource.count())");
                    abstractC5363l.mo33260Fa(mo13759k2);
                }
                abstractC5363l.mo33258Ve();
                if (c5361k.f18329h.mo33269b() != 0) {
                    return;
                }
                abstractC5363l.mo33255s();
            }
        }
    }

    @Inject
    public C5361k(@Named("Participant") Participant participant, @Named("MessageStartDate") long j, @Named("MessageEndDate") long j2, @Named("VoipCapable") boolean z, @Named("IsFlash") boolean z2, @Named("FlashContact") FlashContact flashContact, AbstractC5352d abstractC5352d, AbstractC19854f<AbstractC17348c> abstractC19854f, AbstractC19870l abstractC19870l, AbstractC11476s1 abstractC11476s1, AbstractC5484l5 abstractC5484l5, AbstractC19223c0 abstractC19223c0) {
        l.e(participant, "participant");
        l.e(abstractC5352d, "dataSource");
        l.e(abstractC19854f, "callHistoryManager");
        l.e(abstractC19870l, "actorsThreads");
        l.e(abstractC11476s1, "voipUtil");
        l.e(abstractC5484l5, "conversationResourceProvider");
        l.e(abstractC19223c0, "resourceProvider");
        this.f18323b = participant;
        this.f18324c = j;
        this.f18325d = j2;
        this.f18326e = z;
        this.f18327f = z2;
        this.f18328g = flashContact;
        this.f18329h = abstractC5352d;
        this.f18330i = abstractC19854f;
        this.f18331j = abstractC19870l;
        this.f18332k = abstractC11476s1;
        this.f18333l = abstractC5484l5;
        this.f18334m = abstractC19223c0;
    }

    /* renamed from: Hj */
    public final void m33265Hj() {
        String str;
        Participant participant = this.f18323b;
        if (participant.f11569b != 5) {
            str = participant.f11572e;
            l.d(str, "participant.normalizedAddress");
        } else {
            str = "";
        }
        this.f18330i.mo11854a().mo16237k(str, this.f18324c, this.f18325d, this.f18327f ? HistoryEventsScope.ONLY_FLASH_EVENTS : HistoryEventsScope.ONLY_CALL_EVENTS).mo11830e(this.f18331j.mo11845d(), new C5362a());
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5360j
    /* renamed from: O6 */
    public void mo33264O6() {
        AbstractC5363l abstractC5363l;
        FlashContact flashContact = this.f18328g;
        if (flashContact == null || (abstractC5363l = (AbstractC5363l) this.f57683a) == null) {
            return;
        }
        abstractC5363l.mo33259K1(flashContact);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.a.c.i.l] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC5363l abstractC5363l) {
        AbstractC5363l abstractC5363l2 = abstractC5363l;
        l.e(abstractC5363l2, "presenterView");
        this.f57683a = abstractC5363l2;
        abstractC5363l2.mo33257Xb(this.f18323b.f11569b != 5);
        abstractC5363l2.mo33254ug(this.f18326e);
        abstractC5363l2.mo33253zv(this.f18328g != null);
        m33265Hj();
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        this.f18329h.mo33267n0();
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5360j
    /* renamed from: i6 */
    public void mo33263i6() {
        AbstractC5363l abstractC5363l = (AbstractC5363l) this.f57683a;
        if (abstractC5363l != null) {
            String str = this.f18323b.f11572e;
            l.d(str, "participant.normalizedAddress");
            abstractC5363l.mo33261Co(str);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5352d.AbstractC5353a
    public void onDataChanged() {
        m33265Hj();
    }

    @Override // p193e.p194a.p195a.p200c.p206i.AbstractC5360j
    /* renamed from: zh */
    public void mo33262zh() {
        AbstractC11476s1 abstractC11476s1 = this.f18332k;
        String str = this.f18323b.f11572e;
        l.d(str, "participant.normalizedAddress");
        abstractC11476s1.mo24623a(str, "conversation");
    }
}
