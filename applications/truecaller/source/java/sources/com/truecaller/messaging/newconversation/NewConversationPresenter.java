package com.truecaller.messaging.newconversation;

import android.content.Context;
import android.net.Uri;
import android.os.CancellationSignal;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.ForwardContentItem;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.LocationEntity;
import com.truecaller.messaging.data.types.Mention;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import kotlin.Metadata;
import o3.a;
import org.apache.avro.Schema;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17559h0;
import p193e.p194a.p1050l5.p1051a.C17613k0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19057m;
import p193e.p194a.p1114o5.AbstractC19091q0;
import p193e.p194a.p1114o5.AbstractC19109u1;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6252g0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p224d.AbstractC5918f;
import p193e.p194a.p195a.p224d.AbstractC5926n;
import p193e.p194a.p195a.p224d.AbstractC5928p;
import p193e.p194a.p195a.p224d.AbstractC5931s;
import p193e.p194a.p195a.p224d.AbstractC5936t;
import p193e.p194a.p195a.p224d.AbstractC5937u;
import p193e.p194a.p195a.p224d.AbstractC5938v;
import p193e.p194a.p195a.p224d.C5939w;
import p193e.p194a.p195a.p224d.C5940x;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.p234l0.C6230f;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p244k.p245a.AbstractC6653z0;
import p193e.p194a.p195a.p244k.p245a.C6540d2;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p712e4.AbstractC13497p;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.f0.h;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/newconversation/NewConversationPresenter.class */
public final class NewConversationPresenter extends AbstractC5936t implements AbstractC5937u {

    /* renamed from: A */
    public final C20592g f13581A;

    /* renamed from: B */
    public final AbstractC19854f<AbstractC6485m> f13582B;

    /* renamed from: C */
    public final AbstractC6392i0 f13583C;

    /* renamed from: D */
    public final AbstractC19854f<AbstractC19463a0> f13584D;

    /* renamed from: E */
    public final AbstractC8438a f13585E;

    /* renamed from: J */
    public final AbstractC19109u1 f13586J;

    /* renamed from: K */
    public final Context f13587K;

    /* renamed from: L */
    public final AbstractC19870l f13588L;

    /* renamed from: M */
    public final AbstractC6653z0 f13589M;

    /* renamed from: N */
    public final AbstractC19057m f13590N;

    /* renamed from: O */
    public final AbstractC6394b f13591O;

    /* renamed from: P */
    public final a<AbstractC19854f<AbstractC6233m>> f13592P;

    /* renamed from: d */
    public final h f13593d = new h("\\+?[\\d\\s()-]+");

    /* renamed from: e */
    public String f13594e = "";

    /* renamed from: f */
    public CancellationSignal f13595f;

    /* renamed from: g */
    public p1 f13596g;

    /* renamed from: h */
    public SendType f13597h;

    /* renamed from: i */
    public ArrayList<ForwardContentItem> f13598i;

    /* renamed from: j */
    public AbstractC19844a f13599j;

    /* renamed from: k */
    public final f f13600k;

    /* renamed from: l */
    public final f f13601l;

    /* renamed from: m */
    public final long f13602m;

    /* renamed from: n */
    public final boolean f13603n;

    /* renamed from: o */
    public final AbstractC8621z f13604o;

    /* renamed from: p */
    public final AbstractC19022f0 f13605p;

    /* renamed from: q */
    public final AbstractC19510i0 f13606q;

    /* renamed from: r */
    public final a<AbstractC6248w> f13607r;

    /* renamed from: s */
    public final AbstractC5854d f13608s;

    /* renamed from: t */
    public final AbstractC13497p f13609t;

    /* renamed from: u */
    public final AbstractC5918f f13610u;

    /* renamed from: v */
    public final AbstractC6252g0 f13611v;

    /* renamed from: w */
    public final AbstractC19854f<AbstractC19091q0> f13612w;

    /* renamed from: x */
    public final AbstractC5926n f13613x;

    /* renamed from: y */
    public final AbstractC5928p f13614y;

    /* renamed from: z */
    public final AbstractC5931s f13615z;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0081\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/messaging/newconversation/NewConversationPresenter$SendType;", "", "<init>", "(Ljava/lang/String;I)V", "IM", "SMS", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/newconversation/NewConversationPresenter$SendType.class */
    public enum SendType {
        IM,
        SMS
    }

