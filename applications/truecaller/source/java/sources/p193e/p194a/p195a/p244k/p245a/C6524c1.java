package p193e.p194a.p195a.p244k.p245a;

import android.content.ContentResolver;
import android.net.Uri;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.Int64Value;
import com.truecaller.api.services.messenger.p138v1.models.UserInfo;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p997k3.p998j.C16461b;
import p193e.p194a.p997k3.p998j.C16487j;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.c1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/c1.class */
public final class C6524c1 implements AbstractC6520b1 {

    /* renamed from: a */
    public final f f21567a;

    /* renamed from: b */
    public final C16487j f21568b;

    /* renamed from: c */
    public final C16461b f21569c;

    /* renamed from: d */
    public final AbstractC19854f<AbstractC6543e1> f21570d;

    /* renamed from: e */
    public final ContentResolver f21571e;

    @e(c = "com.truecaller.messaging.transport.im.ImUserInfoHelperImpl$maybeSaveUserInfoAsync$1", f = "ImUserInfoHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.a.c1$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/c1$a.class */
    public static final class C6525a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Participant f21573f;

        /* renamed from: g */
        public final /* synthetic */ String f21574g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6525a(Participant participant, String str, d dVar) {
            super(2, dVar);
            C6524c1.this = r5;
            this.f21573f = participant;
            this.f21574g = str;
        }

        /* renamed from: i */
        public final d<s> m30812i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6525a(this.f21573f, this.f21574g, dVar);
        }

