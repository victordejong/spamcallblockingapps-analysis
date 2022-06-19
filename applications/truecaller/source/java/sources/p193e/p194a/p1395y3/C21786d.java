package p193e.p194a.p1395y3;

import android.content.Context;
import android.util.Base64;
import com.freshchat.consumer.sdk.Freshchat;
import com.freshchat.consumer.sdk.FreshchatConfig;
import com.freshchat.consumer.sdk.FreshchatNotificationConfig;
import com.freshchat.consumer.sdk.FreshchatUser;
import com.freshchat.consumer.sdk.exception.MethodNotAllowedException;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.RemoteMessage;
import com.razorpay.AnalyticsConstants;
import com.truecaller.freshchat.FreshChatModel;
import com.truecaller.log.AssertionUtil;
import e.m.d.y.n;
import e.m.e.k;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.f0.b;
import s1.f0.r;
import s1.g;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.y3.d */
/* loaded from: classes9-dex2jar.jar:e/a/y3/d.class */
public final class C21786d implements AbstractC21785c {

    /* renamed from: a */
    public Freshchat f60620a;

    /* renamed from: b */
    public final g f60621b = C25225a.m3978P1(C21787a.f60628b);

    /* renamed from: c */
    public final Context f60622c;

    /* renamed from: d */
    public final a<AbstractC8541a> f60623d;

    /* renamed from: e */
    public final a<AbstractC8438a> f60624e;

    /* renamed from: f */
    public final a<C20592g> f60625f;

    /* renamed from: g */
    public final a<AbstractC17197v0> f60626g;

    /* renamed from: h */
    public final a<AbstractC21783a> f60627h;

    /* renamed from: e.a.y3.d$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y3/d$a.class */
    public static final class C21787a extends m implements s1.z.b.a<k> {

        /* renamed from: b */
        public static final C21787a f60628b = new C21787a();

        public C21787a() {
            super(0);
        }

        public Object invoke() {
            return new k();
        }
    }