    @e(c = "com.truecaller.messaging.newconversation.NewConversationPresenter", f = "NewConversationPresenter.kt", l = {795}, m = "createGroup")
    /* renamed from: com.truecaller.messaging.newconversation.NewConversationPresenter$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/newconversation/NewConversationPresenter$a.class */
    public static final class C4230a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f13617d;

        /* renamed from: e */
        public int f13618e;

        /* renamed from: g */
        public Object f13620g;

        /* renamed from: h */
        public Object f13621h;

        /* renamed from: i */
        public Object f13622i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4230a(d dVar) {
            super(dVar);
            NewConversationPresenter.this = r4;
        }

        /* renamed from: s */
        public final Object m34936s(Object obj) {
            this.f13617d = obj;
            this.f13618e |= Integer.MIN_VALUE;
            return NewConversationPresenter.this.m34947Oj(null, null, null, this);
        }
    }

    /* renamed from: com.truecaller.messaging.newconversation.NewConversationPresenter$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/newconversation/NewConversationPresenter$b.class */
    public static final class C4231b<R> implements AbstractC19851d0<Participant> {

        /* renamed from: b */
        public final /* synthetic */ List f13624b;

        public C4231b(List list) {
            NewConversationPresenter.this = r4;
            this.f13624b = list;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Participant participant) {
            Participant participant2 = participant;
            NewConversationPresenter newConversationPresenter = NewConversationPresenter.this;
            List<Participant> list = this.f13624b;
            AbstractC5938v abstractC5938v = (AbstractC5938v) newConversationPresenter.f57683a;
            if (abstractC5938v != null) {
                abstractC5938v.mo32153f(false);
                abstractC5938v.mo32144m3(true);
                if (participant2 == null) {
                    abstractC5938v.mo32138w2(C2752R.string.NewImGroupCreateError);
                    return;
                }
                abstractC5938v.mo32141s0(participant2);
                abstractC5938v.mo32165Go();
                abstractC5938v.mo32166C();
                AbstractC19463a0 mo11854a = newConversationPresenter.f13584D.mo11854a();
                Schema schema = C17559h0.f49390e;
                C17559h0.C17561b c17561b = new C17559h0.C17561b(null);
                String str = participant2.f11572e;
                c17561b.validate(c17561b.fields()[2], str);
                c17561b.f49398a = str;
                c17561b.fieldSetFlags()[2] = true;
                ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
                for (Participant participant3 : list) {
                    arrayList.add(participant3.f11570c);
                }
                c17561b.validate(c17561b.fields()[3], arrayList);
                c17561b.f49399b = arrayList;
                c17561b.fieldSetFlags()[3] = true;
                mo11854a.mo13111a(c17561b.build());
            }
        }
    }

    @e(c = "com.truecaller.messaging.newconversation.NewConversationPresenter$initiateMessageForwarding$1", f = "NewConversationPresenter.kt", l = {582, 591, 609}, m = "invokeSuspend")
    /* renamed from: com.truecaller.messaging.newconversation.NewConversationPresenter$c */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/newconversation/NewConversationPresenter$c.class */
    public static final class C4232c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f13625e;

        /* renamed from: f */
        public Object f13626f;

        /* renamed from: g */
        public Object f13627g;

        /* renamed from: h */
        public Object f13628h;

        /* renamed from: i */
        public Object f13629i;

        /* renamed from: j */
        public Object f13630j;

        /* renamed from: k */
        public int f13631k;

        /* renamed from: m */
        public final /* synthetic */ List f13633m;

        /* renamed from: n */
        public final /* synthetic */ List f13634n;

        /* renamed from: o */
        public final /* synthetic */ boolean f13635o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4232c(List list, List list2, boolean z, d dVar) {
            super(2, dVar);
            NewConversationPresenter.this = r5;
            this.f13633m = list;
            this.f13634n = list2;
            this.f13635o = z;
        }

        /* renamed from: i */
        public final d<s> m34935i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4232c(this.f13633m, this.f13634n, this.f13635o, dVar);
        }

        /* renamed from: k */
        public final Object m34934k(Object obj, Object obj2) {
            return m34935i(obj, (d) obj2).m34933s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x0150, code lost:
            if (r10 != null) goto L33;
         */
        /* JADX WARN: Removed duplicated region for block: B:104:0x0470  */
        /* JADX WARN: Removed duplicated region for block: B:157:0x061e  */
        /* JADX WARN: Removed duplicated region for block: B:405:0x0c3b  */
        /* JADX WARN: Removed duplicated region for block: B:435:0x0806 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:438:0x0880 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:440:0x08fa A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:442:0x097c A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:55:0x022e  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x02e9  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x02f6  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x0344  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0362  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0419  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0426  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x02c8 -> B:64:0x02d3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x03fc -> B:90:0x0402). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m34933s(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 3144
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.newconversation.NewConversationPresenter.C4232c.m34933s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: com.truecaller.messaging.newconversation.NewConversationPresenter$d */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/newconversation/NewConversationPresenter$d.class */
    public static final class C4233d extends m implements s1.z.b.l<C6230f, CharSequence> {

        /* renamed from: b */
        public static final C4233d f13636b = new C4233d();

        public C4233d() {
            super(1);
        }

        /* renamed from: d */
        public Object m34932d(Object obj) {
            C6230f c6230f = (C6230f) obj;
            l.e(c6230f, "it");
            return c6230f.m31722a();
        }
    }

    @e(c = "com.truecaller.messaging.newconversation.NewConversationPresenter", f = "NewConversationPresenter.kt", l = {848}, m = "uploadAvatar")
    /* renamed from: com.truecaller.messaging.newconversation.NewConversationPresenter$e */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/newconversation/NewConversationPresenter$e.class */
    public static final class C4234e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f13637d;

        /* renamed from: e */
        public int f13638e;

        /* renamed from: g */
        public Object f13640g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4234e(d dVar) {
            super(dVar);
            NewConversationPresenter.this = r4;
        }

        /* renamed from: s */
        public final Object m34931s(Object obj) {
            this.f13637d = obj;
            this.f13638e |= Integer.MIN_VALUE;
            return NewConversationPresenter.this.m34937Yj(null, this);
        }
    }

    @e(c = "com.truecaller.messaging.newconversation.NewConversationPresenter$uploadAvatar$uploadResult$1", f = "NewConversationPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.truecaller.messaging.newconversation.NewConversationPresenter$f */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/newconversation/NewConversationPresenter$f.class */
    public static final class C4235f extends i implements p<i0, d<? super C6540d2>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Uri f13642f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4235f(Uri uri, d dVar) {
            super(2, dVar);
            NewConversationPresenter.this = r5;
            this.f13642f = uri;
        }

        /* renamed from: i */
        public final d<s> m34930i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4235f(this.f13642f, dVar);
        }

        /* renamed from: k */
        public final Object m34929k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            NewConversationPresenter newConversationPresenter = NewConversationPresenter.this;
            Uri uri = this.f13642f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            C6540d2 mo30600a = newConversationPresenter.f13589M.mo30600a(uri);
            newConversationPresenter.f13590N.mo14177a(uri);
            return mo30600a;
        }

        /* renamed from: s */
        public final Object m34928s(Object obj) {
            C25225a.m3932a3(obj);
            C6540d2 mo30600a = NewConversationPresenter.this.f13589M.mo30600a(this.f13642f);
            NewConversationPresenter.this.f13590N.mo14177a(this.f13642f);
            return mo30600a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public NewConversationPresenter(@Named("UI") f fVar, @Named("Async") f fVar2, @Named("new_conversation_search_delay") long j, @Named("new_conversation_is_bubble_intent") boolean z, AbstractC8621z abstractC8621z, AbstractC19022f0 abstractC19022f0, AbstractC19510i0 abstractC19510i0, a<AbstractC6248w> aVar, AbstractC5854d abstractC5854d, AbstractC13497p abstractC13497p, AbstractC5918f abstractC5918f, AbstractC6252g0 abstractC6252g0, AbstractC19854f<AbstractC19091q0> abstractC19854f, AbstractC5926n abstractC5926n, AbstractC5928p abstractC5928p, AbstractC5931s abstractC5931s, C20592g c20592g, AbstractC19854f<AbstractC6485m> abstractC19854f2, AbstractC6392i0 abstractC6392i0, AbstractC19854f<AbstractC19463a0> abstractC19854f3, AbstractC8438a abstractC8438a, AbstractC19109u1 abstractC19109u1, Context context, AbstractC19870l abstractC19870l, AbstractC6653z0 abstractC6653z0, AbstractC19057m abstractC19057m, AbstractC6394b abstractC6394b, a<AbstractC19854f<AbstractC6233m>> aVar2) {
        super(fVar);
        l.e(fVar, "uiCoroutineContext");
        l.e(fVar2, "asyncCoroutineContext");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19510i0, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(aVar, "readMessageStorage");
        l.e(abstractC5854d, "draftSender");
        l.e(abstractC13497p, "multisimManager");
        l.e(abstractC5918f, "dataSource");
        l.e(abstractC6252g0, "sendingResourceProvider");
        l.e(abstractC19854f, "mediaHelper");
        l.e(abstractC5926n, "adapterPresenter");
        l.e(abstractC5928p, "groupPresenter");
        l.e(abstractC5931s, AnalyticsConstants.MODE);
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19854f2, "imGroupManager");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19854f3, "eventsTracker");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC19109u1, "tempEntityCleaner");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19870l, "actorsThreads");
        l.e(abstractC6653z0, "imUploadFileManager");
        l.e(abstractC19057m, "bitmapConverter");
        l.e(abstractC6394b, "messageUtil");
        l.e(aVar2, "messagesStorage");
        this.f13600k = fVar;
        this.f13601l = fVar2;
        this.f13602m = j;
        this.f13603n = z;
        this.f13604o = abstractC8621z;
        this.f13605p = abstractC19022f0;
        this.f13606q = abstractC19510i0;
        this.f13607r = aVar;
        this.f13608s = abstractC5854d;
        this.f13609t = abstractC13497p;
        this.f13610u = abstractC5918f;
        this.f13611v = abstractC6252g0;
        this.f13612w = abstractC19854f;
        this.f13613x = abstractC5926n;
        this.f13614y = abstractC5928p;
        this.f13615z = abstractC5931s;
        this.f13581A = c20592g;
        this.f13582B = abstractC19854f2;
        this.f13583C = abstractC6392i0;
        this.f13584D = abstractC19854f3;
        this.f13585E = abstractC8438a;
        this.f13586J = abstractC19109u1;
        this.f13587K = context;
        this.f13588L = abstractC19870l;
        this.f13589M = abstractC6653z0;
        this.f13590N = abstractC19057m;
        this.f13591O = abstractC6394b;
        this.f13592P = aVar2;
    }

    /* renamed from: Nj */
    public static Draft m34948Nj(NewConversationPresenter newConversationPresenter, Participant participant, Conversation conversation, Integer num, ForwardContentItem forwardContentItem, String str, int i) {
        if ((i & 1) != 0) {
            participant = null;
        }
        if ((i & 2) != 0) {
            conversation = null;
        }
        if ((i & 16) != 0) {
            str = null;
        }
        Objects.requireNonNull(newConversationPresenter);
        Draft.C4194b c4194b = new Draft.C4194b();
        if (conversation != null) {
            c4194b.f13285b = conversation;
            Collections.addAll(c4194b.f13286c, conversation.f13211m);
            l.d(c4194b, "addParticipants(targetConversation.participants)");
        } else if (participant != null) {
            c4194b.f13286c.add(participant);
        }
        if (str != null) {
            c4194b.f13288e = str;
        }
        if (num != null) {
            num.intValue();
        }
        if (num != null) {
            num.intValue();
            c4194b.f13296m = num.intValue();
        }
        Draft m35055c = c4194b.m35055c();
        l.d(m35055c, "Draft.Builder().run {\n  …        build()\n        }");
        return m35055c;
    }

    /* renamed from: Uj */
    public static List m34941Uj(NewConversationPresenter newConversationPresenter, ArrayList arrayList, Participant participant, Conversation conversation, Integer num, ArrayList arrayList2, int i) {
        BinaryEntity binaryEntity;
        Mention[] mentionArr;
        if ((i & 1) != 0) {
            participant = null;
        }
        if ((i & 2) != 0) {
            conversation = null;
        }
        Objects.requireNonNull(newConversationPresenter);
        ArrayList arrayList3 = new ArrayList(C25225a.m4004J(arrayList, 10));
        Iterator it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            ForwardContentItem forwardContentItem = (ForwardContentItem) it.next();
            Draft.C4194b c4194b = new Draft.C4194b();
            if (conversation != null) {
                c4194b.f13285b = conversation;
                Collections.addAll(c4194b.f13286c, conversation.f13211m);
                l.d(c4194b, "addParticipants(targetConversation.participants)");
            } else if (participant != null) {
                c4194b.f13286c.add(participant);
            }
            c4194b.f13288e = forwardContentItem.f12984a;
            if (num != null && num.intValue() == 2) {
                List<Mention> list = forwardContentItem.f12988e;
                if (list != null) {
                    Object[] array = list.toArray(new Mention[0]);
                    Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                    mentionArr = (Mention[]) array;
                } else {
                    mentionArr = new Mention[0];
                }
                c4194b.f13287d.clear();
                Collections.addAll(c4194b.f13287d, mentionArr);
                c4194b.f13289f = forwardContentItem.f12985b;
                c4194b.f13297n = forwardContentItem.f12989f;
            }
            if (num != null) {
                num.intValue();
                c4194b.f13296m = num.intValue();
            }
            Draft m35055c = c4194b.m35055c();
            l.d(m35055c, "Draft.Builder().run {\n  …    build()\n            }");
            if (forwardContentItem.f12986c != null) {
                binaryEntity = (BinaryEntity) s1.u.i.G(arrayList2, i2);
                i2++;
            } else {
                binaryEntity = null;
            }
            arrayList3.add(new k(m35055c, s1.u.i.U(binaryEntity)));
        }
        return arrayList3;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5937u
    /* renamed from: D4 */
    public void mo32169D4(List<C6230f> list, int i) {
        boolean z;
        l.e(list, "destinations");
        AbstractC5938v abstractC5938v = (AbstractC5938v) this.f57683a;
        if (abstractC5938v != null) {
            abstractC5938v.mo32146l2();
        }
        if (((ArrayList) s1.u.i.z(list)).isEmpty()) {
            AbstractC5938v abstractC5938v2 = (AbstractC5938v) this.f57683a;
            if (abstractC5938v2 != null) {
                abstractC5938v2.mo32154eA(false, null, null, 0);
            }
            AbstractC5938v abstractC5938v3 = (AbstractC5938v) this.f57683a;
            if (abstractC5938v3 == null) {
                return;
            }
            abstractC5938v3.mo32158Vy(false);
            return;
        }
        String O = s1.u.i.O(s1.u.i.z(list), (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C4233d.f13636b, 31);
        AbstractC5938v abstractC5938v4 = (AbstractC5938v) this.f57683a;
        if (abstractC5938v4 != null) {
            abstractC5938v4.mo32154eA(true, O, Integer.valueOf(i), list.size());
        }
        if (!list.isEmpty()) {
            for (C6230f c6230f : list) {
                if (!(c6230f != null && m34945Qj(c6230f) == 0)) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        m34938Xj(z ? SendType.SMS : SendType.IM);
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5936t
    /* renamed from: Ij */
    public boolean mo32177Ij(String str) {
        AbstractC5938v abstractC5938v;
        l.e(str, "text");
        if (!(this.f13615z instanceof AbstractC5931s.C5935d) || this.f13614y.mo32195Jj() || (abstractC5938v = (AbstractC5938v) this.f57683a) == null) {
            return false;
        }
        if (!m34942Tj(str)) {
            abstractC5938v.mo32138w2(C2752R.string.NewConversationInvalidContact);
            return false;
        }
        m34939Wj(str);
        return true;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5936t
    /* renamed from: Jj */
    public void mo32176Jj() {
        AbstractC5938v abstractC5938v = (AbstractC5938v) this.f57683a;
        if (abstractC5938v != null) {
            if (abstractC5938v.mo32150jg() == 3) {
                abstractC5938v.mo32145lr(96);
                abstractC5938v.mo32161Pp(C2752R.C2753drawable.ic_dialer_toolbar_dialpad);
            } else {
                abstractC5938v.mo32145lr(3);
                abstractC5938v.mo32161Pp(2131232570);
            }
            abstractC5938v.mo32142rr();
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5936t
    /* renamed from: Kj */
    public void mo32175Kj() {
        this.f13613x.mo32199N(this.f13614y.mo32186o());
        AbstractC5938v abstractC5938v = (AbstractC5938v) this.f57683a;
        if (abstractC5938v != null) {
            abstractC5938v.mo32146l2();
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5936t
    /* renamed from: Lj */
    public void mo32174Lj() {
        mo32168Rb(this.f13613x.mo32209A());
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d3, code lost:
        if (r10 == false) goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e4  */
    @Override // p193e.p194a.p195a.p224d.AbstractC5936t
    /* renamed from: Mj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo32173Mj() {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.newconversation.NewConversationPresenter.mo32173Mj():void");
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5936t
    /* renamed from: O7 */
    public void mo32172O7() {
        AbstractC5938v abstractC5938v = (AbstractC5938v) this.f57683a;
        if (abstractC5938v != null) {
            abstractC5938v.mo32147l0();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008d  */
    /* renamed from: Oj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m34947Oj(java.util.List<? extends com.truecaller.data.entity.messaging.Participant> r9, java.lang.String r10, android.net.Uri r11, s1.w.d<? super s1.s> r12) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.newconversation.NewConversationPresenter.m34947Oj(java.util.List, java.lang.String, android.net.Uri, s1.w.d):java.lang.Object");
    }

    /* renamed from: Pj */
    public final ArrayList<ForwardContentItem> m34946Pj(int i) {
        ArrayList<ForwardContentItem> arrayList;
        boolean z;
        AbstractC5931s abstractC5931s = this.f13615z;
        if (abstractC5931s instanceof AbstractC5931s.C5934c) {
            ArrayList<ForwardContentItem> arrayList2 = ((AbstractC5931s.C5934c) abstractC5931s).f19821a;
            arrayList = arrayList2;
            if (i == 0) {
                if (!(arrayList2 instanceof Collection) || !arrayList2.isEmpty()) {
                    for (ForwardContentItem forwardContentItem : arrayList2) {
                        BinaryEntity binaryEntity = forwardContentItem.f12986c;
                        if (binaryEntity != null && binaryEntity.f13185u) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                arrayList = arrayList2;
                if (z) {
                    arrayList = new ArrayList<>();
                    for (ForwardContentItem forwardContentItem2 : arrayList2) {
                        if (forwardContentItem2.f12986c instanceof LocationEntity) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(forwardContentItem2.f12984a);
                            if (forwardContentItem2.f12984a.length() > 0) {
                                sb.append('\n');
                                l.d(sb, "append('\\n')");
                            }
                            AbstractC6394b abstractC6394b = this.f13591O;
                            LocationEntity locationEntity = (LocationEntity) forwardContentItem2.f12986c;
                            sb.append(abstractC6394b.mo31347C(locationEntity.f13361w, locationEntity.f13362x, null).toString());
                            sb.append('\n');
                            l.d(sb, "append('\\n')");
                            sb.append(((LocationEntity) forwardContentItem2.f12986c).f13360v);
                            String sb2 = sb.toString();
                            l.d(sb2, "StringBuilder().apply(builderAction).toString()");
                            arrayList.add(new ForwardContentItem(sb2, false, null, forwardContentItem2.f12987d, forwardContentItem2.f12988e, null, 32));
                        } else {
                            arrayList.add(forwardContentItem2);
                        }
                    }
                }
            }
        } else {
            arrayList = abstractC5931s instanceof AbstractC5931s.C5933b ? this.f13598i : null;
        }
        return arrayList;
    }

    /* renamed from: Qj */
    public final int m34945Qj(C6230f c6230f) {
        int i;
        if (c6230f.f20908a) {
            int i2 = c6230f.f20929v;
            i = 2;
            if (i2 != 2) {
                if (i2 == 3) {
                    i = 2;
                }
            }
            return i;
        }
        i = 0;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0111, code lost:
        if (r15 != null) goto L36;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p224d.AbstractC5937u
    /* renamed from: Rb */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo32168Rb(java.util.List<p193e.p194a.p195a.p231g.p234l0.C6230f> r15) {
        /*
            Method dump skipped, instructions count: 1252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.newconversation.NewConversationPresenter.mo32168Rb(java.util.List):void");
    }

    /* renamed from: Rj */
    public final void m34944Rj(List<? extends k<Draft, ? extends Collection<? extends BinaryEntity>>> list, boolean z) {
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            for (BinaryEntity binaryEntity : (Iterable) ((k) it.next()).b) {
                this.f13586J.mo14084b(binaryEntity.f13173i);
            }
        }
        if (z) {
            AbstractC5938v abstractC5938v = (AbstractC5938v) this.f57683a;
            if (abstractC5938v != null) {
                abstractC5938v.mo32237Hc(C2752R.string.NewConversationFileCopyFailed);
            }
            AbstractC5938v abstractC5938v2 = (AbstractC5938v) this.f57683a;
            if (abstractC5938v2 == null) {
                return;
            }
            abstractC5938v2.mo32166C();
        }
    }

    /* renamed from: Sj */
    public final void m34943Sj(List<? extends k<? extends Participant, Integer>> list, List<k<Long, Integer>> list2, boolean z) {
        if (m34946Pj(3) == null) {
            return;
        }
        if (list.isEmpty() && list2.isEmpty()) {
            throw new IllegalArgumentException("Neither participant nor conversation is selected to forward to");
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C4232c(list2, list, z, null), 3, (Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003c, code lost:
        if (r7 != false) goto L15;
     */
    /* renamed from: Tj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m34942Tj(java.lang.String r4) {
        /*
            r3 = this;
            r0 = r3
            s1.f0.h r0 = r0.f13593d
            r1 = r4
            boolean r0 = r0.d(r1)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L42
            r0 = 0
            r7 = r0
        L12:
            r0 = r7
            r1 = r4
            int r1 = r1.length()
            if (r0 >= r1) goto L37
            r0 = r4
            r1 = r7
            char r0 = r0.charAt(r1)
            boolean r0 = java.lang.Character.isDigit(r0)
            if (r0 == 0) goto L31
            r0 = 1
            r7 = r0
            goto L3a
        L31:
            int r7 = r7 + 1
            goto L12
        L37:
            r0 = 0
            r7 = r0
        L3a:
            r0 = r7
            if (r0 == 0) goto L42
            goto L44
        L42:
            r0 = 0
            r6 = r0
        L44:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.newconversation.NewConversationPresenter.m34942Tj(java.lang.String):boolean");
    }

    /* renamed from: Vj */
    public final void m34940Vj(Long l, List<? extends Participant> list) {
        Participant[] participantArr;
        boolean z;
        List<? extends Participant> list2 = list;
        List<? extends Participant> list3 = s1.u.s.a;
        AbstractC5938v abstractC5938v = (AbstractC5938v) this.f57683a;
        if (abstractC5938v != null) {
            if ((this.f13614y.mo32194Kj() && !(this.f13615z instanceof AbstractC5931s.C5935d)) || this.f13603n) {
                if (list2 == null) {
                    list2 = list3;
                }
                abstractC5938v.mo32139vd(new ArrayList<>(list2));
                abstractC5938v.mo32166C();
                return;
            }
            boolean z2 = false;
            if (list2 != null) {
                Object[] array = list2.toArray(new Participant[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                participantArr = (Participant[]) array;
            } else {
                participantArr = null;
            }
            AbstractC5931s abstractC5931s = this.f13615z;
            if ((abstractC5931s instanceof AbstractC5931s.C5934c) || (abstractC5931s instanceof AbstractC5931s.C5933b)) {
                abstractC5938v.mo32163L3(l, participantArr, null);
            } else if (abstractC5931s instanceof AbstractC5931s.C5932a) {
                if (list2 == null) {
                    list2 = list3;
                }
                abstractC5938v.mo32139vd(new ArrayList<>(list2));
            } else if (abstractC5931s instanceof AbstractC5931s.C5935d) {
                if (l.a(this.f13614y.mo32196Ij(), "im_group_type") && participantArr != null && (!list.isEmpty())) {
                    if (!list.isEmpty()) {
                        for (Participant participant : list) {
                            if (!(participant.f11570c != null)) {
                                z = false;
                                break;
                            }
                        }
                    }
                    z = true;
                    if (z) {
                        String str = ((AbstractC5931s.C5935d) this.f13615z).f19823b;
                        if (str == null) {
                            return;
                        }
                        abstractC5938v.mo32153f(true);
                        Uri uri = ((AbstractC5931s.C5935d) this.f13615z).f19824c;
                        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5939w(this, s1.u.i.g(participantArr), str, uri, null), 3, (Object) null);
                        AbstractC19463a0 mo11854a = this.f13584D.mo11854a();
                        Schema schema = C17613k0.f49661e;
                        C17613k0.C17615b c17615b = new C17613k0.C17615b(null);
                        int length = str.length();
                        c17615b.validate(c17615b.fields()[2], Integer.valueOf(length));
                        c17615b.f49669a = length;
                        c17615b.fieldSetFlags()[2] = true;
                        if (uri != null) {
                            z2 = true;
                        }
                        c17615b.validate(c17615b.fields()[3], Boolean.valueOf(z2));
                        c17615b.f49670b = z2;
                        c17615b.fieldSetFlags()[3] = true;
                        mo11854a.mo13111a(c17615b.build());
                        return;
                    }
                }
                abstractC5938v.mo32163L3(l, participantArr, null);
                abstractC5938v.mo32166C();
                return;
            }
            abstractC5938v.mo32166C();
        }
    }

    /* renamed from: Wj */
    public final void m34939Wj(String str) {
        AbstractC8621z abstractC8621z = this.f13604o;
        Participant m35458a = Participant.m35458a(str, abstractC8621z, abstractC8621z.mo28189b());
        l.d(m35458a, "Participant.buildFromAdd…per.getDefaultSimToken())");
        m34940Vj(null, C25225a.m3962T1(m35458a));
    }

    /* renamed from: Xj */
    public final void m34938Xj(SendType sendType) {
        Integer num;
        this.f13597h = sendType;
        SendType sendType2 = SendType.IM;
        int i = 1;
        boolean z = sendType == sendType2;
        if (sendType != null) {
            if (sendType == sendType2) {
                i = 2;
            } else if (!C10480a.m25889u1(this.f13615z)) {
                i = 0;
            }
            num = Integer.valueOf(i);
        } else {
            num = null;
        }
        if (num != null) {
            int intValue = num.intValue();
            int mo31458b = z ? this.f13611v.mo31458b() : this.f13611v.mo31455t();
            AbstractC5938v abstractC5938v = (AbstractC5938v) this.f57683a;
            if (abstractC5938v == null) {
                return;
            }
            abstractC5938v.mo32155db(this.f13611v.mo31460B(intValue), this.f13611v.mo31459H(intValue), mo31458b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x012d, code lost:
        if (r10 != null) goto L40;
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.a.d.v, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9029Y0(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.newconversation.NewConversationPresenter.mo9029Y0(java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ac  */
    /* renamed from: Yj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m34937Yj(android.net.Uri r7, s1.w.d<? super java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.newconversation.NewConversationPresenter.m34937Yj(android.net.Uri, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        AbstractC19844a abstractC19844a = this.f13599j;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
        this.f13599j = null;
        this.f13613x.mo32207C();
        this.f13613x.mo32206E(null);
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5936t
    /* renamed from: ha */
    public void mo32171ha(String str) {
        l.e(str, "text");
        this.f13594e = str;
        p1 p1Var = this.f13596g;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f13596g = null;
        AbstractC5938v abstractC5938v = (AbstractC5938v) this.f57683a;
        if (abstractC5938v != null) {
            this.f13613x.mo32201L(str.length() > 0);
            CancellationSignal cancellationSignal = this.f13595f;
            if (cancellationSignal != null) {
                cancellationSignal.cancel();
            }
            CancellationSignal cancellationSignal2 = new CancellationSignal();
            this.f13595f = cancellationSignal2;
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5940x(this, str, cancellationSignal2, null), 3, (Object) null);
            abstractC5938v.mo32140th(str.length() > 0);
            abstractC5938v.mo32159Sw((str.length() == 0) && (this.f13613x.mo32209A().isEmpty() ^ true));
            AbstractC5931s abstractC5931s = this.f13615z;
            if ((abstractC5931s instanceof AbstractC5931s.C5935d) || (abstractC5931s instanceof AbstractC5931s.C5932a)) {
                abstractC5938v.mo32144m3(this.f13614y.mo32195Jj() ? !this.f13614y.mo32186o().isEmpty() : m34942Tj(str));
            } else {
                abstractC5938v.mo32158Vy((str.length() == 0) && (this.f13613x.mo32209A().isEmpty() ^ true));
            }
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5936t
    public void onResume() {
        AbstractC5938v abstractC5938v = (AbstractC5938v) this.f57683a;
        if (abstractC5938v == null || this.f13605p.mo14245a() || !this.f13605p.mo14246Q0()) {
            return;
        }
        abstractC5938v.mo32152h0();
        abstractC5938v.mo32166C();
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5936t
    /* renamed from: r0 */
    public void mo32170r0() {
        AbstractC5938v abstractC5938v = (AbstractC5938v) this.f57683a;
        if (abstractC5938v != null) {
            abstractC5938v.onBackPressed();
        }
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5937u
    /* renamed from: s3 */
    public void mo32167s3(List<C6230f> list) {
        boolean z;
        l.e(list, "destinations");
        if (!list.isEmpty()) {
            for (C6230f c6230f : list) {
                if (!(c6230f != null && m34945Qj(c6230f) == 0)) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        m34938Xj(z ? SendType.SMS : SendType.IM);
    }
}
