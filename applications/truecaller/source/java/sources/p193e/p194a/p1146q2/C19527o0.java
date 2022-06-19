package p193e.p194a.p1146q2;

import android.text.TextUtils;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.data.types.Message;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import org.apache.avro.Schema;
import org.apache.avro.generic.GenericRecord;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17454b1;
import p193e.p194a.p1050l5.p1051a.C17463b4;
import p193e.p194a.p1050l5.p1051a.C17577i0;
import p193e.p194a.p1050l5.p1051a.C17619k2;
import p193e.p194a.p1050l5.p1051a.C17654m3;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1050l5.p1051a.C17778v0;
import p193e.p194a.p1050l5.p1051a.C17819y0;
import p193e.p194a.p1050l5.p1051a.C17837z1;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p244k.AbstractC6696o;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.q2.o0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/o0.class */
public final class C19527o0 implements AbstractC19510i0 {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC19463a0> f54199a;

    /* renamed from: b */
    public final AbstractC19462a f54200b;

    /* renamed from: c */
    public final AbstractC19512j0 f54201c;

    /* renamed from: d */
    public final f f54202d;

    @e(c = "com.truecaller.analytics.MessageAnalyticsImpl$logArchiveEvent$1", f = "MessageAnalyticsImpl.kt", l = {338}, m = "invokeSuspend")
    /* renamed from: e.a.q2.o0$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/o0$a.class */
    public static final class C19528a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f54203e;

        /* renamed from: g */
        public final /* synthetic */ long f54205g;

        /* renamed from: h */
        public final /* synthetic */ int f54206h;

        /* renamed from: i */
        public final /* synthetic */ String f54207i;

        /* renamed from: j */
        public final /* synthetic */ InboxTab f54208j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19528a(long j, int i, String str, InboxTab inboxTab, d dVar) {
            super(2, dVar);
            C19527o0.this = r5;
            this.f54205g = j;
            this.f54206h = i;
            this.f54207i = str;
            this.f54208j = inboxTab;
        }

