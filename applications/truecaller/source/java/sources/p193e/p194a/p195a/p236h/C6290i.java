package p193e.p194a.p195a.p236h;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1050l5.p1051a.C17733s0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6487o;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p195a.p269n.AbstractC7004h;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.a.h.i */
/* loaded from: classes7-dex2jar.jar:e/a/a/h/i.class */
public final class C6290i extends AbstractC20574a<AbstractC6289h> implements AbstractC6288g {

    /* renamed from: d */
    public ImGroupInfo f21074d;

    /* renamed from: e */
    public AbstractC6487o f21075e;

    /* renamed from: g */
    public boolean f21077g;

    /* renamed from: h */
    public boolean f21078h;

    /* renamed from: j */
    public final Conversation f21080j;

    /* renamed from: k */
    public final AbstractC19868j f21081k;

    /* renamed from: l */
    public final AbstractC19854f<AbstractC6485m> f21082l;

    /* renamed from: m */
    public final ContentResolver f21083m;

    /* renamed from: n */
    public final Uri f21084n;

    /* renamed from: o */
    public final AbstractC6489q f21085o;

    /* renamed from: p */
    public final AbstractC19462a f21086p;

    /* renamed from: q */
    public final AbstractC19854f<AbstractC19463a0> f21087q;

    /* renamed from: r */
    public final AbstractC6392i0 f21088r;

    /* renamed from: s */
    public final AbstractC19223c0 f21089s;

    /* renamed from: t */
    public final AbstractC7004h f21090t;

    /* renamed from: u */
    public final f f21091u;

    /* renamed from: v */
    public final C20592g f21092v;

    /* renamed from: w */
    public final AbstractC6284c f21093w;

    /* renamed from: f */
    public final C6291a f21076f = new C6291a(new Handler(Looper.getMainLooper()));

    /* renamed from: i */
    public final C6292b f21079i = new C6292b(new Handler(Looper.getMainLooper()));

