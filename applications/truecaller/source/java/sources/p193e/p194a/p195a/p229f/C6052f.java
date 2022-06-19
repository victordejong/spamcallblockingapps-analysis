package p193e.p194a.p195a.p229f;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.ImGroupInfo;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1050l5.p1051a.C17733s0;
import p193e.p194a.p1114o5.AbstractC19126x;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p437c.p578p.C10480a;
import s1.s;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.a.f.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/f/f.class */
public final class C6052f extends AbstractC6050d {

    /* renamed from: b */
    public boolean f20103b;

    /* renamed from: c */
    public final C6053a f20104c = new C6053a(new Handler(Looper.getMainLooper()));

    /* renamed from: d */
    public final AbstractC19868j f20105d;

    /* renamed from: e */
    public final ImGroupInfo f20106e;

    /* renamed from: f */
    public final AbstractC19854f<AbstractC6485m> f20107f;

    /* renamed from: g */
    public final AbstractC19223c0 f20108g;

    /* renamed from: h */
    public final AbstractC19854f<AbstractC19126x> f20109h;

    /* renamed from: i */
    public final AbstractC6489q f20110i;

    /* renamed from: j */
    public final AbstractC19854f<AbstractC7343q> f20111j;

    /* renamed from: k */
    public final AbstractC19854f<AbstractC19463a0> f20112k;

    /* renamed from: l */
    public final AbstractC19462a f20113l;

    /* renamed from: m */
    public final AbstractC6392i0 f20114m;

    /* renamed from: n */
    public final ContentResolver f20115n;

    /* renamed from: o */
    public final Uri f20116o;