        /* renamed from: k */
        public final Object m30811k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6524c1 c6524c1 = C6524c1.this;
            Participant participant = this.f21573f;
            String str = this.f21574g;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            UserInfo.C3241b newBuilder = UserInfo.newBuilder();
            String str2 = participant.f11579l;
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setName(str2);
            String str3 = participant.f11574g;
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setTcId(str3);
            String str4 = participant.f11580m;
            if (!(str4 == null || str4.length() == 0)) {
                String str5 = participant.f11580m;
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setAvatar(str5);
            }
            c6524c1.mo30817d(C25225a.m3938Z1(new k(str, newBuilder.build())));
            return sVar;
        }

        /* renamed from: s */
        public final Object m30810s(Object obj) {
            C25225a.m3932a3(obj);
            UserInfo.C3241b newBuilder = UserInfo.newBuilder();
            String str = this.f21573f.f11579l;
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setName(str);
            String str2 = this.f21573f.f11574g;
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setTcId(str2);
            String str3 = this.f21573f.f11580m;
            if (!(str3 == null || str3.length() == 0)) {
                String str4 = this.f21573f.f11580m;
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.setAvatar(str4);
            }
            C6524c1.this.mo30817d(C25225a.m3938Z1(new k(this.f21574g, newBuilder.build())));
            return s.a;
        }
    }

    @Inject
    public C6524c1(@Named("IO") f fVar, C16487j c16487j, C16461b c16461b, AbstractC19854f<AbstractC6543e1> abstractC19854f, ContentResolver contentResolver) {
        l.e(fVar, "asyncCoroutineContext");
        l.e(c16487j, "rawContactDao");
        l.e(c16461b, "aggregatedContactDao");
        l.e(abstractC19854f, "imUserManager");
        l.e(contentResolver, "contentResolver");
        this.f21567a = fVar;
        this.f21568b = c16487j;
        this.f21569c = c16461b;
        this.f21570d = abstractC19854f;
        this.f21571e = contentResolver;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6520b1
    /* renamed from: a */
    public String mo30820a(String str) {
        l.e(str, "tcId");
        Contact m17327g = this.f21568b.m17327g(str);
        return m17327g != null ? m17327g.m35566G() : null;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6520b1
    /* renamed from: b */
    public boolean mo30819b(String str) {
        boolean z;
        l.e(str, "imId");
        try {
            ContentResolver contentResolver = this.f21571e;
            Uri m28297w = C8582g0.m28297w();
            l.d(m28297w, "TruecallerContract.ImUsersTable.getContentUri()");
            String m13696H = C19286f.m13696H(contentResolver, m28297w, "tc_id", "im_peer_id = ?", new String[]{str}, null, 16);
            z = false;
            if (m13696H != null) {
                Contact m17362j = this.f21569c.m17362j(m13696H);
                Boolean valueOf = m17362j != null ? Boolean.valueOf(m17362j.m35495t0()) : null;
                z = false;
                if (valueOf != null) {
                    z = valueOf.booleanValue();
                }
            }
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6520b1
    /* renamed from: c */
    public String mo30818c(String str) {
        l.e(str, "tcId");
        Contact m17362j = this.f21569c.m17362j(str);
        return m17362j != null ? m17362j.m35566G() : null;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6520b1
    /* renamed from: d */
    public void mo30817d(Map<String, UserInfo> map) {
        l.e(map, "userInfoMap");
        for (Map.Entry<String, UserInfo> entry : map.entrySet()) {
            String key = entry.getKey();
            UserInfo value = entry.getValue();
            String tcId = value.getTcId();
            l.d(tcId, "userInfo.tcId");
            m30814g(m30813h(tcId, null), value, key);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6520b1
    /* renamed from: e */
    public void mo30816e(C6638v1 c6638v1) {
        l.e(c6638v1, "senderInfo");
        if (!c6638v1.f21915b.hasPhoneNumber()) {
            mo30817d(C25225a.m3938Z1(new k(c6638v1.f21915b.getId(), c6638v1.f21914a)));
            return;
        }
        StringBuilder m8558w = C22128a.m8558w('+');
        Int64Value phoneNumber = c6638v1.f21915b.getPhoneNumber();
        l.d(phoneNumber, "senderInfo.sender.phoneNumber");
        m8558w.append(phoneNumber.getValue());
        String sb = m8558w.toString();
        String tcId = c6638v1.f21914a.getTcId();
        l.d(tcId, "senderInfo.userInfo.tcId");
        Contact m30813h = m30813h(tcId, sb);
        UserInfo userInfo = c6638v1.f21914a;
        String id = c6638v1.f21915b.getId();
        l.d(id, "senderInfo.sender.id");
        m30814g(m30813h, userInfo, id);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
        if (r0.length() == 0) goto L16;
     */
    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6520b1
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo30815f(com.truecaller.data.entity.messaging.Participant r11) {
        /*
            r10 = this;
            r0 = r11
            java.lang.String r1 = "participant"
            s1.z.c.l.e(r0, r1)
            r0 = r11
            java.lang.String r0 = r0.f11570c
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L6b
            r0 = r11
            java.lang.String r0 = r0.f11579l
            r13 = r0
            r0 = 0
            r14 = r0
            r0 = r13
            if (r0 == 0) goto L2b
            r0 = r13
            int r0 = r0.length()
            if (r0 != 0) goto L25
            goto L2b
        L25:
            r0 = 0
            r15 = r0
            goto L2e
        L2b:
            r0 = 1
            r15 = r0
        L2e:
            r0 = r15
            if (r0 != 0) goto L6b
            r0 = r11
            java.lang.String r0 = r0.f11574g
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L47
            r0 = r14
            r15 = r0
            r0 = r13
            int r0 = r0.length()
            if (r0 != 0) goto L4a
        L47:
            r0 = 1
            r15 = r0
        L4a:
            r0 = r15
            if (r0 == 0) goto L52
            goto L6b
        L52:
            q3.a.h1 r0 = q3.a.h1.a
            r1 = r10
            s1.w.f r1 = r1.f21567a
            r2 = 0
            e.a.a.k.a.c1$a r3 = new e.a.a.k.a.c1$a
            r4 = r3
            r5 = r10
            r6 = r11
            r7 = r12
            r8 = 0
            r4.<init>(r6, r7, r8)
            r4 = 2
            r5 = 0
            q3.a.p1 r0 = s1.a.a.a.v0.f.d.w2(r0, r1, r2, r3, r4, r5)
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6524c1.mo30815f(com.truecaller.data.entity.messaging.Participant):void");
    }

    /* renamed from: g */
    public final void m30814g(Contact contact, UserInfo userInfo, String str) {
        contact.m35546S0(userInfo.getName());
        contact.m35550P0(userInfo.getAvatar());
        ((ContactDto.Contact) contact.mRow).imId = str;
        this.f21568b.m17331c(contact);
        AbstractC6543e1 mo11854a = this.f21570d.mo11854a();
        String tcId = userInfo.getTcId();
        l.d(tcId, "userInfo.tcId");
        mo11854a.mo30786f(str, tcId, true);
    }

    /* renamed from: h */
    public final Contact m30813h(String str, String str2) {
        Contact contact;
        Contact m17327g = this.f21568b.m17327g(str);
        if (m17327g != null) {
            contact = m17327g;
        } else {
            Contact contact2 = new Contact();
            contact2.setTcId(str);
            ((ContactDto.Contact) contact2.mRow).defaultNumber = str2;
            contact2.setSource(1);
            contact2.m35539X0(0L);
            boolean z = true;
            if (str2 != null) {
                z = str2.length() == 0;
            }
            ((ContactDto.Contact) contact2.mRow).access = z ? "private" : "public";
            contact = contact2;
        }
        return contact;
    }
}
