package p193e.p194a.p195a.p276p0;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.insights.categorizer.CategorizerInputType;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17457b2;
import p193e.p194a.p1050l5.p1051a.C17463b4;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p195a.p276p0.AbstractC7158b;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p538g.AbstractC10105a;
import p193e.p194a.p437c.p538g.AbstractC10159f;
import p193e.p194a.p437c.p548h.p551m.C10266c;
import p193e.p194a.p437c.p552i.p561i.AbstractC10357a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10549f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a.p0.c */
/* loaded from: classes10-dex2jar.jar:e/a/a/p0/c.class */
public final class C7160c implements AbstractC7158b {

    /* renamed from: b */
    public final C20592g f22984b;

    /* renamed from: c */
    public final AbstractC19462a f22985c;

    /* renamed from: d */
    public final AbstractC10357a f22986d;

    /* renamed from: e */
    public final AbstractC6392i0 f22987e;

    /* renamed from: f */
    public final a<AbstractC10159f> f22988f;

    /* renamed from: g */
    public final ContentResolver f22989g;

    /* renamed from: h */
    public final AbstractC6248w f22990h;

    @e(c = "com.truecaller.messaging.categorizer.CategorizerManagerImpl$migrateOldPromotionalMessages$1", f = "CategorizerManager.kt", l = {96}, m = "invokeSuspend")
    /* renamed from: e.a.a.p0.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/a/p0/c$a.class */
    public static final class C7161a extends i implements p<i0, d<? super AbstractC6149q>, Object> {

        /* renamed from: e */
        public int f22991e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7161a(d dVar) {
            super(2, dVar);
            C7160c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m30045i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7161a(dVar);
        }

        /* renamed from: k */
        public final Object m30044k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7161a(dVar).m30043s(s.a);
        }