    /* renamed from: e.a.a.f.f$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/f/f$a.class */
    public static final class C6053a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6053a(Handler handler) {
            super(handler);
            C6052f.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            C6052f.this.m31916Jj();
        }
    }

    /* renamed from: e.a.a.f.f$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/f/f$b.class */
    public static final /* synthetic */ class C6054b extends j implements l<ImGroupInfo, s> {
        public C6054b(C6052f c6052f) {
            super(1, c6052f, C6052f.class, "onGroupInfo", "onGroupInfo(Lcom/truecaller/messaging/data/types/ImGroupInfo;)V", 0);
        }

        /* renamed from: d */
        public Object m31911d(Object obj) {
            ((C6052f) ((b) this).b).m31915Kj((ImGroupInfo) obj);
            return s.a;
        }
    }

    /* renamed from: e.a.a.f.f$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/f/f$c.class */
    public static final /* synthetic */ class C6055c extends j implements l<Boolean, s> {
        public C6055c(C6052f c6052f) {
            super(1, c6052f, C6052f.class, "onLeaveResult", "onLeaveResult(Ljava/lang/Boolean;)V", 0);
        }

        /* renamed from: d */
        public Object m31910d(Object obj) {
            Boolean bool = (Boolean) obj;
            C6052f c6052f = (C6052f) ((b) this).b;
            c6052f.m31913Mj("Decline", bool);
            AbstractC6051e abstractC6051e = (AbstractC6051e) c6052f.f57683a;
            if (abstractC6051e != null && (!s1.z.c.l.a(bool, Boolean.TRUE))) {
                abstractC6051e.mo31924a(2131886719);
                abstractC6051e.mo31922h(false);
                abstractC6051e.mo31925Im(true);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.f.f$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/f/f$d.class */
    public static final /* synthetic */ class C6056d extends j implements l<Contact, s> {
        public C6056d(C6052f c6052f) {
            super(1, c6052f, C6052f.class, "onInvitedByContactResult", "onInvitedByContactResult(Lcom/truecaller/data/entity/Contact;)V", 0);
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
            if (r8 != null) goto L9;
         */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m31909d(java.lang.Object r8) {
            /*
                r7 = this;
                r0 = r8
                com.truecaller.data.entity.Contact r0 = (com.truecaller.data.entity.Contact) r0
                r8 = r0
                r0 = r7
                java.lang.Object r0 = r0.b
                e.a.a.f.f r0 = (p193e.p194a.p195a.p229f.C6052f) r0
                r9 = r0
                r0 = r9
                com.truecaller.messaging.data.types.ImGroupInfo r0 = r0.f20106e
                java.lang.String r0 = r0.f13323e
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L61
                r0 = r8
                if (r0 == 0) goto L29
                r0 = r8
                java.lang.String r0 = r0.m35491w()
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L29
                goto L34
            L29:
                r0 = r9
                e.a.a.k.a.a.q r0 = r0.f20110i
                r1 = r10
                java.lang.String r0 = r0.mo30871d(r1)
                r8 = r0
            L34:
                r0 = r9
                PV r0 = r0.f57683a
                e.a.a.f.e r0 = (p193e.p194a.p195a.p229f.AbstractC6051e) r0
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L61
                r0 = r9
                e.a.p5.c0 r0 = r0.f20108g
                r1 = 2131886822(0x7f1202e6, float:1.9408234E38)
                r2 = 1
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                r5 = r8
                r3[r4] = r5
                java.lang.String r0 = r0.mo13768b(r1, r2)
                r8 = r0
                r0 = r8
                java.lang.String r1 = "resourceProvider.getStri…itationDescription, name)"
                s1.z.c.l.d(r0, r1)
                r0 = r10
                r1 = r8
                r0.mo31923d(r1)
            L61:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p229f.C6052f.C6056d.m31909d(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.a.f.f$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/f/f$e.class */
    public static final /* synthetic */ class C6057e extends j implements l<Boolean, s> {
        public C6057e(C6052f c6052f) {
            super(1, c6052f, C6052f.class, "onAcceptInviteResult", "onAcceptInviteResult(Ljava/lang/Boolean;)V", 0);
        }

        /* renamed from: d */
        public Object m31908d(Object obj) {
            Boolean bool = (Boolean) obj;
            C6052f c6052f = (C6052f) ((b) this).b;
            c6052f.m31913Mj("Accept", bool);
            AbstractC6051e abstractC6051e = (AbstractC6051e) c6052f.f57683a;
            if (abstractC6051e != null) {
                if (!s1.z.c.l.a(bool, Boolean.TRUE)) {
                    abstractC6051e.mo31924a(2131886719);
                    abstractC6051e.mo31922h(false);
                    abstractC6051e.mo31925Im(true);
                } else if (!c6052f.f20103b) {
                    c6052f.m31914Lj(c6052f.f20106e);
                }
            }
            return s.a;
        }
    }

    @Inject
    public C6052f(@Named("ui_thread") AbstractC19868j abstractC19868j, ImGroupInfo imGroupInfo, AbstractC19854f<AbstractC6485m> abstractC19854f, AbstractC19223c0 abstractC19223c0, AbstractC19854f<AbstractC19126x> abstractC19854f2, AbstractC6489q abstractC6489q, AbstractC19854f<AbstractC7343q> abstractC19854f3, AbstractC19854f<AbstractC19463a0> abstractC19854f4, AbstractC19462a abstractC19462a, AbstractC6392i0 abstractC6392i0, ContentResolver contentResolver, @Named("im_group_info_uri") Uri uri) {
        s1.z.c.l.e(abstractC19868j, "uiThread");
        s1.z.c.l.e(imGroupInfo, "groupInfo");
        s1.z.c.l.e(abstractC19854f, "imGroupManager");
        s1.z.c.l.e(abstractC19223c0, "resourceProvider");
        s1.z.c.l.e(abstractC19854f2, "contactsManager");
        s1.z.c.l.e(abstractC6489q, "imGroupUtil");
        s1.z.c.l.e(abstractC19854f3, "messagingNotificationsManager");
        s1.z.c.l.e(abstractC19854f4, "eventsTracker");
        s1.z.c.l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        s1.z.c.l.e(abstractC6392i0, "messageSettings");
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(uri, "imGroupInfoUri");
        this.f20105d = abstractC19868j;
        this.f20106e = imGroupInfo;
        this.f20107f = abstractC19854f;
        this.f20108g = abstractC19223c0;
        this.f20109h = abstractC19854f2;
        this.f20110i = abstractC6489q;
        this.f20111j = abstractC19854f3;
        this.f20112k = abstractC19854f4;
        this.f20113l = abstractC19462a;
        this.f20114m = abstractC6392i0;
        this.f20115n = contentResolver;
        this.f20116o = uri;
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6050d
    /* renamed from: Hj */
    public void mo31918Hj() {
        this.f20107f.mo11854a().mo30878v(this.f20106e.f13319a, true).mo11830e(this.f20105d, new C6058g(new C6055c(this)));
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6050d
    /* renamed from: Ij */
    public void mo31917Ij() {
        AbstractC6051e abstractC6051e = (AbstractC6051e) this.f57683a;
        if (abstractC6051e != null) {
            abstractC6051e.mo31925Im(false);
            abstractC6051e.mo31922h(true);
            this.f20107f.mo11854a().mo30895e(this.f20106e.f13319a).mo11830e(this.f20105d, new C6058g(new C6057e(this)));
        }
    }

    /* renamed from: Jj */
    public final void m31916Jj() {
        this.f20107f.mo11854a().mo30877w(this.f20106e.f13319a).mo11830e(this.f20105d, new C6058g(new C6054b(this)));
    }

    /* renamed from: Kj */
    public final void m31915Kj(ImGroupInfo imGroupInfo) {
        AbstractC6051e abstractC6051e;
        if (imGroupInfo == null || (abstractC6051e = (AbstractC6051e) this.f57683a) == null) {
            return;
        }
        if (C10480a.m25989a1(imGroupInfo)) {
            abstractC6051e.finish();
            abstractC6051e.mo31919w0();
        } else if (!C10480a.m25894t1(imGroupInfo)) {
            if (this.f20103b) {
                return;
            }
            m31914Lj(imGroupInfo);
        } else {
            String str = imGroupInfo.f13320b;
            if (str == null) {
                str = "";
            }
            abstractC6051e.mo31926I4(str);
            String str2 = imGroupInfo.f13321c;
            abstractC6051e.mo31920u(str2 != null ? Uri.parse(str2) : null);
            AbstractC19223c0 abstractC19223c0 = this.f20108g;
            String str3 = imGroupInfo.f13320b;
            String str4 = "";
            if (str3 != null) {
                str4 = str3;
            }
            String mo13768b = abstractC19223c0.mo13768b(C2752R.string.ImGroupInvitationTitle, str4);
            s1.z.c.l.d(mo13768b, "resourceProvider.getStri…roupInfo.title.orEmpty())");
            abstractC6051e.setTitle(mo13768b);
            String str5 = imGroupInfo.f13323e;
            if (str5 == null) {
                return;
            }
            this.f20109h.mo11854a().mo14079b(str5).mo11830e(this.f20105d, new C6059h(new C6056d(this)));
        }
    }

    /* renamed from: Lj */
    public final void m31914Lj(ImGroupInfo imGroupInfo) {
        this.f20103b = true;
        Participant.C3848b c3848b = new Participant.C3848b(4);
        c3848b.f11598e = imGroupInfo.f13319a;
        Participant m35443a = c3848b.m35443a();
        s1.z.c.l.d(m35443a, "Participant.Builder(Part…pId)\n            .build()");
        AbstractC6051e abstractC6051e = (AbstractC6051e) this.f57683a;
        if (abstractC6051e != null) {
            abstractC6051e.finish();
            abstractC6051e.mo31921s0(m35443a);
        }
    }

    /* renamed from: Mj */
    public final void m31913Mj(String str, Boolean bool) {
        if (s1.z.c.l.a(bool, Boolean.TRUE)) {
            C17733s0.C17735b m15824a = C17733s0.m15824a();
            m15824a.m15821c(this.f20106e.f13319a);
            String str2 = this.f20106e.f13323e;
            if (str2 == null) {
                str2 = "";
            }
            m15824a.m15819e(str2);
            String mo31078f = this.f20114m.mo31078f();
            String str3 = "";
            if (mo31078f != null) {
                str3 = mo31078f;
            }
            m15824a.m15820d(str3);
            m15824a.m15822b(str);
            this.f20112k.mo11854a().mo13111a(m15824a.build());
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.a.f.e, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC6051e) obj;
        s1.z.c.l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        this.f20111j.mo11854a().mo29768i(this.f20106e);
        this.f20107f.mo11854a().mo30892h(this.f20106e.f13319a, "conversation");
        m31915Kj(this.f20106e);
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6050d
    public void onPause() {
        this.f20115n.unregisterContentObserver(this.f20104c);
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6050d
    public void onResume() {
        this.f20115n.registerContentObserver(this.f20116o, true, this.f20104c);
        m31916Jj();
    }

    @Override // p193e.p194a.p195a.p229f.AbstractC6050d
    /* renamed from: r0 */
    public boolean mo31912r0() {
        AbstractC6051e abstractC6051e = (AbstractC6051e) this.f57683a;
        if (abstractC6051e != null) {
            abstractC6051e.finish();
            return true;
        }
        return true;
    }
}
