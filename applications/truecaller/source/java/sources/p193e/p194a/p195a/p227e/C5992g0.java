package p193e.p194a.p195a.p227e;

import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.inboxcleanup.Mode;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.AbstractC6392i0;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.e.g0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/g0.class */
public final class C5992g0 extends AbstractC20574a<AbstractC5990f0> implements AbstractC5986e0 {

    /* renamed from: d */
    public ArrayList<Message> f19948d = new ArrayList<>();

    /* renamed from: e */
    public final f f19949e;

    /* renamed from: f */
    public final AbstractC6392i0 f19950f;

    /* renamed from: g */
    public final AbstractC19223c0 f19951g;

    /* renamed from: h */
    public final AbstractC6005m f19952h;

    @e(c = "com.truecaller.messaging.inboxcleanup.InboxCleanupPreviewPresenter$loadMessages$1", f = "InboxCleanupPreviewPresenter.kt", l = {41, 43, 45}, m = "invokeSuspend")
    /* renamed from: e.a.a.e.g0$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/g0$a.class */
    public static final class C5993a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f19953e;

        /* renamed from: f */
        public int f19954f;

        /* renamed from: h */
        public final /* synthetic */ Mode f19956h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5993a(Mode mode, d dVar) {
            super(2, dVar);
            C5992g0.this = r5;
            this.f19956h = mode;
        }

        /* renamed from: i */
        public final d<s> m32087i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5993a(this.f19956h, dVar);
        }

        /* renamed from: k */
        public final Object m32086k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5993a(this.f19956h, dVar).m32085s(s.a);
        }

        /* renamed from: s */
        public final Object m32085s(Object obj) {
            ArrayList<Message> arrayList;
            List list;
            Object obj2;
            Object obj3;
            Object obj4;
            a aVar = a.a;
            int i = this.f19954f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                ArrayList<Message> arrayList2 = C5992g0.this.f19948d;
                int ordinal = this.f19956h.ordinal();
                if (ordinal == 0) {
                    AbstractC6005m abstractC6005m = C5992g0.this.f19952h;
                    b y = new b().y(C5992g0.this.f19950f.mo31151R1());
                    l.d(y, "DateTime.now().minusDays…s.manualCleanupOtpPeriod)");
                    long j = ((w3.b.a.e0.e) y).a;
                    this.f19953e = arrayList2;
                    this.f19954f = 1;
                    obj2 = abstractC6005m.mo32053d(j, this);
                    if (obj2 == aVar) {
                        return aVar;
                    }
                    arrayList = arrayList2;
                    list = (List) obj2;
                } else if (ordinal == 1) {
                    AbstractC6005m abstractC6005m2 = C5992g0.this.f19952h;
                    b y2 = new b().y(C5992g0.this.f19950f.mo31047k0());
                    l.d(y2, "DateTime.now().minusDays…CleanupPromotionalPeriod)");
                    long j2 = ((w3.b.a.e0.e) y2).a;
                    this.f19953e = arrayList2;
                    this.f19954f = 2;
                    obj3 = abstractC6005m2.mo32043n(j2, this);
                    if (obj3 == aVar) {
                        return aVar;
                    }
                    arrayList = arrayList2;
                    list = (List) obj3;
                } else if (ordinal != 2) {
                    throw new s1.i();
                } else {
                    AbstractC6005m abstractC6005m3 = C5992g0.this.f19952h;
                    b y3 = new b().y(C5992g0.this.f19950f.mo30971y());
                    l.d(y3, "DateTime.now().minusDays….manualCleanupSpamPeriod)");
                    long j3 = ((w3.b.a.e0.e) y3).a;
                    this.f19953e = arrayList2;
                    this.f19954f = 3;
                    obj4 = abstractC6005m3.mo32050g(j3, this);
                    if (obj4 == aVar) {
                        return aVar;
                    }
                    arrayList = arrayList2;
                    list = (List) obj4;
                }
            } else if (i == 1) {
                arrayList = (ArrayList) this.f19953e;
                C25225a.m3932a3(obj);
                obj2 = obj;
                list = (List) obj2;
            } else if (i == 2) {
                arrayList = (ArrayList) this.f19953e;
                C25225a.m3932a3(obj);
                obj3 = obj;
                list = (List) obj3;
            } else if (i != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                arrayList = (ArrayList) this.f19953e;
                C25225a.m3932a3(obj);
                obj4 = obj;
                list = (List) obj4;
            }
            arrayList.addAll(list);
            AbstractC5990f0 abstractC5990f0 = (AbstractC5990f0) C5992g0.this.f57683a;
            if (abstractC5990f0 != null) {
                abstractC5990f0.mo31939c0();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5992g0(@Named("UI") f fVar, AbstractC6392i0 abstractC6392i0, AbstractC19223c0 abstractC19223c0, AbstractC6005m abstractC6005m) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC6005m, "inboxCleaner");
        this.f19949e = fVar;
        this.f19950f = abstractC6392i0;
        this.f19951g = abstractC19223c0;
        this.f19952h = abstractC6005m;
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5981d0
    /* renamed from: j2 */
    public ArrayList<Message> mo32090j2() {
        return this.f19948d;
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5986e0
    /* renamed from: li */
    public void mo32089li(Mode mode) {
        l.e(mode, AnalyticsConstants.MODE);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5993a(mode, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5986e0
    /* renamed from: wc */
    public void mo32088wc(Mode mode) {
        String str;
        l.e(mode, AnalyticsConstants.MODE);
        int ordinal = mode.ordinal();
        if (ordinal == 0) {
            str = this.f19950f.mo31151R1() == -1 ? this.f19951g.mo13768b(C2752R.string.inbox_cleanup_preview_all_otp_title, new Object[0]) : this.f19951g.mo13768b(C2752R.string.inbox_cleanup_preview_otp_title, Integer.valueOf(this.f19950f.mo31151R1()));
            l.d(str, "if (messageSettings.manu…pOtpPeriod)\n            }");
        } else if (ordinal == 1) {
            str = this.f19951g.mo13768b(C2752R.string.inbox_cleanup_preview_promotional_title, Integer.valueOf(this.f19950f.mo31047k0()));
            l.d(str, "resourceProvider.getStri…CleanupPromotionalPeriod)");
        } else if (ordinal != 2) {
            throw new s1.i();
        } else {
            str = this.f19951g.mo13768b(C2752R.string.inbox_cleanup_preview_spam_title, Integer.valueOf(this.f19950f.mo30971y()));
            l.d(str, "resourceProvider.getStri….manualCleanupSpamPeriod)");
        }
        AbstractC5990f0 abstractC5990f0 = (AbstractC5990f0) this.f57683a;
        if (abstractC5990f0 != null) {
            abstractC5990f0.setTitle(str);
        }
    }
}