        /* renamed from: s */
        public final Object m30043s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f22991e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6248w abstractC6248w = C7160c.this.f22990h;
                this.f22991e = 1;
                Object mo31573c = abstractC6248w.mo31573c(this);
                obj = mo31573c;
                if (mo31573c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* renamed from: e.a.a.p0.c$b */
    /* loaded from: classes10-dex2jar.jar:e/a/a/p0/c$b.class */
    public static final class C7162b extends m implements s1.z.b.l<Long, CharSequence> {

        /* renamed from: b */
        public static final C7162b f22993b = new C7162b();

        public C7162b() {
            super(1);
        }

        /* renamed from: d */
        public /* bridge */ /* synthetic */ Object m30042d(Object obj) {
            ((Number) obj).longValue();
            return "?";
        }
    }

    @Inject
    public C7160c(C20592g c20592g, AbstractC19462a abstractC19462a, AbstractC10357a abstractC10357a, AbstractC6392i0 abstractC6392i0, a<AbstractC10159f> aVar, ContentResolver contentResolver, AbstractC6248w abstractC6248w) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC10357a, "parseManager");
        l.e(abstractC6392i0, "settings");
        l.e(aVar, "insightsCategorizer");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6248w, "readMessageStorage");
        this.f22984b = c20592g;
        this.f22985c = abstractC19462a;
        this.f22986d = abstractC10357a;
        this.f22987e = abstractC6392i0;
        this.f22988f = aVar;
        this.f22989g = contentResolver;
        this.f22990h = abstractC6248w;
    }

    @Override // p193e.p194a.p195a.p276p0.AbstractC7158b
    /* renamed from: a */
    public C7157a mo30049a(Message message, AbstractC10549f abstractC10549f) {
        l.e(message, "message");
        l.e(abstractC10549f, "insightsParseResponse");
        return m30046d(message, abstractC10549f);
    }

    @Override // p193e.p194a.p195a.p276p0.AbstractC7158b
    /* renamed from: b */
    public C7157a mo30048b(Message message) {
        l.e(message, "message");
        AbstractC10357a abstractC10357a = this.f22986d;
        long j = message.f13380a;
        String str = message.f13398s;
        if (str == null) {
            str = "";
        }
        l.d(str, "this.rawAddress ?: \"\"");
        String m35025a = message.m35025a();
        l.d(m35025a, "this.buildMessageText()");
        Date n = message.f13384e.n();
        l.d(n, "this.date.toDate()");
        return m30046d(message, abstractC10357a.mo26293o(new C10266c(j, str, m35025a, n, message.f13381b, message.f13390k, message.f13392m, 0, null, false, message.f13382c.f11579l, 896)));
    }

    @Override // p193e.p194a.p195a.p276p0.AbstractC7158b
    /* renamed from: c */
    public void mo30047c() {
        if (this.f22987e.mo31219D3() || !this.f22984b.m10969e0().isEnabled()) {
            return;
        }
        AbstractC6149q abstractC6149q = (AbstractC6149q) s1.a.a.a.v0.f.d.c3((f) null, new C7161a(null), 1, (Object) null);
        if (abstractC6149q != null) {
            try {
                ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                ArrayList arrayList2 = new ArrayList();
                while (abstractC6149q.moveToNext()) {
                    Message message = abstractC6149q.getMessage();
                    l.d(message, "it.message");
                    Participant participant = message.f13382c;
                    l.d(participant, "message.participant");
                    if (C10480a.m25921o(participant)) {
                        arrayList2.add(Long.valueOf(message.f13380a));
                    }
                }
                Iterator it = ((ArrayList) s1.u.i.k(arrayList2, 900)).iterator();
                while (it.hasNext()) {
                    List<Number> list = (List) it.next();
                    ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(C8582g0.m28295y());
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("category", (Integer) 4);
                    contentValues.put("classification", (Integer) 2);
                    ContentProviderOperation.Builder withValues = newUpdate.withValues(contentValues);
                    String str = "_id IN (" + s1.u.i.O(list, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C7162b.f22993b, 31) + ')';
                    ArrayList arrayList3 = new ArrayList(C25225a.m4004J(list, 10));
                    for (Number number : list) {
                        arrayList3.add(String.valueOf(number.longValue()));
                    }
                    Object[] array = arrayList3.toArray(new String[0]);
                    if (array == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                    arrayList.add(withValues.withSelection(str, (String[]) array).build());
                }
                if (!arrayList.isEmpty()) {
                    ContentResolver contentResolver = this.f22989g;
                    Uri uri = C17891a1.f50888a;
                    l.d("com.truecaller", "TruecallerContract.getAuthority()");
                    try {
                        l.d(contentResolver.applyBatch("com.truecaller", arrayList), "applyBatch(authority, operations)");
                    } catch (SQLiteException e) {
                        AssertionUtil.reportThrowableButNeverCrash(e);
                    }
                }
                th = null;
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                    C25225a.m4016G(abstractC6149q, th);
                }
            }
        }
        this.f22987e.mo31203H(true);
    }

    /* renamed from: d */
    public final C7157a m30046d(Message message, AbstractC10549f abstractC10549f) {
        C7157a c7157a;
        C7157a c7157a2;
        if (!this.f22984b.m10963h0().isEnabled()) {
            return new C7157a(2, 0, null, false, false, 28);
        }
        Participant participant = message.f13382c;
        l.d(participant, "message.participant");
        boolean m35448l = participant.m35448l();
        String m35025a = message.m35025a();
        l.d(m35025a, "message.buildMessageText()");
        boolean z = (message.f13386g & 1) != 0;
        int i = message.f13390k;
        boolean z2 = i == 0 || i == 4;
        Participant participant2 = message.f13382c;
        l.d(participant2, "message.participant");
        if ((m35025a.length() == 0) || z || (!participant2.m35448l() && !z2)) {
            return new C7157a(2, 2, null, false, false, 28);
        }
        CategorizerInputType categorizerInputType = m35448l ? CategorizerInputType.IM : CategorizerInputType.SMS;
        boolean z3 = this.f22987e.mo31097b4(0L) != 0;
        String m35025a2 = message.m35025a();
        l.d(m35025a2, "message.buildMessageText()");
        Participant participant3 = message.f13382c;
        l.d(participant3, "message.participant");
        List<? extends C17463b4> m3962T1 = C25225a.m3962T1(C10480a.m26008V2(participant3));
        AbstractC10105a mo26645s = ((AbstractC10159f) this.f22988f.get()).mo26645s(m35025a2, categorizerInputType);
        if (!this.f22984b.m10969e0().isEnabled() || !this.f22986d.mo26291r(abstractC10549f)) {
            if (mo26645s instanceof AbstractC10105a.C10107b) {
                c7157a2 = abstractC10549f instanceof AbstractC10549f.C10551b ? this.f22986d.mo26295e(abstractC10549f) ? new C7157a(2, 2, mo26645s, true, z3) : new C7157a(3, 2, mo26645s, false, z3, 8) : new C7157a(3, 2, mo26645s, false, z3, 8);
            } else if (!(mo26645s instanceof AbstractC10105a.C10106a)) {
                throw new s1.i();
            } else {
                c7157a2 = new C7157a(2, 2, mo26645s, false, z3, 8);
            }
            CategorizerInputType categorizerInputType2 = CategorizerInputType.IM;
            if (categorizerInputType == categorizerInputType2) {
                C17457b2.C17459b m30050a = AbstractC7158b.C7159a.f22983a.m30050a(m3962T1, mo26645s, abstractC10549f, c7157a2.f22980d, categorizerInputType2);
                AbstractC19462a abstractC19462a = this.f22985c;
                C17457b2 build = m30050a.build();
                l.d(build, "it.build()");
                abstractC19462a.mo13275a(build);
            }
            c7157a = c7157a2;
        } else {
            c7157a = new C7157a(4, 2, mo26645s, false, z3, 8);
        }
        if (this.f22984b.m10969e0().isEnabled() && c7157a.f22977a == 3) {
            Participant participant4 = message.f13382c;
            l.d(participant4, "message.participant");
            if (C10480a.m25921o(participant4)) {
                return new C7157a(4, 3, null, false, false, 28);
            }
        }
        C20592g c20592g = this.f22984b;
        C7157a c7157a3 = c7157a;
        if (c20592g.f58031t4.m10941a(c20592g, C20592g.f57695p6[283]).isEnabled()) {
            c7157a3 = c7157a;
            if (m35448l) {
                c7157a3 = c7157a;
                if (c7157a.f22977a == 3) {
                    c7157a3 = new C7157a(2, 3, null, false, false, 28);
                }
            }
        }
        return c7157a3;
    }
}