        /* renamed from: i */
        public final d<s> m13201i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19528a(this.f54205g, this.f54206h, this.f54207i, this.f54208j, dVar);
        }

        /* renamed from: k */
        public final Object m13200k(Object obj, Object obj2) {
            return m13201i(obj, (d) obj2).m13199s(s.a);
        }

        /* renamed from: s */
        public final Object m13199s(Object obj) {
            Object obj2;
            a aVar = a.a;
            int i = this.f54203e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC19512j0 abstractC19512j0 = C19527o0.this.f54201c;
                long j = this.f54205g;
                int i2 = this.f54206h;
                this.f54203e = 1;
                C19516l0 c19516l0 = (C19516l0) abstractC19512j0;
                Objects.requireNonNull(c19516l0);
                Boolean a4 = i2 == 0 ? Boolean.FALSE : s1.a.a.a.v0.f.d.a4(c19516l0.f54149a, new C19525n0(c19516l0, j, null), this);
                obj2 = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            AbstractC19462a abstractC19462a = C19527o0.this.f54200b;
            String str = this.f54207i;
            LinkedHashMap m8655X = C22128a.m8655X(str, "type");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            String m13202x = C19527o0.this.m13202x(this.f54208j);
            l.e("tab", AnalyticsConstants.NAME);
            l.e(m13202x, "value");
            m8655X.put("tab", m13202x);
            l.e("splitConversation", AnalyticsConstants.NAME);
            m8655X.put("splitConversation", String.valueOf(booleanValue));
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b(str);
            m15852a.m15849c(linkedHashMap);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19462a.mo13275a(build);
            return s.a;
        }
    }

    @e(c = "com.truecaller.analytics.MessageAnalyticsImpl$logFailedSmsSendingNotification$1", f = "MessageAnalyticsImpl.kt", l = {447}, m = "invokeSuspend")
    /* renamed from: e.a.q2.o0$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/o0$b.class */
    public static final class C19529b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f54209e;

        /* renamed from: g */
        public final /* synthetic */ long f54211g;

        /* renamed from: h */
        public final /* synthetic */ String f54212h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19529b(long j, String str, d dVar) {
            super(2, dVar);
            C19527o0.this = r5;
            this.f54211g = j;
            this.f54212h = str;
        }

        /* renamed from: i */
        public final d<s> m13198i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19529b(this.f54211g, this.f54212h, dVar);
        }

        /* renamed from: k */
        public final Object m13197k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C19529b(this.f54211g, this.f54212h, dVar).m13196s(s.a);
        }

        /* renamed from: s */
        public final Object m13196s(Object obj) {
            a aVar = a.a;
            int i = this.f54209e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC19512j0 abstractC19512j0 = C19527o0.this.f54201c;
                long j = this.f54211g;
                this.f54209e = 1;
                Object m13249b = ((C19516l0) abstractC19512j0).m13249b(j, this);
                obj = m13249b;
                if (m13249b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            String str = (String) ((k) obj).a;
            if (l.a(str, "mms") || l.a(str, TokenResponseDto.METHOD_SMS)) {
                AbstractC19462a abstractC19462a = C19527o0.this.f54200b;
                LinkedHashMap m8655X = C22128a.m8655X("FailedSmsSendingNotification", "type");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                String str2 = this.f54212h;
                C22128a.m8553x0(C22128a.m8560v1("action", AnalyticsConstants.NAME, str2, "value", m8655X, "action", str2, "FailedSmsSendingNotification", linkedHashMap), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.analytics.MessageAnalyticsImpl$logMarkMessageSpam$1", f = "MessageAnalyticsImpl.kt", l = {405}, m = "invokeSuspend")
    /* renamed from: e.a.q2.o0$c */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/o0$c.class */
    public static final class C19530c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f54213e;

        /* renamed from: g */
        public final /* synthetic */ boolean f54215g;

        /* renamed from: h */
        public final /* synthetic */ Message f54216h;

        /* renamed from: i */
        public final /* synthetic */ String f54217i;

        /* renamed from: j */
        public final /* synthetic */ String f54218j;

        /* renamed from: k */
        public final /* synthetic */ String f54219k;

        /* renamed from: l */
        public final /* synthetic */ String f54220l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19530c(boolean z, Message message, String str, String str2, String str3, String str4, d dVar) {
            super(2, dVar);
            C19527o0.this = r5;
            this.f54215g = z;
            this.f54216h = message;
            this.f54217i = str;
            this.f54218j = str2;
            this.f54219k = str3;
            this.f54220l = str4;
        }

        /* renamed from: i */
        public final d<s> m13195i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19530c(this.f54215g, this.f54216h, this.f54217i, this.f54218j, this.f54219k, this.f54220l, dVar);
        }

        /* renamed from: k */
        public final Object m13194k(Object obj, Object obj2) {
            return m13195i(obj, (d) obj2).m13193s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0122  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x013a  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m13193s(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 562
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.C19527o0.C19530c.m13193s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.analytics.MessageAnalyticsImpl$logMessageNotificationMessage$1", f = "MessageAnalyticsImpl.kt", l = {432}, m = "invokeSuspend")
    /* renamed from: e.a.q2.o0$d */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/o0$d.class */
    public static final class C19531d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f54221e;

        /* renamed from: g */
        public final /* synthetic */ long f54223g;

        /* renamed from: h */
        public final /* synthetic */ String f54224h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19531d(long j, String str, d dVar) {
            super(2, dVar);
            C19527o0.this = r5;
            this.f54223g = j;
            this.f54224h = str;
        }

        /* renamed from: i */
        public final d<s> m13192i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19531d(this.f54223g, this.f54224h, dVar);
        }

        /* renamed from: k */
        public final Object m13191k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C19531d(this.f54223g, this.f54224h, dVar).m13190s(s.a);
        }

        /* renamed from: s */
        public final Object m13190s(Object obj) {
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f54221e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC19512j0 abstractC19512j0 = C19527o0.this.f54201c;
                long j = this.f54223g;
                this.f54221e = 1;
                Object m13249b = ((C19516l0) abstractC19512j0).m13249b(j, this);
                obj = m13249b;
                if (m13249b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            k kVar = (k) obj;
            if (!(((CharSequence) kVar.a).length() == 0)) {
                if (!(((CharSequence) kVar.b).length() == 0)) {
                    AbstractC19462a abstractC19462a = C19527o0.this.f54200b;
                    LinkedHashMap m8655X = C22128a.m8655X("MessageNotificationAction", "type");
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    String str = this.f54224h;
                    C22128a.m8695K0("action", AnalyticsConstants.NAME, str, "value", m8655X, "action", str);
                    CharSequence charSequence = (CharSequence) kVar.a;
                    l.e("messageType", AnalyticsConstants.NAME);
                    l.e(charSequence, "value");
                    m8655X.put("messageType", charSequence);
                    CharSequence charSequence2 = (CharSequence) kVar.b;
                    l.e("senderType", AnalyticsConstants.NAME);
                    l.e(charSequence2, "value");
                    m8655X.put("senderType", charSequence2);
                    C17697p3.C17699b m15852a = C17697p3.m15852a();
                    m15852a.m15850b("MessageNotificationAction");
                    m15852a.m15849c(linkedHashMap);
                    C22128a.m8553x0(m15852a, m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
                }
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.analytics.MessageAnalyticsImpl$logReadEvent$1", f = "MessageAnalyticsImpl.kt", l = {356}, m = "invokeSuspend")
    /* renamed from: e.a.q2.o0$e */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/o0$e.class */
    public static final class C19532e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f54225e;

        /* renamed from: f */
        public Object f54226f;

        /* renamed from: g */
        public Object f54227g;

        /* renamed from: h */
        public int f54228h;

        /* renamed from: j */
        public final /* synthetic */ List f54230j;

        /* renamed from: k */
        public final /* synthetic */ String f54231k;

        /* renamed from: l */
        public final /* synthetic */ boolean f54232l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19532e(List list, String str, boolean z, d dVar) {
            super(2, dVar);
            C19527o0.this = r5;
            this.f54230j = list;
            this.f54231k = str;
            this.f54232l = z;
        }

        /* renamed from: i */
        public final d<s> m13189i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19532e(this.f54230j, this.f54231k, this.f54232l, dVar);
        }

        /* renamed from: k */
        public final Object m13188k(Object obj, Object obj2) {
            return m13189i(obj, (d) obj2).m13187s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x007a  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x011a  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0572  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0070 A[EDGE_INSN: B:28:0x0070->B:10:0x0070 ?: BREAK  , SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x00f0 -> B:16:0x00f5). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m13187s(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 1398
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.C19527o0.C19532e.m13187s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C19527o0(AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC19462a abstractC19462a, AbstractC19512j0 abstractC19512j0, @Named("UI") f fVar) {
        l.e(abstractC19854f, "eventTracker");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19512j0, "analyticsDataHelper");
        l.e(fVar, "ui");
        this.f54199a = abstractC19854f;
        this.f54200b = abstractC19462a;
        this.f54201c = abstractC19512j0;
        this.f54202d = fVar;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: a */
    public void mo13225a(GenericRecord genericRecord) {
        l.e(genericRecord, "event");
        this.f54200b.mo13275a(genericRecord);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: b */
    public void mo13224b(AbstractC19549v abstractC19549v) {
        l.e(abstractC19549v, "event");
        this.f54200b.mo13274b(abstractC19549v);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: c */
    public void mo13223c(String str, long j, boolean z) {
        l.e(str, "action");
        if (j == -1 || z) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(h1.a, this.f54202d, (j0) null, new C19531d(j, str, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: d */
    public void mo13222d(boolean z, String str) {
        l.e(str, AnalyticsConstants.CONTEXT);
        AbstractC19462a abstractC19462a = this.f54200b;
        C17837z1.C17839b m15768a = C17837z1.m15768a();
        m15768a.m15765c("displayCallsInConversation");
        m15768a.m15764d(String.valueOf(z));
        m15768a.m15766b(str);
        C17837z1 build = m15768a.build();
        l.d(build, "AppSettingChanged.newBui…\n                .build()");
        abstractC19462a.mo13275a(build);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: e */
    public void mo13221e(Message message, AbstractC6696o abstractC6696o) {
        Entity entity;
        String str;
        l.e(message, "message");
        l.e(abstractC6696o, "result");
        boolean z = message.f13382c.f11569b == 4;
        String str2 = abstractC6696o instanceof AbstractC6696o.C6698b ? ((AbstractC6696o.C6698b) abstractC6696o).f22064a : abstractC6696o instanceof AbstractC6696o.C6697a ? ((AbstractC6696o.C6697a) abstractC6696o).f22063a : null;
        Entity[] entityArr = message.f13394o;
        l.d(entityArr, "message.entities");
        int length = entityArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                entity = null;
                break;
            }
            entity = entityArr[i];
            if (!entity.mo34894r()) {
                break;
            }
            i++;
        }
        String str3 = entity != null ? entity.f13307b : null;
        if (str3 != null) {
            l.e(str3, "contentType");
            str = r.n("text/vnd.plain-file", str3, true) ? "text/plain" : str3;
        } else {
            str = null;
        }
        Schema schema = C17819y0.f50681o;
        C17819y0.C17821b c17821b = new C17819y0.C17821b(null);
        Participant participant = message.f13382c;
        String str4 = z ? participant.f11572e : participant.f11570c;
        c17821b.validate(c17821b.fields()[2], str4);
        c17821b.f50699a = str4;
        c17821b.fieldSetFlags()[2] = true;
        c17821b.validate(c17821b.fields()[3], Boolean.valueOf(z));
        c17821b.f50700b = z;
        c17821b.fieldSetFlags()[3] = true;
        String str5 = message.f13397r;
        if (str5 == null) {
            str5 = "unknown";
        }
        c17821b.validate(c17821b.fields()[4], str5);
        c17821b.f50701c = str5;
        c17821b.fieldSetFlags()[4] = true;
        String str6 = message.f13396q;
        c17821b.validate(c17821b.fields()[5], str6);
        c17821b.f50702d = str6;
        c17821b.fieldSetFlags()[5] = true;
        String r1 = str3 != null ? n.r1(str3) : null;
        c17821b.validate(c17821b.fields()[6], r1);
        c17821b.f50703e = r1;
        c17821b.fieldSetFlags()[6] = true;
        c17821b.validate(c17821b.fields()[7], str);
        c17821b.f50704f = str;
        c17821b.fieldSetFlags()[7] = true;
        String m35025a = message.m35025a();
        l.d(m35025a, "message.buildMessageText()");
        boolean z2 = false;
        if (m35025a.length() > 0) {
            z2 = true;
        }
        c17821b.validate(c17821b.fields()[8], Boolean.valueOf(z2));
        c17821b.f50705g = z2;
        c17821b.fieldSetFlags()[8] = true;
        AbstractC6696o abstractC6696o2 = abstractC6696o;
        if (!(abstractC6696o instanceof AbstractC6696o.C6700d)) {
            abstractC6696o2 = null;
        }
        AbstractC6696o.C6700d c6700d = (AbstractC6696o.C6700d) abstractC6696o2;
        String str7 = null;
        if (c6700d != null) {
            str7 = c6700d.f22067a;
        }
        c17821b.validate(c17821b.fields()[9], str7);
        c17821b.f50706h = str7;
        c17821b.fieldSetFlags()[9] = true;
        c17821b.validate(c17821b.fields()[10], str2);
        c17821b.f50707i = str2;
        c17821b.fieldSetFlags()[10] = true;
        Integer valueOf = Integer.valueOf(message.f13402w);
        c17821b.validate(c17821b.fields()[11], valueOf);
        c17821b.f50708j = valueOf;
        c17821b.fieldSetFlags()[11] = true;
        boolean z3 = message.f13365A;
        c17821b.validate(c17821b.fields()[12], Boolean.valueOf(z3));
        c17821b.f50709k = z3;
        c17821b.fieldSetFlags()[12] = true;
        String str8 = C10480a.m26081D1(message) ? "urgent" : "regular";
        c17821b.validate(c17821b.fields()[13], str8);
        c17821b.f50710l = str8;
        c17821b.fieldSetFlags()[13] = true;
        this.f54199a.mo11854a().mo13111a(c17821b.build());
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: f */
    public void mo13220f(String str, long j) {
        l.e(str, "action");
        if (j == -1) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(h1.a, this.f54202d, (j0) null, new C19529b(j, str, null), 2, (Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00bb, code lost:
        if (r16 != null) goto L27;
     */
    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo13219g(java.util.Collection<? extends com.truecaller.data.entity.messaging.Participant> r11, java.lang.String r12, com.truecaller.messaging.data.types.InboxTab r13, java.lang.Long r14, com.truecaller.blocking.FiltersContract.Filters.EntityType r15) {
        /*
            Method dump skipped, instructions count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.C19527o0.mo13219g(java.util.Collection, java.lang.String, com.truecaller.messaging.data.types.InboxTab, java.lang.Long, com.truecaller.blocking.FiltersContract$Filters$EntityType):void");
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: h */
    public void mo13218h(int i, InboxTab inboxTab) {
        l.e(inboxTab, "inboxTab");
        AbstractC19462a abstractC19462a = this.f54200b;
        LinkedHashMap m8655X = C22128a.m8655X("BlockMultipleNumbers", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String m13202x = m13202x(inboxTab);
        l.e("tab", AnalyticsConstants.NAME);
        l.e(m13202x, "value");
        m8655X.put("tab", m13202x);
        linkedHashMap.put("value", Double.valueOf(i));
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("BlockMultipleNumbers");
        m15852a.m15849c(linkedHashMap);
        m15852a.m15848d(m8655X);
        C17697p3 build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        abstractC19462a.mo13275a(build);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: i */
    public void mo13217i(String str, String str2, String str3) {
        C22128a.m8703I0(str, "transport", str2, AnalyticsConstants.CONTEXT, str3, "uiControl");
        Schema schema = C17619k2.f49685e;
        C17619k2.C17621b c17621b = new C17619k2.C17621b(null);
        c17621b.validate(c17621b.fields()[2], str);
        c17621b.f49693a = str;
        c17621b.fieldSetFlags()[2] = true;
        c17621b.validate(c17621b.fields()[3], str2);
        c17621b.f49694b = str2;
        c17621b.fieldSetFlags()[3] = true;
        this.f54199a.mo11854a().mo13111a(c17621b.build());
        l.e("SwitchMessageTransport", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C17697p3.C17699b m8560v1 = C22128a.m8560v1("uiControl", AnalyticsConstants.NAME, str3, "value", linkedHashMap, "uiControl", str3, "SwitchMessageTransport", C22128a.m8649Z("transport", AnalyticsConstants.NAME, str, "value", linkedHashMap, "transport", str, AnalyticsConstants.CONTEXT, AnalyticsConstants.NAME, str2, "value", AnalyticsConstants.CONTEXT, str2));
        m8560v1.m15848d(linkedHashMap);
        GenericRecord build = m8560v1.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        this.f54200b.mo13275a(build);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: j */
    public void mo13216j(String str, Long l) {
        l.e(str, "action");
        l.e("UrgentMessageBubble", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap m8652Y = C22128a.m8652Y("action", AnalyticsConstants.NAME, str, "value", linkedHashMap, "action", str);
        if (l != null) {
            l.e("timeToReact", AnalyticsConstants.NAME);
            m8652Y.put("timeToReact", Double.valueOf(l.longValue()));
        }
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("UrgentMessageBubble");
        m15852a.m15849c(m8652Y);
        m15852a.m15848d(linkedHashMap);
        C17697p3 build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        mo13225a(build);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0099, code lost:
        if (r9 != null) goto L24;
     */
    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo13215k(java.util.Collection<? extends com.truecaller.data.entity.messaging.Participant> r6) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.C19527o0.mo13215k(java.util.Collection):void");
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: l */
    public void mo13214l(String str) {
        l.e(str, "eventName");
        AbstractC19462a abstractC19462a = this.f54200b;
        C22128a.m8684N0(str, new LinkedHashMap(), C22128a.m8655X(str, "type"), "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: m */
    public void mo13213m(String str, InboxTab inboxTab) {
        l.e(str, "value");
        l.e(inboxTab, "tab");
        AbstractC19462a abstractC19462a = this.f54200b;
        LinkedHashMap m8655X = C22128a.m8655X("ToggleInboxThreadDisplay", "type");
        LinkedHashMap m8652Y = C22128a.m8652Y("value", AnalyticsConstants.NAME, str, "value", m8655X, "value", str);
        String m13202x = m13202x(inboxTab);
        l.e("tab", AnalyticsConstants.NAME);
        l.e(m13202x, "value");
        m8655X.put("tab", m13202x);
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("ToggleInboxThreadDisplay");
        m15852a.m15849c(m8652Y);
        m15852a.m15848d(m8655X);
        C17697p3 build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        abstractC19462a.mo13275a(build);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: n */
    public void mo13212n(String str, InboxTab inboxTab, Integer num, int i) {
        l.e(str, "action");
        l.e(inboxTab, "tab");
        l.e("InboxOverflowAction", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("value", Double.valueOf(i));
        l.e("action", AnalyticsConstants.NAME);
        l.e(str, "value");
        linkedHashMap.put("action", str);
        String m13202x = m13202x(inboxTab);
        l.e("tab", AnalyticsConstants.NAME);
        l.e(m13202x, "value");
        linkedHashMap.put("tab", m13202x);
        if (num != null) {
            int intValue = num.intValue();
            String str2 = intValue < 20 ? "0-20" : intValue < 50 ? "20-50" : intValue < 100 ? "50-100" : intValue < 500 ? "100-500" : "500+";
            C22128a.m8695K0("inboxSize", AnalyticsConstants.NAME, str2, "value", linkedHashMap, "inboxSize", str2);
        }
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("InboxOverflowAction");
        m15852a.m15849c(linkedHashMap2);
        m15852a.m15848d(linkedHashMap);
        GenericRecord build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        this.f54200b.mo13275a(build);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: o */
    public void mo13211o(List<Float> list, String str, String str2) {
        float f;
        l.e(list, "confidenceValues");
        l.e(str, "sourceLang");
        l.e(str2, "deviceLang");
        Iterator<T> it = list.iterator();
        if (it.hasNext()) {
            float floatValue = ((Number) it.next()).floatValue();
            while (true) {
                f = floatValue;
                if (!it.hasNext()) {
                    break;
                }
                floatValue = Math.min(f, ((Number) it.next()).floatValue());
            }
            Iterator<T> it2 = list.iterator();
            if (!it2.hasNext()) {
                throw new NoSuchElementException();
            }
            float floatValue2 = ((Number) it2.next()).floatValue();
            while (true) {
                float f2 = floatValue2;
                if (!it2.hasNext()) {
                    float j = (float) s1.u.i.j(list);
                    AbstractC19462a abstractC19462a = this.f54200b;
                    LinkedHashMap m8655X = C22128a.m8655X("TextMessageTranslationConfidence", "type");
                    LinkedHashMap m8649Z = C22128a.m8649Z("sourceLanguage", AnalyticsConstants.NAME, str, "value", m8655X, "sourceLanguage", str, "deviceLanguage", AnalyticsConstants.NAME, str2, "value", "deviceLanguage", str2);
                    int size = list.size();
                    l.e("numMessages", AnalyticsConstants.NAME);
                    m8649Z.put("numMessages", Double.valueOf(size));
                    float f3 = 100;
                    int m4001J2 = C25225a.m4001J2(f * f3);
                    l.e("minConf", AnalyticsConstants.NAME);
                    m8649Z.put("minConf", Double.valueOf(m4001J2));
                    int m4001J22 = C25225a.m4001J2(f2 * f3);
                    l.e("maxConf", AnalyticsConstants.NAME);
                    m8649Z.put("maxConf", Double.valueOf(m4001J22));
                    int m4001J23 = C25225a.m4001J2(j * f3);
                    l.e("meanConf", AnalyticsConstants.NAME);
                    m8649Z.put("meanConf", Double.valueOf(m4001J23));
                    C17697p3.C17699b m15852a = C17697p3.m15852a();
                    m15852a.m15850b("TextMessageTranslationConfidence");
                    m15852a.m15849c(m8649Z);
                    m15852a.m15848d(m8655X);
                    C17697p3 build = m15852a.build();
                    l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
                    abstractC19462a.mo13275a(build);
                    return;
                }
                floatValue2 = Math.max(f2, ((Number) it2.next()).floatValue());
            }
        } else {
            throw new NoSuchElementException();
        }
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: p */
    public void mo13210p(Message message, String str, int i, boolean z) {
        l.e(message, "message");
        s1.a.a.a.v0.f.d.w2(h1.a, this.f54202d, (j0) null, new C19530c(z, message, n.q1(message), z ? "spam" : "notSpam", i != 2 ? i != 3 ? i != 4 ? "personal" : "promotional" : "spam" : "business", str, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: q */
    public void mo13209q(String str, String str2, Participant[] participantArr, boolean z, String str3) {
        String str4;
        l.e(str, "userInteraction");
        l.e(str2, "analyticsId");
        l.e(participantArr, "participants");
        boolean m25914p1 = C10480a.m25914p1(participantArr);
        if (m25914p1) {
            Participant participant = (Participant) C25225a.m3830v0(participantArr);
            if (participant != null) {
                str4 = participant.f11572e;
            }
            str4 = null;
        } else {
            Participant participant2 = (Participant) C25225a.m3830v0(participantArr);
            if (participant2 != null) {
                str4 = participant2.f11570c;
            }
            str4 = null;
        }
        if (str4 == null) {
            str4 = "";
        }
        Schema schema = C17778v0.f50492i;
        C17778v0.C17780b c17780b = new C17778v0.C17780b(null);
        c17780b.validate(c17780b.fields()[2], str4);
        c17780b.f50504a = str4;
        c17780b.fieldSetFlags()[2] = true;
        c17780b.validate(c17780b.fields()[3], Boolean.valueOf(m25914p1));
        c17780b.f50505b = m25914p1;
        c17780b.fieldSetFlags()[3] = true;
        c17780b.validate(c17780b.fields()[4], str);
        c17780b.f50506c = str;
        c17780b.fieldSetFlags()[4] = true;
        c17780b.validate(c17780b.fields()[5], str2);
        c17780b.f50507d = str2;
        c17780b.fieldSetFlags()[5] = true;
        String r1 = n.r1(str3);
        c17780b.validate(c17780b.fields()[6], r1);
        c17780b.f50508e = r1;
        c17780b.fieldSetFlags()[6] = true;
        c17780b.validate(c17780b.fields()[7], Boolean.valueOf(z));
        c17780b.f50509f = z;
        c17780b.fieldSetFlags()[7] = true;
        this.f54199a.mo11854a().mo13111a(c17780b.build());
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: r */
    public void mo13208r(String str) {
        l.e(str, "chatType");
        AbstractC19463a0 mo11854a = this.f54199a.mo11854a();
        Schema schema = C17577i0.f49475d;
        C17577i0.C17579b c17579b = new C17577i0.C17579b(null);
        c17579b.validate(c17579b.fields()[2], str);
        c17579b.f49482a = str;
        c17579b.fieldSetFlags()[2] = true;
        mo11854a.mo13111a(c17579b.build());
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: s */
    public void mo13207s(String str, String str2, String str3, Participant[] participantArr) {
        C22128a.m8703I0(str, "userInteraction", str2, "analyticsId", str3, "transportName");
        l.e(participantArr, "participants");
        ArrayList arrayList = new ArrayList(participantArr.length);
        for (Participant participant : participantArr) {
            l.e(participant, "participant");
            C17654m3.C17656b m15891a = C17654m3.m15891a();
            m15891a.m15887d(participant.m35447m());
            m15891a.m15889b(!TextUtils.isEmpty(participant.f11579l));
            m15891a.m15885f(Boolean.valueOf(participant.f11576i == 1));
            m15891a.m15886e(Boolean.valueOf(participant.f11577j));
            m15891a.m15884g(Boolean.valueOf(participant.f11576i == 2));
            m15891a.m15882i(Boolean.valueOf(participant.m35445o()));
            m15891a.m15888c(Boolean.valueOf((participant.f11581n & 64) != 0));
            m15891a.m15883h(Integer.valueOf(Math.max(0, participant.f11583p)));
            C17654m3 build = m15891a.build();
            Schema schema = C17463b4.f48938d;
            C17463b4.C17465b c17465b = new C17463b4.C17465b(null);
            c17465b.m16015c(participant.m35452g());
            String m35453f = participant.m35453f();
            c17465b.validate(c17465b.fields()[1], m35453f);
            c17465b.f48946b = m35453f;
            c17465b.fieldSetFlags()[1] = true;
            c17465b.m16016b(build);
            C17463b4 build2 = c17465b.build();
            l.d(build2, "com.truecaller.tracking.…nfo)\n            .build()");
            arrayList.add(build2);
        }
        Schema schema2 = C17454b1.f48888g;
        C17454b1.C17456b c17456b = new C17454b1.C17456b(null);
        c17456b.validate(c17456b.fields()[2], arrayList);
        c17456b.f48898a = arrayList;
        c17456b.fieldSetFlags()[2] = true;
        c17456b.validate(c17456b.fields()[3], str);
        c17456b.f48899b = str;
        c17456b.fieldSetFlags()[3] = true;
        c17456b.validate(c17456b.fields()[4], str3);
        c17456b.f48900c = str3;
        c17456b.fieldSetFlags()[4] = true;
        c17456b.validate(c17456b.fields()[5], str2);
        c17456b.f48901d = str2;
        c17456b.fieldSetFlags()[5] = true;
        this.f54199a.mo11854a().mo13111a(c17456b.build());
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: t */
    public void mo13206t(boolean z, List<Integer> list, int i, String str, String str2) {
        boolean z2;
        String str3;
        C17697p3 c17697p3;
        boolean z3;
        boolean z4;
        l.e(list, "transportList");
        l.e(str, AnalyticsConstants.CONTEXT);
        if (!list.isEmpty()) {
            for (Number number : list) {
                if (!(number.intValue() == 2)) {
                    z2 = false;
                    break;
                }
            }
        }
        z2 = true;
        if (z2) {
            str3 = "im";
        } else {
            if (!list.isEmpty()) {
                for (Number number2 : list) {
                    int intValue = number2.intValue();
                    if (!(intValue == 0 || intValue == 4)) {
                        z3 = false;
                        break;
                    }
                }
            }
            z3 = true;
            if (z3) {
                str3 = TokenResponseDto.METHOD_SMS;
            } else {
                if (!list.isEmpty()) {
                    for (Number number3 : list) {
                        int intValue2 = number3.intValue();
                        if (!(intValue2 == 1 || intValue2 == 7)) {
                            z4 = false;
                            break;
                        }
                    }
                }
                z4 = true;
                str3 = z4 ? "mms" : "mixed";
            }
        }
        if (z) {
            LinkedHashMap m8655X = C22128a.m8655X("MarkMessageAsImportant", "type");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("value", Double.valueOf(i));
            l.e(AnalyticsConstants.CONTEXT, AnalyticsConstants.NAME);
            l.e(str, "value");
            m8655X.put(AnalyticsConstants.CONTEXT, str);
            C22128a.m8695K0("type", AnalyticsConstants.NAME, str3, "value", m8655X, "type", str3);
            if (str2 != null) {
                C22128a.m8695K0("initiatedVia", AnalyticsConstants.NAME, str2, "value", m8655X, "initiatedVia", str2);
            }
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("MarkMessageAsImportant");
            m15852a.m15849c(linkedHashMap);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            c17697p3 = build;
        } else {
            LinkedHashMap m8655X2 = C22128a.m8655X("UnmarkMessageAsImportant", "type");
            LinkedHashMap m8649Z = C22128a.m8649Z(AnalyticsConstants.CONTEXT, AnalyticsConstants.NAME, str, "value", m8655X2, AnalyticsConstants.CONTEXT, str, "type", AnalyticsConstants.NAME, str3, "value", "type", str3);
            C17697p3.C17699b m15852a2 = C17697p3.m15852a();
            m15852a2.m15850b("UnmarkMessageAsImportant");
            m15852a2.m15849c(m8649Z);
            m15852a2.m15848d(m8655X2);
            C17697p3 build2 = m15852a2.build();
            l.d(build2, "GenericAnalyticsEvent.ne…rties(properties).build()");
            c17697p3 = build2;
        }
        mo13225a(c17697p3);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: u */
    public void mo13205u(boolean z, long j, int i, InboxTab inboxTab) {
        l.e(inboxTab, "tab");
        s1.a.a.a.v0.f.d.w2(h1.a, this.f54202d, (j0) null, new C19528a(j, i, z ? "ArchiveConversation" : "UnarchiveConversation", inboxTab, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: v */
    public void mo13204v(List<Long> list, String str, boolean z) {
        l.e(list, "messageIds");
        l.e(str, "analyticsContext");
        s1.a.a.a.v0.f.d.w2(h1.a, this.f54202d, (j0) null, new C19532e(list, str, z, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19510i0
    /* renamed from: w */
    public void mo13203w(int i) {
        AbstractC19462a abstractC19462a = this.f54200b;
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("PersonalTabUnreadMessagesBannerClick", Double.valueOf(i), null, null);
        l.d(c19505a, "AnalyticsEvent.Builder(M…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
    }

    /* renamed from: x */
    public final String m13202x(InboxTab inboxTab) {
        String str;
        int ordinal = inboxTab.ordinal();
        if (ordinal == 0) {
            str = "personal";
        } else if (ordinal == 1) {
            str = "other";
        } else if (ordinal == 2) {
            str = "business";
        } else if (ordinal == 3) {
            str = "spam";
        } else if (ordinal != 4) {
            throw new s1.i();
        } else {
            str = "promotional";
        }
        return str;
    }
}