    @Inject
    public C21786d(Context context, a<AbstractC8541a> aVar, a<AbstractC8438a> aVar2, a<C20592g> aVar3, a<AbstractC17197v0> aVar4, a<AbstractC21783a> aVar5) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar, "coreSettings");
        l.e(aVar2, "accountSettings");
        l.e(aVar3, "featuresRegistry");
        l.e(aVar4, "premiumStateSettings");
        l.e(aVar5, "freshChatHelper");
        this.f60622c = context;
        this.f60623d = aVar;
        this.f60624e = aVar2;
        this.f60625f = aVar3;
        this.f60626g = aVar4;
        this.f60627h = aVar5;
    }

    @Override // p193e.p194a.p1395y3.AbstractC21785c
    /* renamed from: a */
    public void mo9080a(RemoteMessage remoteMessage) {
        l.e(remoteMessage, "remoteMessage");
        if (m9075f() != null) {
            Freshchat.handleFcmMessage(this.f60622c, remoteMessage);
        }
    }

    @Override // p193e.p194a.p1395y3.AbstractC21785c
    /* renamed from: b */
    public void mo9079b() {
        if (m9075f() != null) {
            Freshchat.showConversations(this.f60622c);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00dc, code lost:
        if (s1.z.c.l.a(r0, "gold") != false) goto L17;
     */
    @Override // p193e.p194a.p1395y3.AbstractC21785c
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo9078c() {
        /*
            r5 = this;
            r0 = r5
            o3.a<e.a.u3.g> r0 = r0.f60625f
            java.lang.Object r0 = r0.get()
            e.a.u3.g r0 = (p193e.p194a.p1272u3.C20592g) r0
            r6 = r0
            r0 = r6
            e.a.u3.g$a r0 = r0.f58073z4
            r7 = r0
            s1.a.l[] r0 = p193e.p194a.p1272u3.C20592g.f57695p6
            r8 = r0
            r0 = r7
            r1 = r6
            r2 = r8
            r3 = 289(0x121, float:4.05E-43)
            r2 = r2[r3]
            e.a.u3.b r0 = r0.m10941a(r1, r2)
            boolean r0 = r0.isEnabled()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 != 0) goto L53
            r0 = r5
            o3.a<e.a.u3.g> r0 = r0.f60625f
            java.lang.Object r0 = r0.get()
            e.a.u3.g r0 = (p193e.p194a.p1272u3.C20592g) r0
            r6 = r0
            r0 = r6
            e.a.u3.g$a r0 = r0.f58066y4
            r1 = r6
            r2 = r8
            r3 = 288(0x120, float:4.04E-43)
            r2 = r2[r3]
            e.a.u3.b r0 = r0.m10941a(r1, r2)
            boolean r0 = r0.isEnabled()
            if (r0 != 0) goto L53
            r0 = 0
            return r0
        L53:
            r0 = r5
            o3.a<e.a.y3.a> r0 = r0.f60627h
            java.lang.Object r0 = r0.get()
            e.a.y3.a r0 = (p193e.p194a.p1395y3.AbstractC21783a) r0
            boolean r0 = r0.mo9082a()
            r11 = r0
            r0 = r5
            o3.a<e.a.l.p2.v0> r0 = r0.f60626g
            java.lang.Object r0 = r0.get()
            e.a.l.p2.v0 r0 = (p193e.p194a.p1011l.p1025p2.AbstractC17197v0) r0
            java.lang.String r0 = r0.mo16411D2()
            r6 = r0
            r0 = r10
            r9 = r0
            r0 = r11
            if (r0 == 0) goto Le2
            r0 = r5
            o3.a<e.a.u3.g> r0 = r0.f60625f
            java.lang.Object r0 = r0.get()
            e.a.u3.g r0 = (p193e.p194a.p1272u3.C20592g) r0
            r7 = r0
            r0 = r7
            e.a.u3.g$a r0 = r0.f58073z4
            r1 = r7
            r2 = r8
            r3 = 289(0x121, float:4.05E-43)
            r2 = r2[r3]
            e.a.u3.b r0 = r0.m10941a(r1, r2)
            boolean r0 = r0.isEnabled()
            if (r0 == 0) goto Lac
            r0 = r6
            java.lang.String r1 = "regular"
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 != 0) goto Ldf
        Lac:
            r0 = r5
            o3.a<e.a.u3.g> r0 = r0.f60625f
            java.lang.Object r0 = r0.get()
            e.a.u3.g r0 = (p193e.p194a.p1272u3.C20592g) r0
            r7 = r0
            r0 = r10
            r9 = r0
            r0 = r7
            e.a.u3.g$a r0 = r0.f58066y4
            r1 = r7
            r2 = r8
            r3 = 288(0x120, float:4.04E-43)
            r2 = r2[r3]
            e.a.u3.b r0 = r0.m10941a(r1, r2)
            boolean r0 = r0.isEnabled()
            if (r0 == 0) goto Le2
            r0 = r10
            r9 = r0
            r0 = r6
            java.lang.String r1 = "gold"
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto Le2
        Ldf:
            r0 = 1
            r9 = r0
        Le2:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1395y3.C21786d.mo9078c():boolean");
    }

    @Override // p193e.p194a.p1395y3.AbstractC21785c
    /* renamed from: d */
    public boolean mo9077d(RemoteMessage remoteMessage) {
        l.e(remoteMessage, "remoteMessage");
        return mo9078c() && remoteMessage.o2().containsValue("freshchat_user");
    }

    @Override // p193e.p194a.p1395y3.AbstractC21785c
    /* renamed from: e */
    public void mo9076e(String str) {
        l.e(str, AnalyticsConstants.TOKEN);
        Freshchat m9075f = m9075f();
        if (m9075f != null) {
            m9075f.setPushRegistrationToken(str);
        }
    }

    /* renamed from: f */
    public final Freshchat m9075f() {
        String str;
        FreshChatModel freshChatModel;
        FreshchatUser user;
        if (this.f60620a == null) {
            C20592g c20592g = (C20592g) this.f60625f.get();
            String mo10938g = ((AbstractC20597i) c20592g.f58053w5.m10941a(c20592g, C20592g.f57695p6[340])).mo10938g();
            if (!(!r.p(mo10938g))) {
                mo10938g = null;
            }
            if (mo10938g != null) {
                try {
                    byte[] decode = Base64.decode(mo10938g, 0);
                    l.d(decode, "Base64.decode(chatWithUsConfig, Base64.DEFAULT)");
                    str = new String(decode, b.a);
                } catch (Exception e) {
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    str = null;
                }
                if (str != null) {
                    try {
                        freshChatModel = (FreshChatModel) n.B1(FreshChatModel.class).cast(((k) this.f60621b.getValue()).g(str, FreshChatModel.class));
                    } catch (Exception e2) {
                        AssertionUtil.reportThrowableButNeverCrash(e2);
                        freshChatModel = null;
                    }
                    if (freshChatModel != null) {
                        this.f60620a = Freshchat.getInstance(this.f60622c);
                        FreshchatConfig freshchatConfig = new FreshchatConfig(freshChatModel.getId(), freshChatModel.getKey());
                        freshchatConfig.setDomain(freshChatModel.getDomain());
                        freshchatConfig.setCameraCaptureEnabled(true);
                        freshchatConfig.setGallerySelectionEnabled(true);
                        try {
                            Freshchat freshchat = this.f60620a;
                            if (freshchat != null) {
                                freshchat.init(freshchatConfig);
                            }
                        } catch (IllegalArgumentException e3) {
                            AssertionUtil.reportThrowableButNeverCrash(e3);
                        }
                        FreshchatNotificationConfig priority = new FreshchatNotificationConfig().setNotificationSoundEnabled(true).setSmallIcon(2131236603).setPriority(1);
                        Freshchat m9075f = m9075f();
                        if (m9075f != null) {
                            m9075f.setNotificationConfig(priority);
                        }
                        if (!((AbstractC8541a) this.f60623d.get()).getBoolean("fresh_chat_update")) {
                            ((AbstractC8541a) this.f60623d.get()).putBoolean("fresh_chat_update", true);
                            FirebaseMessaging m38318c = FirebaseMessaging.m38318c();
                            l.d(m38318c, "FirebaseMessaging.getInstance()");
                            m38318c.m38315f().m38535c(new C21788e(this));
                            Freshchat m9075f2 = m9075f();
                            if (m9075f2 != null && (user = m9075f2.getUser()) != null) {
                                l.d(user, "getFreshChatInstance()?.user ?: return");
                                AbstractC8541a abstractC8541a = (AbstractC8541a) this.f60623d.get();
                                String string = abstractC8541a.getString("profileFirstName");
                                if (string != null) {
                                    user.setFirstName(string);
                                }
                                String string2 = abstractC8541a.getString("profileLastName");
                                if (string2 != null) {
                                    user.setLastName(string2);
                                }
                                String string3 = abstractC8541a.getString("profileEmail");
                                if (string3 != null) {
                                    user.setEmail(string3);
                                }
                                String string4 = ((AbstractC8438a) this.f60624e.get()).getString("profileNumber");
                                if (string4 != null) {
                                    try {
                                        Freshchat m9075f3 = m9075f();
                                        if (m9075f3 != null) {
                                            m9075f3.identifyUser(((AbstractC21783a) this.f60627h.get()).mo9081b(string4), null);
                                            m9075f3.setUser(user);
                                        }
                                    } catch (MethodNotAllowedException e4) {
                                        e4.printStackTrace();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return this.f60620a;
    }
}