    /* renamed from: e.a.a.h.i$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/i$a.class */
    public static final class C6291a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6291a(Handler handler) {
            super(handler);
            C6290i.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            C6290i.this.m31498Kj();
        }
    }

    /* renamed from: e.a.a.h.i$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/i$b.class */
    public static final class C6292b extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6292b(Handler handler) {
            super(handler);
            C6290i.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            C6290i.this.m31499Jj();
        }
    }

    /* renamed from: e.a.a.h.i$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/i$c.class */
    public static final /* synthetic */ class C6293c extends j implements l<ImGroupInfo, s> {
        public C6293c(C6290i c6290i) {
            super(1, c6290i, C6290i.class, "onGroupInfo", "onGroupInfo(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V", 0);
        }

        /* renamed from: d */
        public Object m31485d(Object obj) {
            ImGroupInfo imGroupInfo = (ImGroupInfo) obj;
            C6290i c6290i = (C6290i) ((b) this).b;
            Objects.requireNonNull(c6290i);
            if (imGroupInfo != null) {
                c6290i.f21074d = imGroupInfo;
                c6290i.m31496Mj();
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.h.i$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/i$d.class */
    public static final /* synthetic */ class C6294d extends j implements l<AbstractC6487o, s> {
        public C6294d(C6290i c6290i) {
            super(1, c6290i, C6290i.class, "onCursor", "onCursor(Lcom/truecaller/messaging/transport/im/groups/ImGroupParticipantsCursor;)V", 0);
        }

        /* renamed from: d */
        public Object m31484d(Object obj) {
            AbstractC6487o abstractC6487o = (AbstractC6487o) obj;
            C6290i c6290i = (C6290i) ((b) this).b;
            int i = 0;
            if (c6290i.f21077g) {
                AbstractC6487o abstractC6487o2 = c6290i.f21075e;
                if (abstractC6487o2 != null) {
                    abstractC6487o2.unregisterContentObserver(c6290i.f21076f);
                }
                c6290i.f21077g = false;
            }
            AbstractC6487o abstractC6487o3 = c6290i.f21075e;
            if (abstractC6487o3 != null) {
                abstractC6487o3.close();
            }
            c6290i.f21075e = abstractC6487o;
            if (!c6290i.f21077g) {
                if (abstractC6487o != null) {
                    abstractC6487o.registerContentObserver(c6290i.f21076f);
                }
                c6290i.f21077g = true;
            }
            if (abstractC6487o != null) {
                i = abstractC6487o.getCount();
            }
            AbstractC6289h abstractC6289h = (AbstractC6289h) c6290i.f57683a;
            if (abstractC6289h != null) {
                abstractC6289h.mo31515c0();
                abstractC6289h.mo31529F3(i);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.h.i$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/i$e.class */
    public static final class C6295e<R> implements AbstractC19851d0<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ List f21097b;

        public C6295e(List list) {
            C6290i.this = r4;
            this.f21097b = list;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            if (!C12864a2.m22540r(bool)) {
                AbstractC6289h abstractC6289h = (AbstractC6289h) C6290i.this.f57683a;
                if (abstractC6289h == null) {
                    return;
                }
                abstractC6289h.mo31516a(2131886719);
                return;
            }
            C6290i.this.m31497Lj("invite");
            C6290i c6290i = C6290i.this;
            List<Participant> list = this.f21097b;
            ImGroupInfo imGroupInfo = c6290i.f21074d;
            if (imGroupInfo == null) {
                return;
            }
            for (Participant participant : list) {
                C17733s0.C17735b m15824a = C17733s0.m15824a();
                m15824a.m15821c(imGroupInfo.f13319a);
                String mo31078f = c6290i.f21088r.mo31078f();
                if (mo31078f == null) {
                    mo31078f = "";
                }
                m15824a.m15819e(mo31078f);
                String str = participant.f11570c;
                String str2 = "";
                if (str != null) {
                    str2 = str;
                }
                m15824a.m15820d(str2);
                m15824a.m15822b("Send");
                c6290i.f21087q.mo11854a().mo13111a(m15824a.build());
            }
        }
    }

    /* renamed from: e.a.a.h.i$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/i$f.class */
    public static final class C6296f<R> implements AbstractC19851d0<Boolean> {
        public C6296f(C16503a c16503a) {
            C6290i.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            C6290i.m31500Ij(C6290i.this, bool, "demoteAdmin");
        }
    }

    /* renamed from: e.a.a.h.i$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/i$g.class */
    public static final /* synthetic */ class C6297g extends j implements l<Boolean, s> {
        public C6297g(C6290i c6290i) {
            super(1, c6290i, C6290i.class, "onLeaveResult", "onLeaveResult(Ljava/lang/Boolean;)V", 0);
        }

        /* renamed from: d */
        public Object m31483d(Object obj) {
            Boolean bool = (Boolean) obj;
            C6290i c6290i = (C6290i) ((b) this).b;
            AbstractC6289h abstractC6289h = (AbstractC6289h) c6290i.f57683a;
            if (abstractC6289h != null) {
                abstractC6289h.mo31528H7();
                if (s1.z.c.l.a(bool, Boolean.TRUE)) {
                    c6290i.m31497Lj("leave");
                    abstractC6289h.finish();
                } else {
                    abstractC6289h.mo31516a(2131886719);
                }
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.h.i$h */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/i$h.class */
    public static final class C6298h<R> implements AbstractC19851d0<Boolean> {
        public C6298h(C16503a c16503a) {
            C6290i.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            C6290i.m31500Ij(C6290i.this, bool, "makeAdmin");
        }
    }

    /* renamed from: e.a.a.h.i$i */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/i$i.class */
    public static final class C6299i<R> implements AbstractC19851d0<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ int f21101b;

        public C6299i(int i) {
            C6290i.this = r4;
            this.f21101b = i;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            if (!C12864a2.m22540r(bool)) {
                AbstractC6289h abstractC6289h = (AbstractC6289h) C6290i.this.f57683a;
                if (abstractC6289h != null) {
                    abstractC6289h.mo31516a(2131886719);
                }
                C6290i.this.m31499Jj();
                return;
            }
            C6290i c6290i = C6290i.this;
            int i = this.f21101b;
            AbstractC19462a abstractC19462a = c6290i.f21086p;
            LinkedHashMap m8655X = C22128a.m8655X("ImGroupMute", "type");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            String str = i != 1 ? i != 2 ? "false" : "mentionOnly" : "true";
            C22128a.m8695K0("isMuted", AnalyticsConstants.NAME, str, "value", m8655X, "isMuted", str);
            AbstractC6487o abstractC6487o = c6290i.f21075e;
            String valueOf = String.valueOf(abstractC6487o != null ? abstractC6487o.getCount() : 0);
            s1.z.c.l.e("numMembers", AnalyticsConstants.NAME);
            s1.z.c.l.e(valueOf, "value");
            m8655X.put("numMembers", valueOf);
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("ImGroupMute");
            m15852a.m15849c(linkedHashMap);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            s1.z.c.l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19462a.mo13275a(build);
        }
    }

    /* renamed from: e.a.a.h.i$j */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/i$j.class */
    public static final class C6300j<R> implements AbstractC19851d0<Boolean> {
        public C6300j(C16503a c16503a) {
            C6290i.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            C6290i.m31500Ij(C6290i.this, bool, "remove");
        }
    }

    @e(c = "com.truecaller.messaging.groupinfo.GroupInfoPresenter$onStart$3", f = "GroupInfoPresenter.kt", l = {98}, m = "invokeSuspend")
    /* renamed from: e.a.a.h.i$k */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/i$k.class */
    public static final class C6301k extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f21103e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6301k(d dVar) {
            super(2, dVar);
            C6290i.this = r5;
        }

        /* renamed from: i */
        public final d<s> m31482i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C6301k(dVar);
        }

        /* renamed from: k */
        public final Object m31481k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C6301k(dVar).m31480s(s.a);
        }

        /* renamed from: s */
        public final Object m31480s(Object obj) {
            a aVar = a.a;
            int i = this.f21103e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C6290i c6290i = C6290i.this;
                AbstractC7004h abstractC7004h = c6290i.f21090t;
                long j = c6290i.f21080j.f13199a;
                this.f21103e = 1;
                Object mo30310b = abstractC7004h.mo30310b(j, 1, 0, this);
                obj = mo30310b;
                if (mo30310b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            int intValue = ((Number) obj).intValue();
            AbstractC6289h abstractC6289h = (AbstractC6289h) C6290i.this.f57683a;
            if (abstractC6289h != null) {
                if (intValue <= 0) {
                    z = false;
                }
                abstractC6289h.mo31506sq(z);
            }
            AbstractC6289h abstractC6289h2 = (AbstractC6289h) C6290i.this.f57683a;
            if (abstractC6289h2 != null) {
                abstractC6289h2.mo31508pk(intValue);
            }
            AbstractC6289h abstractC6289h3 = (AbstractC6289h) C6290i.this.f57683a;
            if (abstractC6289h3 != null) {
                abstractC6289h3.mo31523Qi(C2752R.string.ImGroupMediaAndLinks);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6290i(Conversation conversation, @Named("ui_thread") AbstractC19868j abstractC19868j, AbstractC19854f<AbstractC6485m> abstractC19854f, ContentResolver contentResolver, @Named("im_group_info_uri") Uri uri, AbstractC6489q abstractC6489q, AbstractC19462a abstractC19462a, AbstractC19854f<AbstractC19463a0> abstractC19854f2, AbstractC6392i0 abstractC6392i0, AbstractC19223c0 abstractC19223c0, AbstractC7004h abstractC7004h, @Named("UI") f fVar, C20592g c20592g, AbstractC6284c abstractC6284c) {
        super(fVar);
        s1.z.c.l.e(conversation, "conversation");
        s1.z.c.l.e(abstractC19868j, "uiThread");
        s1.z.c.l.e(abstractC19854f, "imGroupManager");
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(uri, "imGroupInfoUri");
        s1.z.c.l.e(abstractC6489q, "imGroupUtil");
        s1.z.c.l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        s1.z.c.l.e(abstractC19854f2, "eventsTracker");
        s1.z.c.l.e(abstractC6392i0, "messageSettings");
        s1.z.c.l.e(abstractC19223c0, "resourceProvider");
        s1.z.c.l.e(abstractC7004h, "messageAttachmentFetcher");
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(c20592g, "featuresRegistry");
        s1.z.c.l.e(abstractC6284c, "dataProvider");
        this.f21080j = conversation;
        this.f21081k = abstractC19868j;
        this.f21082l = abstractC19854f;
        this.f21083m = contentResolver;
        this.f21084n = uri;
        this.f21085o = abstractC6489q;
        this.f21086p = abstractC19462a;
        this.f21087q = abstractC19854f2;
        this.f21088r = abstractC6392i0;
        this.f21089s = abstractC19223c0;
        this.f21090t = abstractC7004h;
        this.f21091u = fVar;
        this.f21092v = c20592g;
        this.f21093w = abstractC6284c;
        this.f21074d = conversation.f13224z;
    }

    /* renamed from: Ij */
    public static final void m31500Ij(C6290i c6290i, Boolean bool, String str) {
        Objects.requireNonNull(c6290i);
        if (C12864a2.m22540r(bool)) {
            c6290i.m31497Lj(str);
            return;
        }
        AbstractC6289h abstractC6289h = (AbstractC6289h) c6290i.f57683a;
        if (abstractC6289h == null) {
            return;
        }
        abstractC6289h.mo31516a(2131886719);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    /* renamed from: Ag */
    public void mo31503Ag() {
        AbstractC6289h abstractC6289h;
        ImGroupInfo imGroupInfo = this.f21074d;
        if (imGroupInfo == null || (abstractC6289h = (AbstractC6289h) this.f57683a) == null) {
            return;
        }
        String str = imGroupInfo.f13320b;
        if (str == null) {
            str = "";
        }
        abstractC6289h.mo31505x5(str);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    /* renamed from: Dh */
    public void mo31502Dh() {
        AbstractC6289h abstractC6289h = (AbstractC6289h) this.f57683a;
        if (abstractC6289h != null) {
            abstractC6289h.mo31511l1(this.f21080j);
        }
        m31497Lj("mediaManager");
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    /* renamed from: E5 */
    public void mo31501E5(List<? extends Participant> list) {
        ImGroupInfo imGroupInfo;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            String str = ((Participant) obj).f11570c;
            boolean z = true;
            if (str != null) {
                z = str.length() == 0;
            }
            if (!z) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList.isEmpty() ^ true ? arrayList : null;
        if (arrayList2 == null || (imGroupInfo = this.f21074d) == null) {
            return;
        }
        this.f21082l.mo11854a().mo30894f(imGroupInfo.f13319a, arrayList2).mo11830e(this.f21081k, new C6295e(arrayList2));
    }

    /* renamed from: Jj */
    public final void m31499Jj() {
        ImGroupInfo imGroupInfo = this.f21074d;
        if (imGroupInfo != null) {
            this.f21082l.mo11854a().mo30877w(imGroupInfo.f13319a).mo11830e(this.f21081k, new C6303k(new C6293c(this)));
        }
    }

    /* renamed from: Kj */
    public final void m31498Kj() {
        ImGroupInfo imGroupInfo = this.f21074d;
        if (imGroupInfo != null) {
            this.f21082l.mo11854a().mo30883q(imGroupInfo.f13319a).mo11830e(this.f21081k, new C6303k(new C6294d(this)));
        }
    }

    /* renamed from: Lj */
    public final void m31497Lj(String str) {
        AbstractC19462a abstractC19462a = this.f21086p;
        LinkedHashMap m8655X = C22128a.m8655X("ImGroupParticipantAction", "type");
        C22128a.m8684N0("ImGroupParticipantAction", C22128a.m8652Y("action", AnalyticsConstants.NAME, str, "value", m8655X, "action", str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0149, code lost:
        if (r24 != null) goto L42;
     */
    /* renamed from: Mj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m31496Mj() {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p236h.C6290i.m31496Mj():void");
    }

    /* renamed from: Nj */
    public final int m31495Nj(int i) {
        int i2 = 2;
        if (i == 0) {
            i2 = 0;
        } else if (i != 1) {
            i2 = i != 2 ? -1 : 1;
        }
        return i2;
    }

    /* renamed from: Oj */
    public final void m31494Oj() {
        AbstractC6289h abstractC6289h = (AbstractC6289h) this.f57683a;
        if (abstractC6289h != null) {
            abstractC6289h.mo31520Tw(this.f21078h || this.f21074d != null);
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    /* renamed from: R1 */
    public void mo31493R1() {
        AbstractC6289h abstractC6289h = (AbstractC6289h) this.f57683a;
        if (abstractC6289h != null) {
            abstractC6289h.mo31518W3();
        }
        ImGroupInfo imGroupInfo = this.f21074d;
        if (imGroupInfo != null) {
            this.f21082l.mo11854a().mo30878v(imGroupInfo.f13319a, false).mo11830e(this.f21081k, new C6303k(new C6297g(this)));
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    /* renamed from: T8 */
    public boolean mo31492T8() {
        AbstractC6289h abstractC6289h;
        ImGroupInfo imGroupInfo = this.f21074d;
        if (imGroupInfo == null || (abstractC6289h = (AbstractC6289h) this.f57683a) == null) {
            return true;
        }
        abstractC6289h.mo31521R9(imGroupInfo);
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.a.h.h, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC6289h abstractC6289h) {
        AbstractC6289h abstractC6289h2 = abstractC6289h;
        s1.z.c.l.e(abstractC6289h2, "presenterView");
        this.f57683a = abstractC6289h2;
        m31496Mj();
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6305m
    /* renamed from: a8 */
    public void mo31473a8(Participant participant) {
        s1.z.c.l.e(participant, "participant");
        AbstractC6289h abstractC6289h = (AbstractC6289h) this.f57683a;
        if (abstractC6289h != null) {
            abstractC6289h.mo31507s0(participant);
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC6487o abstractC6487o = this.f21075e;
        if (abstractC6487o != null) {
            abstractC6487o.close();
        }
        this.f21075e = null;
        super.mo9806c();
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    /* renamed from: e6 */
    public void mo31491e6() {
        AbstractC6289h abstractC6289h;
        ImGroupInfo imGroupInfo = this.f21074d;
        if (imGroupInfo != null && (abstractC6289h = (AbstractC6289h) this.f57683a) != null) {
            abstractC6289h.mo31524N8(imGroupInfo);
        }
        m31497Lj("groupLink");
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6305m
    /* renamed from: e7 */
    public void mo31472e7(C16503a c16503a) {
        s1.z.c.l.e(c16503a, "participant");
        ImGroupInfo imGroupInfo = this.f21074d;
        if (imGroupInfo != null) {
            this.f21082l.mo11854a().mo30890j(imGroupInfo.f13319a, c16503a.f46397a, 8).mo11830e(this.f21081k, new C6296f(c16503a));
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6304l
    /* renamed from: f */
    public AbstractC6487o mo31476f() {
        return this.f21075e;
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    /* renamed from: fh */
    public void mo31490fh() {
        AbstractC6289h abstractC6289h;
        ImGroupInfo imGroupInfo = this.f21074d;
        if (imGroupInfo == null || (abstractC6289h = (AbstractC6289h) this.f57683a) == null) {
            return;
        }
        abstractC6289h.mo31509p7(imGroupInfo);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6304l
    /* renamed from: h */
    public ImGroupInfo mo31475h() {
        return this.f21074d;
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    /* renamed from: hf */
    public void mo31489hf() {
        AbstractC6289h abstractC6289h = (AbstractC6289h) this.f57683a;
        if (abstractC6289h != null) {
            abstractC6289h.mo31530Ce(this.f21080j.f13199a);
        }
        m31497Lj("visitStarred");
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    /* renamed from: ih */
    public void mo31488ih(int i) {
        String str;
        int i2 = 2;
        if (i == 0) {
            i2 = 0;
        } else if (i != 1) {
            if (i != 2) {
                return;
            }
            i2 = 1;
        }
        ImGroupInfo imGroupInfo = this.f21074d;
        if ((imGroupInfo != null && i2 == imGroupInfo.f13326h) || imGroupInfo == null || (str = imGroupInfo.f13319a) == null) {
            return;
        }
        this.f21082l.mo11854a().mo30885o(str, i2).mo11830e(this.f21081k, new C6299i(i2));
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6305m
    /* renamed from: kf */
    public void mo31471kf(Participant participant) {
        s1.z.c.l.e(participant, "participant");
        AbstractC6289h abstractC6289h = (AbstractC6289h) this.f57683a;
        if (abstractC6289h != null) {
            abstractC6289h.mo31527Ho(participant.f11572e, participant.f11571d, participant.f11579l, participant.f11574g);
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    /* renamed from: lf */
    public void mo31487lf() {
        AbstractC6289h abstractC6289h = (AbstractC6289h) this.f57683a;
        if (abstractC6289h != null) {
            ImGroupInfo imGroupInfo = this.f21074d;
            abstractC6289h.mo31519Va(imGroupInfo != null ? m31495Nj(Integer.valueOf(imGroupInfo.f13326h).intValue()) : -1, C2752R.array.ImGroupNotificationsDialogOptions);
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6304l
    /* renamed from: o */
    public List<Participant> mo31474o() {
        List<Participant> list;
        if (this.f21074d == null) {
            Participant[] participantArr = this.f21080j.f13211m;
            s1.z.c.l.d(participantArr, "conversation.participants");
            list = C25225a.m3897h3(participantArr);
        } else {
            list = null;
        }
        return list;
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6305m
    /* renamed from: o4 */
    public void mo31470o4(C16503a c16503a) {
        s1.z.c.l.e(c16503a, "participant");
        AbstractC6289h abstractC6289h = (AbstractC6289h) this.f57683a;
        if (abstractC6289h != null) {
            String str = c16503a.f46399c;
            String str2 = c16503a.f46400d;
            String str3 = c16503a.f46401e;
            String str4 = c16503a.f46405i;
            if (!(str == null)) {
                str4 = null;
            }
            abstractC6289h.mo31527Ho(str, str2, str3, str4);
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    public void onStart() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C6302j(this, null), 3, (Object) null);
        if (this.f21074d != null) {
            m31498Kj();
            m31499Jj();
            this.f21083m.registerContentObserver(this.f21084n, true, this.f21079i);
        } else {
            AbstractC6289h abstractC6289h = (AbstractC6289h) this.f57683a;
            if (abstractC6289h != null) {
                abstractC6289h.mo31529F3(this.f21080j.f13211m.length);
            }
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C6301k(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    public void onStop() {
        if (this.f21077g) {
            AbstractC6487o abstractC6487o = this.f21075e;
            if (abstractC6487o != null) {
                abstractC6487o.unregisterContentObserver(this.f21076f);
            }
            this.f21077g = false;
        }
        this.f21083m.unregisterContentObserver(this.f21079i);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6288g
    /* renamed from: r0 */
    public boolean mo31486r0() {
        AbstractC6289h abstractC6289h = (AbstractC6289h) this.f57683a;
        if (abstractC6289h != null) {
            abstractC6289h.finish();
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6305m
    /* renamed from: r9 */
    public void mo31469r9(C16503a c16503a) {
        s1.z.c.l.e(c16503a, "participant");
        ImGroupInfo imGroupInfo = this.f21074d;
        if (imGroupInfo != null) {
            this.f21082l.mo11854a().mo30890j(imGroupInfo.f13319a, c16503a.f46397a, 536870912).mo11830e(this.f21081k, new C6298h(c16503a));
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6305m
    /* renamed from: w9 */
    public void mo31468w9(C16503a c16503a) {
        s1.z.c.l.e(c16503a, "participant");
        ImGroupInfo imGroupInfo = this.f21074d;
        if (imGroupInfo != null) {
            AbstractC6485m mo11854a = this.f21082l.mo11854a();
            String str = imGroupInfo.f13319a;
            String str2 = c16503a.f46397a;
            Participant.C3848b c3848b = new Participant.C3848b(3);
            c3848b.f11598e = str2;
            c3848b.f11596c = str2;
            Participant m35443a = c3848b.m35443a();
            s1.z.c.l.d(m35443a, "Participant.Builder(Part…Id(imId)\n        .build()");
            mo11854a.mo30897c(str, m35443a).mo11830e(this.f21081k, new C6300j(c16503a));
        }
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6305m
    /* renamed from: x8 */
    public void mo31467x8(C16503a c16503a) {
        s1.z.c.l.e(c16503a, "participant");
        String str = c16503a.f46399c;
        if (str == null || str.length() == 0) {
            AbstractC6289h abstractC6289h = (AbstractC6289h) this.f57683a;
            if (abstractC6289h != null) {
                abstractC6289h.mo31522Qo(c16503a);
            }
        } else {
            Participant.C3848b c3848b = new Participant.C3848b(0);
            c3848b.f11598e = str;
            c3848b.f11605l = c16503a.f46401e;
            c3848b.f11606m = c16503a.f46403g;
            c3848b.f11608o = c16503a.f46404h;
            c3848b.f11600g = c16503a.f46405i;
            Participant m35443a = c3848b.m35443a();
            AbstractC6289h abstractC6289h2 = (AbstractC6289h) this.f57683a;
            if (abstractC6289h2 != null) {
                s1.z.c.l.d(m35443a, "it");
                abstractC6289h2.mo31507s0(m35443a);
            }
        }
        m31497Lj("chat");
    }
}
