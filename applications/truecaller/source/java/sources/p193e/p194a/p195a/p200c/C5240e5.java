package p193e.p194a.p195a.p200c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import com.google.common.collect.Collections2;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.blocking.FiltersContract;
import com.truecaller.contactfeedback.p157db.PhoneNumberType;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.messaging.ForwardContentItem;
import com.truecaller.messaging.conversation.CallType;
import com.truecaller.messaging.conversation.ConversationAction;
import com.truecaller.messaging.conversation.ConversationMode;
import com.truecaller.messaging.conversation.draft.DraftMode;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.ImForwardInfo;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.data.types.Mention;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.ReplySnippet;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.p170im.ImTransportInfo;
import com.truecaller.spamcategories.SpamCategoryResult;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p1727n3.p1807k.p1808a.C26458x;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1031t2.C17241d;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19091q0;
import p193e.p194a.p1114o5.AbstractC19109u1;
import p193e.p194a.p1114o5.AbstractC19126x;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1342w4.AbstractC21204d;
import p193e.p194a.p195a.AbstractC5945d0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC6755k0;
import p193e.p194a.p195a.p199b1.AbstractC5006a;
import p193e.p194a.p195a.p199b1.AbstractC5007b;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p200c.p208k.p210c.C5432a;
import p193e.p194a.p195a.p200c.p214m8.C5532f;
import p193e.p194a.p195a.p200c.p222s8.AbstractC5733j;
import p193e.p194a.p195a.p227e.AbstractC6005m;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.C6113f;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p244k.p245a.AbstractC6520b1;
import p193e.p194a.p195a.p244k.p245a.AbstractC6523c0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6543e1;
import p193e.p194a.p195a.p244k.p245a.AbstractC6573i1;
import p193e.p194a.p195a.p275o0.AbstractC7152a;
import p193e.p194a.p195a.p282u0.C7281h;
import p193e.p194a.p195a.p286y0.AbstractC7314g0;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p552i.p565l.p567f.AbstractC10406a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p678d4.AbstractC12595a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p751f4.p762g.C14030t;
import p193e.p194a.p798g5.AbstractC14535n;
import p193e.p194a.p837h0.AbstractC14854r;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.a.c.e5 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/e5.class */
public final class C5240e5 extends AbstractC5179c5 implements AbstractC5794w3.AbstractC5795a {

    /* renamed from: A */
    public final boolean f17963A;

    /* renamed from: A0 */
    public final AbstractC19510i0 f17964A0;

    /* renamed from: B */
    public final boolean f17965B;

    /* renamed from: B0 */
    public final AbstractC10060c f17966B0;

    /* renamed from: C */
    public final String f17967C;

    /* renamed from: C0 */
    public final AbstractC5945d0 f17968C0;

    /* renamed from: D */
    public final a<AbstractC19854f<AbstractC6233m>> f17969D;

    /* renamed from: D0 */
    public final C16461b f17970D0;

    /* renamed from: E */
    public final a<AbstractC6248w> f17971E;

    /* renamed from: J */
    public final AbstractC19233h0 f17972J;

    /* renamed from: K */
    public final AbstractC19022f0 f17973K;

    /* renamed from: L */
    public final AbstractC19854f<AbstractC7343q> f17974L;

    /* renamed from: M */
    public final AbstractC6708t f17975M;

    /* renamed from: N */
    public final AbstractC6392i0 f17976N;

    /* renamed from: O */
    public final AbstractC19854f<AbstractC19126x> f17977O;

    /* renamed from: P */
    public final AbstractC19854f<AbstractC14854r> f17978P;

    /* renamed from: Q */
    public final AbstractC19854f<AbstractC19091q0> f17979Q;

    /* renamed from: R */
    public final C17241d f17980R;

    /* renamed from: S */
    public final AbstractC5794w3 f17981S;

    /* renamed from: T */
    public final AbstractC5585n5 f17982T;

    /* renamed from: U */
    public final AbstractC5276f4 f17983U;

    /* renamed from: V */
    public final AbstractC19854f<AbstractC14535n> f17984V;

    /* renamed from: W */
    public final AbstractC19854f<AbstractC19463a0> f17985W;

    /* renamed from: X */
    public final AbstractC14965w f17986X;

    /* renamed from: Y */
    public final AbstractC19219a0 f17987Y;

    /* renamed from: Z */
    public final AbstractC6573i1 f17988Z;

    /* renamed from: d */
    public Conversation f17989d;

    /* renamed from: e */
    public Participant[] f17990e;

    /* renamed from: f */
    public Long f17991f;

    /* renamed from: g */
    public Draft f17992g;

    /* renamed from: g0 */
    public final AbstractC8432l f17993g0;

    /* renamed from: h */
    public AbstractC19844a f17994h;

    /* renamed from: h0 */
    public final AbstractC19854f<AbstractC6543e1> f17995h0;

    /* renamed from: i */
    public boolean f17996i;

    /* renamed from: i0 */
    public final AbstractC19854f<AbstractC6523c0> f17997i0;

    /* renamed from: j */
    public Participant f17998j;

    /* renamed from: j0 */
    public final AbstractC6755k0 f17999j0;

    /* renamed from: k */
    public int f18000k;

    /* renamed from: k0 */
    public final AbstractC11476s1 f18001k0;

    /* renamed from: l */
    public boolean f18002l;

    /* renamed from: l0 */
    public final AbstractC21204d f18003l0;

    /* renamed from: m */
    public boolean f18004m;

    /* renamed from: m0 */
    public final AbstractC5733j f18005m0;

    /* renamed from: n0 */
    public final AbstractC6394b f18007n0;

    /* renamed from: o0 */
    public final AbstractC5687r3 f18009o0;

    /* renamed from: p0 */
    public final AbstractC5719s4 f18011p0;

    /* renamed from: q */
    public boolean f18012q;

    /* renamed from: q0 */
    public final AbstractC12595a f18013q0;

    /* renamed from: r */
    public boolean f18014r;

    /* renamed from: r0 */
    public final AbstractC7152a f18015r0;

    /* renamed from: s */
    public boolean f18016s;

    /* renamed from: s0 */
    public final AbstractC5007b f18017s0;

    /* renamed from: t */
    public C6113f f18018t;

    /* renamed from: t0 */
    public final AbstractC6520b1 f18019t0;

    /* renamed from: u */
    public boolean f18020u;

    /* renamed from: u0 */
    public final AbstractC19109u1 f18021u0;

    /* renamed from: v */
    public final AbstractC19868j f18022v;

    /* renamed from: v0 */
    public final AbstractC5108b4 f18023v0;

    /* renamed from: w */
    public final f f18024w;

    /* renamed from: w0 */
    public final AbstractC6005m f18025w0;

    /* renamed from: x */
    public final f f18026x;

    /* renamed from: x0 */
    public final AbstractC7314g0 f18027x0;

    /* renamed from: y */
    public int f18028y;

    /* renamed from: y0 */
    public final C26458x f18029y0;

    /* renamed from: z */
    public final boolean f18030z;

    /* renamed from: z0 */
    public final AbstractC10406a f18031z0;

    /* renamed from: n */
    public boolean f18006n = true;

    /* renamed from: o */
    public final ArrayList<ConversationAction> f18008o = new ArrayList<>();

    /* renamed from: p */
    public final BroadcastReceiver f18010p = new C5242b();

    /* renamed from: e.a.a.c.e5$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/e5$a.class */
    public static final class C5241a<R> implements AbstractC19851d0<SparseBooleanArray> {
        public C5241a() {
            C5240e5.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(SparseBooleanArray sparseBooleanArray) {
            SparseBooleanArray sparseBooleanArray2 = sparseBooleanArray;
            if (sparseBooleanArray2 != null) {
                C5240e5 c5240e5 = C5240e5.this;
                Objects.requireNonNull(c5240e5);
                l.e(sparseBooleanArray2, "result");
                boolean z = sparseBooleanArray2.indexOfKey(0) >= 0 && !sparseBooleanArray2.get(0);
                boolean z2 = sparseBooleanArray2.indexOfKey(1) >= 0 && !sparseBooleanArray2.get(1);
                boolean z3 = true;
                if (!z) {
                    z3 = z2;
                }
                if (z3) {
                    AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) c5240e5.f57683a;
                    if (abstractC5444k5 == null) {
                        return;
                    }
                    abstractC5444k5.mo32512P5(c5240e5.f17972J.mo13768b(C2752R.string.DialogGrantPermissionToDeleteSms, new Object[0]), 13, "conversation-deleteConversation");
                    return;
                }
                AbstractC5444k5 abstractC5444k52 = (AbstractC5444k5) c5240e5.f57683a;
                if (abstractC5444k52 == null) {
                    return;
                }
                abstractC5444k52.finish();
            }
        }
    }

    /* renamed from: e.a.a.c.e5$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/e5$b.class */
    public static final class C5242b extends BroadcastReceiver {
        public C5242b() {
            C5240e5.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            C5240e5 c5240e5 = C5240e5.this;
            Participant[] participantArr = c5240e5.f17990e;
            if (participantArr == null || participantArr.length != 1) {
                return;
            }
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("phone_numbers");
            Boolean bool = null;
            if (stringArrayListExtra != null) {
                Participant[] participantArr2 = c5240e5.f17990e;
                String str = null;
                if (participantArr2 != null) {
                    Participant participant = (Participant) C25225a.m3830v0(participantArr2);
                    str = null;
                    if (participant != null) {
                        str = participant.f11572e;
                    }
                }
                bool = Boolean.valueOf(stringArrayListExtra.contains(str));
            }
            if (!C12864a2.m22540r(bool)) {
                return;
            }
            c5240e5.m33511ek();
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationPresenterImpl$loadDraft$1", f = "ConversationPresenterImpl.kt", l = {500, 505}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.e5$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/e5$c.class */
    public static final class C5243c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18034e;

        /* renamed from: g */
        public final /* synthetic */ Participant[] f18036g;

        /* renamed from: h */
        public final /* synthetic */ Long f18037h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5243c(Participant[] participantArr, Long l, d dVar) {
            super(2, dVar);
            C5240e5.this = r5;
            this.f18036g = participantArr;
            this.f18037h = l;
        }

        /* renamed from: i */
        public final d<s> m33490i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5243c(this.f18036g, this.f18037h, dVar);
        }

        /* renamed from: k */
        public final Object m33489k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5243c(this.f18036g, this.f18037h, dVar).m33488s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x00e2  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00f7  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m33488s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 310
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5240e5.C5243c.m33488s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.a.c.e5$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/e5$d.class */
    public static final class C5244d<R> implements AbstractC19851d0<Uri> {
        public C5244d() {
            C5240e5.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Uri uri) {
            C5240e5.m33515ak(C5240e5.this, Boolean.valueOf(uri != null));
        }
    }

    /* renamed from: e.a.a.c.e5$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/e5$e.class */
    public static final class C5245e<R> implements AbstractC19851d0<Boolean> {
        public C5245e() {
            C5240e5.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            C5240e5.m33515ak(C5240e5.this, bool);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationPresenterImpl$onInviteActionClicked$1", f = "ConversationPresenterImpl.kt", l = {1216}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.e5$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/e5$f.class */
    public static final class C5246f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18040e;

        /* renamed from: g */
        public final /* synthetic */ c0 f18042g;

        @e(c = "com.truecaller.messaging.conversation.ConversationPresenterImpl$onInviteActionClicked$1$1", f = "ConversationPresenterImpl.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.c.e5$f$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/e5$f$a.class */
        public static final class C5247a extends i implements p<i0, d<? super Contact>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5247a(d dVar) {
                super(2, dVar);
                C5246f.this = r5;
            }

            /* renamed from: i */
            public final d<s> m33484i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5247a(dVar);
            }

            /* renamed from: k */
            public final Object m33483k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C5246f c5246f = C5246f.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                return C5240e5.this.f17970D0.m17367e(((Participant) c5246f.f18042g.a).f11575h);
            }

            /* renamed from: s */
            public final Object m33482s(Object obj) {
                C25225a.m3932a3(obj);
                C5246f c5246f = C5246f.this;
                return C5240e5.this.f17970D0.m17367e(((Participant) c5246f.f18042g.a).f11575h);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5246f(c0 c0Var, d dVar) {
            super(2, dVar);
            C5240e5.this = r5;
            this.f18042g = c0Var;
        }

        /* renamed from: i */
        public final d<s> m33487i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5246f(this.f18042g, dVar);
        }

        /* renamed from: k */
        public final Object m33486k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5246f(this.f18042g, dVar).m33485s(s.a);
        }

        /* renamed from: s */
        public final Object m33485s(Object obj) {
            AbstractC5444k5 abstractC5444k5;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f18040e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f fVar = C5240e5.this.f18026x;
                C5247a c5247a = new C5247a(null);
                this.f18040e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c5247a, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Contact contact = (Contact) obj;
            if (contact != null && (abstractC5444k5 = (AbstractC5444k5) C5240e5.this.f57683a) != null) {
                abstractC5444k5.mo32420rq(contact);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.e5$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/e5$g.class */
    public static final class C5248g<R> implements AbstractC19851d0<Draft> {

        /* renamed from: b */
        public final /* synthetic */ boolean f18045b;

        /* renamed from: c */
        public final /* synthetic */ Draft f18046c;

        public C5248g(boolean z, Draft draft) {
            C5240e5.this = r4;
            this.f18045b = z;
            this.f18046c = draft;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Draft draft) {
            Draft draft2 = draft;
            if (this.f18045b) {
                C5240e5.this.m33496p(draft2);
                return;
            }
            Conversation conversation = this.f18046c.f13267b;
            if (conversation != null && conversation.f13219u != 3) {
                C5240e5.this.f17983U.mo33301p(draft2);
                return;
            }
            C5240e5.this.f17983U.mo33342Xd(draft2);
            C5240e5.this.f17983U.mo33301p(draft2);
        }
    }

    /* renamed from: e.a.a.c.e5$h */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/e5$h.class */
    public static final class C5249h implements AbstractC5006a {
        public C5249h() {
            C5240e5.this = r4;
        }

        @Override // p193e.p194a.p195a.p199b1.AbstractC5006a
        /* renamed from: a */
        public void mo33481a(C14030t c14030t) {
            if (c14030t != null) {
                C5240e5.this.m33511ek();
            }
        }
    }

    /* renamed from: e.a.a.c.e5$i */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/e5$i.class */
    public static final class C5250i<R> implements AbstractC19851d0<Boolean> {
        public C5250i() {
            C5240e5.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            C5240e5 c5240e5 = C5240e5.this;
            c5240e5.f18028y = 2;
            c5240e5.f17982T.mo32856i(2);
            C5240e5.m33515ak(C5240e5.this, bool);
            C5240e5 c5240e52 = C5240e5.this;
            AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) c5240e52.f57683a;
            if (abstractC5444k5 != null) {
                abstractC5444k5.mo32417sh(Boolean.FALSE, c5240e52.f17991f);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5240e5(@Named("UiThread") AbstractC19868j abstractC19868j, @Named("UI") f fVar, @Named("IO") f fVar2, Conversation conversation, Participant[] participantArr, @Named("ConversationId") Long l, @Named("Filter") int i, @Named("IsHiddenNumberIntent") boolean z, @Named("IsBubbleIntent") boolean z2, @Named("IsUrgentIntent") boolean z3, @Named("ConversationContext") String str, a<AbstractC19854f<AbstractC6233m>> aVar, a<AbstractC6248w> aVar2, AbstractC19233h0 abstractC19233h0, AbstractC19022f0 abstractC19022f0, AbstractC19854f<AbstractC7343q> abstractC19854f, AbstractC6708t abstractC6708t, AbstractC6392i0 abstractC6392i0, AbstractC19854f<AbstractC19126x> abstractC19854f2, AbstractC19854f<AbstractC14854r> abstractC19854f3, AbstractC19854f<AbstractC19091q0> abstractC19854f4, C17241d c17241d, AbstractC5794w3 abstractC5794w3, AbstractC5585n5 abstractC5585n5, AbstractC5276f4 abstractC5276f4, AbstractC19854f<AbstractC14535n> abstractC19854f5, AbstractC19854f<AbstractC19463a0> abstractC19854f6, AbstractC14965w abstractC14965w, AbstractC19219a0 abstractC19219a0, AbstractC6573i1 abstractC6573i1, AbstractC8432l abstractC8432l, AbstractC19854f<AbstractC6543e1> abstractC19854f7, AbstractC19854f<AbstractC6523c0> abstractC19854f8, AbstractC6755k0 abstractC6755k0, AbstractC11476s1 abstractC11476s1, AbstractC21204d abstractC21204d, AbstractC5733j abstractC5733j, AbstractC6394b abstractC6394b, AbstractC5687r3 abstractC5687r3, AbstractC5719s4 abstractC5719s4, AbstractC12595a abstractC12595a, AbstractC7152a abstractC7152a, AbstractC5007b abstractC5007b, AbstractC6520b1 abstractC6520b1, AbstractC19109u1 abstractC19109u1, AbstractC5108b4 abstractC5108b4, AbstractC6005m abstractC6005m, AbstractC7314g0 abstractC7314g0, C26458x c26458x, AbstractC10406a abstractC10406a, AbstractC19510i0 abstractC19510i0, AbstractC10060c abstractC10060c, AbstractC5945d0 abstractC5945d0, C16461b c16461b) {
        super(fVar);
        l.e(abstractC19868j, "uiThread");
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(str, "conversationContext");
        l.e(aVar, "messagesStorage");
        l.e(aVar2, "readMessageStorage");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19854f, "notificationsManager");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19854f2, "contactsManager");
        l.e(abstractC19854f3, "spamManager");
        l.e(abstractC19854f4, "mediaHelper");
        l.e(c17241d, "mReportSpamPromotionManager");
        l.e(abstractC5794w3, "conversationDataSource");
        l.e(abstractC5585n5, "conversationState");
        l.e(abstractC5276f4, "inputPresenter");
        l.e(abstractC19854f5, "tagDataSaver");
        l.e(abstractC19854f6, "eventsTracker");
        l.e(abstractC14965w, "tcPermissionsUtil");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC6573i1, "imVersionManager");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC19854f7, "imUserManager");
        l.e(abstractC19854f8, "imReactionManager");
        l.e(abstractC6755k0, "smsPermissionPromoManager");
        l.e(abstractC11476s1, "voipUtil");
        l.e(abstractC21204d, "contactStalenessHelper");
        l.e(abstractC5733j, "playerAdapter");
        l.e(abstractC6394b, "messageUtil");
        l.e(abstractC5687r3, "conversationAnalytics");
        l.e(abstractC5719s4, "messagesPresenter");
        l.e(abstractC12595a, "appMarketUtil");
        l.e(abstractC7152a, "participantBlockHelper");
        l.e(abstractC5007b, "participantSearchHelper");
        l.e(abstractC6520b1, "imUserInfoHelper");
        l.e(abstractC19109u1, "entityCleaner");
        l.e(abstractC5108b4, "headerPresenter");
        l.e(abstractC6005m, "inboxCleaner");
        l.e(abstractC7314g0, "urgentMessageNotificationHelper");
        l.e(c26458x, "notificationManager");
        l.e(abstractC10406a, "smartNotificationManager");
        l.e(abstractC19510i0, "messageAnalytics");
        l.e(abstractC10060c, "insightsAnalytics");
        l.e(abstractC5945d0, "notificationHelper");
        l.e(c16461b, "aggregatedContactDao");
        this.f18022v = abstractC19868j;
        this.f18024w = fVar;
        this.f18026x = fVar2;
        this.f18028y = i;
        this.f18030z = z;
        this.f17963A = z2;
        this.f17965B = z3;
        this.f17967C = str;
        this.f17969D = aVar;
        this.f17971E = aVar2;
        this.f17972J = abstractC19233h0;
        this.f17973K = abstractC19022f0;
        this.f17974L = abstractC19854f;
        this.f17975M = abstractC6708t;
        this.f17976N = abstractC6392i0;
        this.f17977O = abstractC19854f2;
        this.f17978P = abstractC19854f3;
        this.f17979Q = abstractC19854f4;
        this.f17980R = c17241d;
        this.f17981S = abstractC5794w3;
        this.f17982T = abstractC5585n5;
        this.f17983U = abstractC5276f4;
        this.f17984V = abstractC19854f5;
        this.f17985W = abstractC19854f6;
        this.f17986X = abstractC14965w;
        this.f17987Y = abstractC19219a0;
        this.f17988Z = abstractC6573i1;
        this.f17993g0 = abstractC8432l;
        this.f17995h0 = abstractC19854f7;
        this.f17997i0 = abstractC19854f8;
        this.f17999j0 = abstractC6755k0;
        this.f18001k0 = abstractC11476s1;
        this.f18003l0 = abstractC21204d;
        this.f18005m0 = abstractC5733j;
        this.f18007n0 = abstractC6394b;
        this.f18009o0 = abstractC5687r3;
        this.f18011p0 = abstractC5719s4;
        this.f18013q0 = abstractC12595a;
        this.f18015r0 = abstractC7152a;
        this.f18017s0 = abstractC5007b;
        this.f18019t0 = abstractC6520b1;
        this.f18021u0 = abstractC19109u1;
        this.f18023v0 = abstractC5108b4;
        this.f18025w0 = abstractC6005m;
        this.f18027x0 = abstractC7314g0;
        this.f18029y0 = c26458x;
        this.f18031z0 = abstractC10406a;
        this.f17964A0 = abstractC19510i0;
        this.f17966B0 = abstractC10060c;
        this.f17968C0 = abstractC5945d0;
        this.f17970D0 = c16461b;
        abstractC5585n5.mo32862d(conversation);
        abstractC5585n5.mo32856i(this.f18028y);
        if (participantArr != null) {
            this.f17990e = participantArr;
        } else if (conversation != null) {
            this.f17990e = conversation.f13211m;
        }
        abstractC5585n5.mo32859f(this.f17990e);
        this.f17991f = conversation != null ? Long.valueOf(conversation.f13199a) : l;
    }

    /* renamed from: ak */
    public static final void m33515ak(C5240e5 c5240e5, Boolean bool) {
        Objects.requireNonNull(c5240e5);
        if (C12864a2.m22540r(bool)) {
            c5240e5.m33511ek();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4.AbstractC5720a
    /* renamed from: B */
    public void mo32764B() {
        this.f17983U.mo33394B();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3.AbstractC5795a
    /* renamed from: C */
    public void mo32589C() {
        if (this.f17990e == null || this.f17991f == null || this.f17981S.mo32576h() <= 1) {
            m33511ek();
            return;
        }
        this.f18011p0.mo32744C();
        this.f18023v0.mo33690C();
        Long l = this.f17991f;
        if (l == null) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5339h5(l.longValue(), null, this), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4.AbstractC5720a
    /* renamed from: C2 */
    public void mo32763C2(Message message) {
        l.e(message, "message");
        this.f17983U.mo33391C2(message);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r5 != null) goto L7;
     */
    /* renamed from: C8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m33539C8() {
        /*
            r4 = this;
            r0 = r4
            com.truecaller.messaging.data.types.Conversation r0 = r0.f17989d
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L15
            r0 = r5
            com.truecaller.data.entity.messaging.Participant[] r0 = r0.f13211m
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L15
            goto L1a
        L15:
            r0 = r4
            com.truecaller.data.entity.messaging.Participant[] r0 = r0.f17990e
            r5 = r0
        L1a:
            r0 = r5
            if (r0 == 0) goto L67
            r0 = r5
            int r0 = r0.length
            r1 = 1
            if (r0 != r1) goto L67
            r0 = r4
            PV r0 = r0.f57683a
            e.a.a.c.k5 r0 = (p193e.p194a.p195a.p200c.AbstractC5444k5) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L36
            r0 = r6
            r0.mo32418sg()
        L36:
            r0 = r4
            PV r0 = r0.f57683a
            e.a.a.c.k5 r0 = (p193e.p194a.p195a.p200c.AbstractC5444k5) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L4e
            r0 = r6
            r1 = r5
            r2 = 0
            r1 = r1[r2]
            java.lang.String r1 = r1.f11572e
            r0.mo32519My(r1)
        L4e:
            r0 = r4
            boolean r0 = r0.f17963A
            if (r0 == 0) goto L67
            r0 = r4
            PV r0 = r0.f57683a
            e.a.a.c.k5 r0 = (p193e.p194a.p195a.p200c.AbstractC5444k5) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L67
            r0 = r5
            r0.mo32450k1()
        L67:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5240e5.m33539C8():void");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4.AbstractC5720a
    /* renamed from: D2 */
    public void mo32762D2() {
        this.f17983U.mo33388D2();
        m33511ek();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Eq */
    public void mo33538Eq() {
        m33492sk("notspam");
        Participant[] participantArr = this.f17990e;
        if (participantArr != null) {
            if (!(!(participantArr.length == 0))) {
                participantArr = null;
            }
            if (participantArr == null) {
                return;
            }
            AbstractC5687r3 abstractC5687r3 = this.f18009o0;
            List T = s1.u.i.T((Participant[]) Arrays.copyOf(participantArr, participantArr.length));
            C5718s3 c5718s3 = (C5718s3) abstractC5687r3;
            Objects.requireNonNull(c5718s3);
            l.e(T, "participants");
            c5718s3.f19171b.mo13215k(T);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Ij */
    public boolean mo33537Ij(Bundle bundle) {
        l.e(bundle, "args");
        Intent intent = new Intent();
        intent.putExtras(bundle);
        if (!C7281h.m29861b(intent)) {
            return false;
        }
        this.f17966B0.mo26757a(C7281h.m29862a(intent).m25827a());
        int i = bundle.getInt("extra_notification_id", -1);
        this.f18029y0.f74199b.cancel(null, i);
        this.f18031z0.mo26216b(i);
        long j = bundle.getLong("message_id", -1L);
        if (j != -1) {
            ((AbstractC6233m) ((AbstractC19854f) this.f17969D.get()).mo11854a()).mo31690g0(new long[]{j});
        }
        this.f17964A0.mo13223c("openConversation", j, true);
        return true;
    }

    /* renamed from: J2 */
    public final void m33536J2(C6113f c6113f) {
        this.f17982T.mo32860e(c6113f);
        this.f18018t = c6113f;
        this.f18011p0.mo32736J2(c6113f);
        this.f17983U.mo33382J2(c6113f);
        AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k5 != null) {
            abstractC5444k5.mo32354Z5();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Jj */
    public void mo33535Jj(CallType callType) {
        l.e(callType, "callType");
        if (callType == CallType.PHONE) {
            m33539C8();
        } else {
            m33504kk();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Kj */
    public void mo33534Kj() {
        AbstractC5444k5 abstractC5444k5;
        if (this.f18025w0.mo32047j() && (abstractC5444k5 = (AbstractC5444k5) this.f57683a) != null) {
            abstractC5444k5.mo32552E1("ConversationBanner");
        }
    }

    /* renamed from: L0 */
    public void m33533L0() {
        m33500mk(false);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Lj */
    public void mo33532Lj(boolean z, boolean z2) {
        m33514bk(z && z2);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Mj */
    public void mo33531Mj() {
        Long l = this.f17991f;
        if (l != null) {
            ((AbstractC6233m) ((AbstractC19854f) this.f17969D.get()).mo11854a()).mo31680A(l.longValue()).mo11828g();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Nj */
    public void mo33530Nj() {
        Conversation conversation = this.f17989d;
        if (conversation != null) {
            ((AbstractC6233m) ((AbstractC19854f) this.f17969D.get()).mo11854a()).mo31699a0(conversation.f13199a);
        }
        m33511ek();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Oj */
    public void mo33529Oj(int i, String str) {
        boolean z;
        l.e(str, "analyticsContext");
        if (this.f17986X.mo19347j()) {
            AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k5 == null) {
                return;
            }
            abstractC5444k5.mo32485W(i, str);
            return;
        }
        String[] mo19356a = this.f17986X.mo19356a();
        int length = mo19356a.length;
        int i2 = 0;
        while (true) {
            z = false;
            if (i2 >= length) {
                break;
            }
            String str2 = mo19356a[i2];
            AbstractC5444k5 abstractC5444k52 = (AbstractC5444k5) this.f57683a;
            if (C12864a2.m22540r(abstractC5444k52 != null ? Boolean.valueOf(abstractC5444k52.mo32451k(str2)) : null)) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            AbstractC5444k5 abstractC5444k53 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k53 == null) {
                return;
            }
            abstractC5444k53.mo32431p5();
            return;
        }
        AbstractC5444k5 abstractC5444k54 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k54 == null) {
            return;
        }
        abstractC5444k54.mo32427q0(i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4.AbstractC5720a
    /* renamed from: P4 */
    public void mo32761P4(Message... messageArr) {
        Entity[] entityArr;
        ImForwardInfo imForwardInfo;
        ImGroupInfo imGroupInfo;
        l.e(messageArr, "message");
        Message[] messageArr2 = (Message[]) Arrays.copyOf(messageArr, messageArr.length);
        if (this.f57683a != 0) {
            if (messageArr2.length == 0) {
                return;
            }
            ArrayList<ForwardContentItem> arrayList = new ArrayList<>(messageArr2.length);
            ArrayList arrayList2 = new ArrayList();
            for (Message message : messageArr2) {
                LinkedList linkedList = new LinkedList();
                for (Entity entity : message.f13394o) {
                    if (entity instanceof BinaryEntity) {
                        linkedList.add(entity);
                        if (!entity.mo34997n()) {
                            arrayList2.add(((BinaryEntity) entity).f13173i);
                        }
                    }
                }
                String m35025a = message.m35025a();
                l.d(m35025a, "theMessage.buildMessageText()");
                boolean m25865z1 = C10480a.m25865z1(message);
                int i = message.f13390k;
                Mention[] mentionArr = message.f13395p;
                ArrayList newArrayList = Collections2.newArrayList((Mention[]) Arrays.copyOf(mentionArr, mentionArr.length));
                l.d(newArrayList, "Lists.newArrayList(*theMessage.mentions)");
                TransportInfo transportInfo = message.f13393n;
                if (!(transportInfo instanceof ImTransportInfo)) {
                    transportInfo = null;
                }
                if (transportInfo != null) {
                    ImTransportInfo imTransportInfo = (ImTransportInfo) transportInfo;
                    String str = imTransportInfo.f13729b;
                    String mo31078f = C10480a.m25874x1(message) ? this.f17976N.mo31078f() : message.f13382c.f11570c;
                    Conversation conversation = this.f17989d;
                    imForwardInfo = new ImForwardInfo(str, mo31078f, (conversation == null || (imGroupInfo = conversation.f13224z) == null) ? null : imGroupInfo.f13319a, imTransportInfo.f13742o);
                } else {
                    imForwardInfo = null;
                }
                l.e(arrayList, "$this$collectAll");
                l.e(m35025a, "text");
                l.e(linkedList, "entities");
                l.e(newArrayList, "mentions");
                LinkedList linkedList2 = !linkedList.isEmpty() ? linkedList : null;
                if (linkedList2 != null) {
                    int i2 = 0;
                    for (Object obj : linkedList2) {
                        if (i2 < 0) {
                            s1.u.i.N0();
                            throw null;
                        }
                        BinaryEntity binaryEntity = (BinaryEntity) obj;
                        arrayList.add(i2 != linkedList.size() - 1 ? new ForwardContentItem("", false, binaryEntity, i, newArrayList, imForwardInfo) : new ForwardContentItem(m35025a, m25865z1, binaryEntity, i, newArrayList, imForwardInfo));
                        i2++;
                    }
                    continue;
                } else {
                    arrayList.add(new ForwardContentItem(m35025a, m25865z1, null, i, newArrayList, imForwardInfo));
                }
            }
            if (!arrayList2.isEmpty()) {
                this.f17979Q.mo11854a().mo14129e(arrayList2).mo11830e(this.f18022v, new C5325g5(this, arrayList));
                return;
            }
            AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k5 == null) {
                return;
            }
            abstractC5444k5.mo32556D8(arrayList, this.f17963A);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4.AbstractC5277a
    /* renamed from: Ph */
    public void mo33446Ph(Draft draft) {
        m33496p(draft);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Pj */
    public void mo33528Pj() {
        AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k5 != null) {
            abstractC5444k5.mo32351b(this.f18013q0.mo22844c());
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Qj */
    public void mo33527Qj() {
        Participant participant;
        c0 c0Var = new c0();
        Participant[] participantArr = this.f17990e;
        if (participantArr == null || (participant = (Participant) C25225a.m3830v0(participantArr)) == null) {
            return;
        }
        c0Var.a = participant;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5246f(c0Var, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: R0 */
    public void mo33526R0(int i) {
        AbstractC5444k5 abstractC5444k5;
        ConversationAction findById = ConversationAction.findById(i);
        if (findById != null) {
            l.d(findById, "ConversationAction.findById(actionId) ?: return");
            int ordinal = findById.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    m33495pk();
                    return;
                } else if (ordinal != 2 || (abstractC5444k5 = (AbstractC5444k5) this.f57683a) == null) {
                    return;
                } else {
                    abstractC5444k5.mo32498Sp();
                    return;
                }
            }
            Participant participant = this.f17998j;
            if (participant == null) {
                return;
            }
            m33500mk(true);
            AbstractC5444k5 abstractC5444k52 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k52 == null) {
                return;
            }
            abstractC5444k52.mo32429pf(participant);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Rj */
    public void mo33525Rj(boolean z) {
        m33506ik(z);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Sj */
    public void mo33524Sj() {
        Participant participant = this.f17998j;
        if (participant != null) {
            m33500mk(true);
            AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k5 == null) {
                return;
            }
            abstractC5444k5.mo32429pf(participant);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Tj */
    public void mo33523Tj(Contact contact, byte[] bArr) {
        l.e(contact, AnalyticsConstants.CONTACT);
        AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k5 != null) {
            abstractC5444k5.mo32435nq(contact, bArr);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Uj */
    public void mo33522Uj(boolean z, SpamCategoryResult spamCategoryResult) {
        if (!z || spamCategoryResult == null) {
            return;
        }
        String str = spamCategoryResult.f14924b;
        FiltersContract.Filters.EntityType fromIsBusiness = FiltersContract.Filters.EntityType.fromIsBusiness(spamCategoryResult.f14925c);
        l.d(fromIsBusiness, "FiltersContract.Filters.…ategoryResult.isBusiness)");
        Long l = spamCategoryResult.f14923a;
        boolean z2 = spamCategoryResult.f14928f;
        Participant[] participantArr = this.f17990e;
        if (participantArr == null) {
            return;
        }
        if (!(!(participantArr.length == 0))) {
            participantArr = null;
        }
        if (participantArr == null) {
            return;
        }
        if (z2 && !h.j(str)) {
            this.f17977O.mo11854a().mo14077d(participantArr[0].f11575h).mo11830e(this.f18022v, new C5228d5(this, str, fromIsBusiness));
        }
        this.f18015r0.mo30057a(s1.u.i.T((Participant[]) Arrays.copyOf(participantArr, participantArr.length)), str, fromIsBusiness, l, true, "conversation");
        AbstractC5687r3 abstractC5687r3 = this.f18009o0;
        List T = s1.u.i.T((Participant[]) Arrays.copyOf(participantArr, participantArr.length));
        int i = this.f18028y;
        C5718s3 c5718s3 = (C5718s3) abstractC5687r3;
        Objects.requireNonNull(c5718s3);
        l.e(T, "participants");
        l.e("conversation", ViewAction.VIEW);
        l.e(fromIsBusiness, "isBusiness");
        c5718s3.f19171b.mo13219g(T, "conversation", i != 2 ? i != 3 ? i != 4 ? InboxTab.PERSONAL : InboxTab.PROMOTIONAL : InboxTab.SPAM : InboxTab.OTHERS, l, fromIsBusiness);
        Conversation conversation = this.f17989d;
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = C10480a.m25885v0(participantArr[0]);
        }
        String m26058J0 = C10480a.m26058J0(participantArr[0]);
        l.d(m26058J0, "ParticipantUtils.getPres…eAddress(participants[0])");
        if (participantArr[0].f11569b == 3 && conversation != null && conversation.f13188C) {
            AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k5 != null) {
                abstractC5444k5.mo32417sh(Boolean.TRUE, this.f17991f);
            }
            AbstractC5444k5 abstractC5444k52 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k52 == null) {
                return;
            }
            abstractC5444k52.finish();
        } else if (this.f17980R.m16335a()) {
            AbstractC5444k5 abstractC5444k53 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k53 == null) {
                return;
            }
            abstractC5444k53.mo32413u3(str2, m26058J0);
        } else {
            AbstractC5444k5 abstractC5444k54 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k54 == null) {
                return;
            }
            abstractC5444k54.mo32532Jx(str2, m26058J0);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Uq */
    public void mo33521Uq() {
        m33492sk("unblock");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Vj */
    public void mo33520Vj() {
        AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k5 != null) {
            abstractC5444k5.mo32498Sp();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Wj */
    public void mo33519Wj(Bundle bundle) {
        if (bundle == null) {
            n.y1(this.f17985W, "conversation", "viewed");
        } else {
            this.f18000k = bundle.getInt("send_type");
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Xj */
    public void mo33518Xj(boolean z) {
        m33506ik(z);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.a.c.k5, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        Participant participant;
        ?? r0 = (AbstractC5444k5) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        m33511ek();
        m33510fk(false);
        m33493rk();
        m33507hk();
        this.f17996i = false;
        Conversation conversation = this.f17989d;
        if (conversation != null) {
            Participant[] participantArr = conversation.f13211m;
            l.d(participantArr, "it.participants");
            m33499nk(participantArr);
        }
        if (this.f17993g0.mo28580d() && this.f17988Z.mo30754f()) {
            r0.mo32474ae();
        }
        AbstractC5687r3 abstractC5687r3 = this.f18009o0;
        String str = this.f17967C;
        C5718s3 c5718s3 = (C5718s3) abstractC5687r3;
        Objects.requireNonNull(c5718s3);
        l.e(str, "conversationContext");
        AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
        l.e("conversation", "viewId");
        Participant[] participantArr2 = null;
        abstractC19510i0.mo13224b(new C19597a("conversation", str, null));
        this.f17983U.mo33354Sa(new C5402j5(this));
        Participant[] participantArr3 = this.f17990e;
        if (participantArr3 != null) {
            boolean z = false;
            if (participantArr3.length == 1) {
                z = false;
                if (this.f18030z) {
                    z = true;
                }
            }
            if (z) {
                participantArr2 = participantArr3;
            }
            if (participantArr2 == null || (participant = (Participant) C25225a.m3830v0(participantArr2)) == null) {
                return;
            }
            this.f18019t0.mo30815f(participant);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Yj */
    public void mo33517Yj(Bundle bundle) {
        l.e(bundle, "args");
        this.f17968C0.mo31935a(bundle);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: Zj */
    public void mo33516Zj() {
        m33510fk(true);
    }

    /* renamed from: bk */
    public final void m33514bk(boolean z) {
        if (z) {
            if (!(this.f17987Y.mo13823j() && this.f17987Y.mo13830c())) {
                AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
                if (abstractC5444k5 == null) {
                    return;
                }
                boolean z2 = true;
                if (!abstractC5444k5.mo32451k("android.permission.READ_EXTERNAL_STORAGE")) {
                    z2 = abstractC5444k5.mo32451k("android.permission.WRITE_EXTERNAL_STORAGE");
                }
                if (z2) {
                    abstractC5444k5.mo32501S3();
                    return;
                } else {
                    abstractC5444k5.mo32449k4(10);
                    return;
                }
            }
        }
        this.f17983U.mo33390C4();
        Conversation conversation = this.f17989d;
        if (conversation != null) {
            AbstractC19844a abstractC19844a = this.f17994h;
            if (abstractC19844a != null) {
                abstractC19844a.mo11832b();
            }
            this.f17994h = ((AbstractC6233m) ((AbstractC19854f) this.f17969D.get()).mo11854a()).mo31683t(conversation.f13199a, this.f18028y, conversation.f13218t, z, false).mo11830e(this.f18022v, new C5241a());
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f17981S.mo32573n0();
        this.f17981S.mo32579e(null);
        AbstractC19844a abstractC19844a = this.f17994h;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
        this.f17994h = null;
        super.mo9806c();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4.AbstractC5277a
    /* renamed from: c0 */
    public void mo33445c0() {
        m33539C8();
    }

    /* renamed from: ck */
    public final void m33513ck(int i) {
        AbstractC5444k5 abstractC5444k5;
        boolean z = this.f17982T.mo32868G() == ConversationMode.SCHEDULE;
        AbstractC5444k5 abstractC5444k52 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k52 != null) {
            abstractC5444k52.mo32432od(!z);
        }
        if (z || (abstractC5444k5 = (AbstractC5444k5) this.f57683a) == null) {
            return;
        }
        abstractC5444k5.mo32524M6(i);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3.AbstractC5795a
    /* renamed from: da */
    public void mo32588da() {
        Participant[] participantArr = this.f17990e;
        if (C12864a2.m22540r(participantArr != null ? Boolean.valueOf(C6405h.m31298f(participantArr)) : null)) {
            m33511ek();
        }
    }

    /* renamed from: dk */
    public final int m33512dk(Participant participant) {
        int i;
        return (!this.f17988Z.mo30754f() || !((i = participant.f11569b) == 3 || i == 4)) ? participant.f11569b == 3 ? 2131886581 : 2131886611 : 2131886564;
    }

    /* renamed from: ek */
    public final void m33511ek() {
        if (this.f18012q) {
            this.f18014r = true;
        } else {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5243c(this.f17990e, this.f17991f, null), 3, (Object) null);
        }
    }

    /* renamed from: fk */
    public final void m33510fk(boolean z) {
        boolean z2;
        Conversation conversation = this.f17989d;
        if (conversation == null) {
            this.f18016s = true;
            return;
        }
        Participant[] participantArr = conversation.f13211m;
        int length = participantArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z2 = false;
                break;
            } else if (participantArr[i].m35449k(false)) {
                z2 = true;
                break;
            } else {
                i++;
            }
        }
        if (z2) {
            return;
        }
        this.f18011p0.mo32729L7(conversation, z);
    }

    /* renamed from: gk */
    public final void m33509gk(Conversation conversation) {
        if (!this.f17963A || this.f17965B) {
            this.f17974L.mo11854a().mo29775b(conversation.f13199a);
        }
        this.f17997i0.mo11854a().mo30804b(conversation.f13199a);
        this.f17974L.mo11854a().mo29766k(conversation.f13199a);
        if (!this.f17965B) {
            this.f18027x0.mo29790b(conversation.f13199a);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p218o8.AbstractC5639g.AbstractC5640a
    /* renamed from: h */
    public ImGroupInfo mo32836h() {
        return this.f17982T.mo32857h();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: hb */
    public void mo33508hb() {
        this.f17983U.mo33316hb();
    }

    /* renamed from: hk */
    public final void m33507hk() {
        Participant[] participantArr = this.f17990e;
        if (participantArr == null || this.f18020u) {
            return;
        }
        this.f18020u = true;
        if (C6405h.m31299e(participantArr)) {
            return;
        }
        if (!(!(participantArr.length == 0))) {
            return;
        }
        Participant participant = participantArr[0];
        AbstractC5687r3 abstractC5687r3 = this.f18009o0;
        String str = this.f17967C;
        C5718s3 c5718s3 = (C5718s3) abstractC5687r3;
        Objects.requireNonNull(c5718s3);
        l.e(participant, "participant");
        l.e(str, AnalyticsConstants.CONTEXT);
        String str2 = participant.f11572e;
        l.d(str2, "participant.normalizedAddress");
        int m28330K = C8582g0.m28330K(str2);
        String str3 = participant.f11572e;
        l.d(str3, "participant.normalizedAddress");
        if (!C8582g0.m28317c(str3, participant.f11569b, m28330K)) {
            return;
        }
        String m28346m = C8574c0.m28346m(participant.f11572e);
        l.d(m28346m, "PhoneNumberUtils.stripAl…cipant.normalizedAddress)");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("page_view", "<set-?>");
        l.e("conversation_view", "<set-?>");
        String m26803a = C10031q.m26803a(m28346m, participant.m35448l());
        l.e(m26803a, "<set-?>");
        l.e(ViewAction.VIEW, "<set-?>");
        l.e(str, "<set-?>");
        AbstractC10060c abstractC10060c = c5718s3.f19173d;
        if (!("page_view".length() > 0)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        abstractC10060c.mo26757a(new C10529b(new SimpleAnalyticsModel("page_view", "conversation_view", m26803a, str, ViewAction.VIEW, "", 0L, null, false, 448, null), s1.u.i.W0(linkedHashMap)));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4.AbstractC5720a
    /* renamed from: i */
    public void mo32760i(Message message, String str) {
        l.e(message, "message");
        l.e(str, "action");
        this.f17983U.mo33314i(message, str);
    }

    /* renamed from: ik */
    public final void m33506ik(boolean z) {
        if (!z) {
            AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k5 != null) {
                abstractC5444k5.mo32417sh(Boolean.TRUE, this.f17991f);
            }
            AbstractC5444k5 abstractC5444k52 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k52 == null) {
                return;
            }
            abstractC5444k52.finish();
        }
    }

    /* renamed from: jk */
    public final void m33505jk(Draft draft) {
        if (draft != null) {
            BinaryEntity[] binaryEntityArr = draft.f13272g;
            l.d(binaryEntityArr, "draft.media");
            ArrayList arrayList = new ArrayList();
            for (BinaryEntity binaryEntity : binaryEntityArr) {
                boolean z = true;
                if (!binaryEntity.mo34895l()) {
                    z = true;
                    if (!binaryEntity.mo34892w()) {
                        z = true;
                        if (!binaryEntity.mo34999h()) {
                            z = true;
                            if (!binaryEntity.f13184t) {
                                z = binaryEntity.mo34893t();
                            }
                        }
                    }
                }
                if (z) {
                    arrayList.add(binaryEntity);
                }
            }
            if (!arrayList.isEmpty()) {
                BinaryEntity binaryEntity2 = (BinaryEntity) arrayList.get(0);
                this.f17983U.mo32625dc(binaryEntity2.f13184t ? DraftMode.DOCUMENTS : binaryEntity2.mo34893t() ? DraftMode.VCARD : DraftMode.GALLERY, s1.u.s.a, arrayList, draft.f13268c, false, draft.f13282q, draft.f13283r);
                return;
            }
        }
        this.f17983U.mo33395Aj();
        m33496p(draft);
    }

    /* renamed from: kk */
    public final void m33504kk() {
        PV pv;
        AbstractC5444k5 abstractC5444k5;
        Participant[] participantArr = this.f17990e;
        if (participantArr == null || participantArr.length != 1 || (pv = this.f57683a) == 0) {
            return;
        }
        AbstractC5444k5 abstractC5444k52 = (AbstractC5444k5) pv;
        if (abstractC5444k52 != null) {
            abstractC5444k52.mo32418sg();
        }
        AbstractC11476s1 abstractC11476s1 = this.f18001k0;
        String str = participantArr[0].f11572e;
        l.d(str, "participants[0].normalizedAddress");
        abstractC11476s1.mo24623a(str, "conversation");
        if (!this.f17963A || (abstractC5444k5 = (AbstractC5444k5) this.f57683a) == null) {
            return;
        }
        abstractC5444k5.mo32450k1();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5108b4.AbstractC5109a
    /* renamed from: l0 */
    public void mo33503l0() {
        ImGroupInfo imGroupInfo;
        AbstractC5444k5 abstractC5444k5;
        Conversation conversation = this.f17989d;
        if (conversation == null || (imGroupInfo = conversation.f13224z) == null || C10480a.m25989a1(imGroupInfo) || (abstractC5444k5 = (AbstractC5444k5) this.f57683a) == null) {
            return;
        }
        abstractC5444k5.mo32475a1(conversation);
    }

    /* renamed from: lk */
    public final void m33502lk(long j) {
        List<? extends AbstractC6225a> a1 = s1.u.i.a1(this.f17981S.mo32582b());
        ListIterator listIterator = ((ArrayList) a1).listIterator();
        while (listIterator.hasNext()) {
            if (((AbstractC6225a) listIterator.next()).getId() == j) {
                listIterator.remove();
            }
        }
        this.f17981S.mo32580d(a1);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: m2 */
    public void mo33501m2(Bundle bundle) {
        l.e(bundle, "state");
        bundle.putInt("send_type", this.f18000k);
    }

    /* renamed from: mk */
    public final void m33500mk(boolean z) {
        Draft mo33377L2;
        if (this.f57683a == 0 || (mo33377L2 = this.f17983U.mo33377L2()) == null) {
            return;
        }
        ((AbstractC6233m) ((AbstractC19854f) this.f17969D.get()).mo11854a()).mo31719B(mo33377L2, "conversation").mo11830e(this.f18022v, new C5248g(z, mo33377L2));
    }

    /* renamed from: nk */
    public final void m33499nk(Participant[] participantArr) {
        int i;
        this.f18023v0.mo33684Qc(participantArr);
        this.f18008o.clear();
        if (participantArr.length != 1 || C10480a.m25914p1(participantArr)) {
            m33502lk(-10000000L);
            if (this.f17983U.mo33364P6() && C6405h.m31298f(participantArr)) {
                m33513ck(m33512dk(participantArr[0]));
            }
        } else {
            Participant participant = participantArr[0];
            if (this.f17983U.mo33364P6()) {
                m33513ck(m33512dk(participant));
            } else {
                AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
                if (abstractC5444k5 != null) {
                    abstractC5444k5.mo32492U5();
                }
            }
            this.f17998j = participant;
            if (participant.m35447m() || (i = participant.f11576i) == 1 || i == 2 || participant.f11569b == 5) {
                m33502lk(-10000000L);
            } else if (!this.f18008o.isEmpty()) {
                List<? extends AbstractC6225a> a1 = s1.u.i.a1(this.f17981S.mo32582b());
                int mo32577g = this.f17981S.mo32577g(-10000000L);
                if (mo32577g != -1) {
                    ((ArrayList) a1).set(mo32577g, new C5432a(-10000000L, this.f18008o));
                } else {
                    ((ArrayList) a1).add(new C5432a(-10000000L, this.f18008o));
                }
                this.f17981S.mo32580d(a1);
            }
        }
        if (!this.f17996i && this.f17973K.mo14245a()) {
            for (Participant participant2 : participantArr) {
                if (this.f18003l0.mo10137c(participant2)) {
                    this.f18017s0.mo34013a(participant2, "conversation", new C5249h());
                }
            }
        }
        this.f17996i = true;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    /* renamed from: o5 */
    public void mo33498o5() {
        AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k5 != null) {
            abstractC5444k5.mo32353a(2131886788);
        }
    }

    /* renamed from: ok */
    public final void m33497ok() {
        Participant[] participantArr;
        Participant participant;
        if (w3.c.a.a.a.a.e(this.f17990e) || (participantArr = this.f17990e) == null || (participant = (Participant) C25225a.m3845s0(participantArr)) == null) {
            return;
        }
        boolean z = this.f17973K.mo14245a() && participant.m35444p();
        String m25885v0 = C10480a.m25885v0(participant);
        l.d(m25885v0, "ParticipantUtils.getDisplayName(participant)");
        PhoneNumberType m28321T = C8582g0.m28321T(participant.f11569b);
        AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k5 == null) {
            return;
        }
        abstractC5444k5.mo32438n5(m25885v0, z, participant.f11572e, m28321T);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri data;
        if (i == 1) {
            if (i2 != -1) {
                this.f17977O.mo11854a().mo14072i().mo11830e(this.f18022v, new C5245e());
            } else if (intent == null || (data = intent.getData()) == null) {
            } else {
                l.d(data, "data?.data ?: return");
                this.f17977O.mo11854a().mo14075f(data).mo11830e(this.f18022v, new C5244d());
            }
        } else if (i != 5) {
            if (i != 13 || i2 != -1) {
                return;
            }
            m33514bk(false);
        } else if (i2 != -1 || this.f57683a == 0) {
        } else {
            m33497ok();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    public void onPause() {
        this.f17981S.mo32573n0();
        this.f17973K.mo14238h(this.f18010p);
        Draft draft = this.f17992g;
        Conversation conversation = draft != null ? draft.f13267b : null;
        if (conversation != null) {
            m33494qk(conversation);
        }
        if (this.f18005m0.isPlaying()) {
            ((C5718s3) this.f18009o0).m32766e("Interrupt");
        }
        this.f18011p0.mo32734Jc();
        this.f18005m0.release();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        if (this.f57683a == 0) {
            return;
        }
        if (i == 3) {
            this.f17987Y.mo13826g(strArr, iArr, "android.permission.READ_EXTERNAL_STORAGE");
        } else if (i == 10) {
            if (!this.f17987Y.mo13826g(strArr, iArr, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                return;
            }
            m33514bk(true);
        } else if (i != 13 || !this.f17986X.mo19347j()) {
        } else {
            m33514bk(true);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    public void onResume() {
        if (!this.f17973K.mo14245a() && this.f17973K.mo14246Q0()) {
            AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k5 != null) {
                abstractC5444k5.mo32458h0();
            }
            AbstractC5444k5 abstractC5444k52 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k52 == null) {
                return;
            }
            abstractC5444k52.finish();
        } else if (!this.f17986X.mo19348i()) {
            AbstractC5444k5 abstractC5444k53 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k53 != null) {
                abstractC5444k53.mo32487V8("messages");
            }
            AbstractC5444k5 abstractC5444k54 = (AbstractC5444k5) this.f57683a;
            if (abstractC5444k54 == null) {
                return;
            }
            abstractC5444k54.finish();
        } else {
            this.f17981S.mo32581c(this);
            this.f17973K.mo14241e(this.f18010p, "com.truecaller.messaging.transport.im.ACTION_IM_USED_ADDED");
            Draft draft = this.f17992g;
            if (draft == null) {
                return;
            }
            this.f18006n = true;
            Conversation conversation = draft != null ? draft.f13267b : null;
            if (conversation == null) {
                m33511ek();
                return;
            }
            m33509gk(conversation);
            Participant[] participantArr = this.f17990e;
            Boolean bool = null;
            if (participantArr != null) {
                bool = Boolean.valueOf(C6405h.m31298f(participantArr));
            }
            if (C12864a2.m22540r(bool)) {
                m33511ek();
            } else {
                mo32589C();
            }
            m33510fk(false);
            this.f17983U.mo33376Le();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    public void onStart() {
        AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k5 != null) {
            abstractC5444k5.mo32428pr();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5179c5
    public void onStop() {
        m33500mk(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x019a, code lost:
        if ((!s1.z.c.l.a(r12, r10.f13267b != null ? java.lang.Long.valueOf(r0.f13199a) : null)) != false) goto L67;
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02d9  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33496p(com.truecaller.messaging.data.types.Draft r10) {
        /*
            Method dump skipped, instructions count: 1439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5240e5.m33496p(com.truecaller.messaging.data.types.Draft):void");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4.AbstractC5720a
    /* renamed from: pa */
    public void mo32759pa(int i) {
        C6113f c6113f = this.f18018t;
        if (c6113f != null) {
            m33536J2(new C6113f(c6113f.f20302a, c6113f.f20303b, i));
        }
    }

    /* renamed from: pk */
    public final void m33495pk() {
        Participant participant;
        Participant[] participantArr = this.f17990e;
        if (((participantArr == null || (participant = (Participant) C25225a.m3830v0(participantArr)) == null || participant.f11569b != 3) ? false : true) || !this.f17999j0.mo30444a()) {
            m33497ok();
            return;
        }
        AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k5 == null) {
            return;
        }
        abstractC5444k5.mo32485W(5, "conversation-blockUser");
    }

    /* renamed from: qk */
    public final void m33494qk(Conversation conversation) {
        this.f17974L.mo11854a().mo29776a(conversation.f13199a);
        this.f17997i0.mo11854a().mo30805a(conversation.f13199a);
        if (!this.f17965B) {
            this.f18027x0.mo29791a(conversation.f13199a);
        }
    }

    /* renamed from: rk */
    public final void m33493rk() {
        Participant[] participantArr = this.f17990e;
        if (participantArr == null || participantArr.length != 1 || !this.f17993g0.mo28580d()) {
            return;
        }
        Participant participant = participantArr[0];
        if (participant.f11569b != 0) {
            return;
        }
        this.f17995h0.mo11854a().mo30791a(C25225a.m3962T1(participant.f11572e), false).mo11828g();
    }

    /* renamed from: sk */
    public final void m33492sk(String str) {
        Participant[] participantArr = this.f17990e;
        if (participantArr != null) {
            if (!(!(participantArr.length == 0))) {
                participantArr = null;
            }
            if (participantArr == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (Participant participant : participantArr) {
                String str2 = participant.f11572e;
                l.d(str2, "participant.normalizedAddress");
                arrayList.add(str2);
                int i = participant.f11569b;
                String str3 = i == 3 ? "IM_ID" : i == 0 ? "PHONE_NUMBER" : "OTHER";
                l.d(str3, "ParticipantUtils.getFilterType(participant.type)");
                arrayList2.add(str3);
                String m25885v0 = C10480a.m25885v0(participant);
                l.d(m25885v0, "ParticipantUtils.getDisplayName(participant)");
                arrayList3.add(m25885v0);
            }
            List T = s1.u.i.T(new List[]{arrayList, arrayList2, arrayList3});
            this.f17978P.mo11854a().mo19532a(C25225a.m3897h3(participantArr), (List) T.get(1), (List) T.get(2), str, "conversation", true).mo11830e(this.f18022v, new C5250i());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
        if (r12 != null) goto L15;
     */
    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4.AbstractC5720a
    /* renamed from: ui */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo32758ui(com.truecaller.messaging.data.types.Message r9) {
        /*
            r8 = this;
            r0 = r9
            java.lang.String r1 = "message"
            s1.z.c.l.e(r0, r1)
            r0 = r8
            e.a.a.c.f4 r0 = r0.f17983U
            r0.mo33390C4()
            r0 = r8
            com.truecaller.data.entity.messaging.Participant[] r0 = r0.f17990e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto Lb0
            r0 = r9
            java.lang.String r1 = "$this$isRetry"
            s1.z.c.l.e(r0, r1)
            r0 = r9
            int r0 = r0.f13386g
            r1 = 64
            r0 = r0 & r1
            if (r0 <= 0) goto L2f
            r0 = 1
            r11 = r0
            goto L31
        L2f:
            r0 = 0
            r11 = r0
        L31:
            r0 = r11
            if (r0 != 0) goto L93
            r0 = r8
            com.truecaller.messaging.data.types.Draft r0 = r0.f17992g
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L4f
            r0 = r12
            com.truecaller.messaging.data.types.Conversation r0 = r0.f13267b
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L4f
            goto L6e
        L4f:
            com.truecaller.messaging.data.types.Conversation$b r0 = new com.truecaller.messaging.data.types.Conversation$b
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            r1 = r9
            long r1 = r1.f13381b
            r0.f13237a = r1
            r0 = r12
            r1 = 0
            r0.f13255s = r1
            r0 = r12
            com.truecaller.messaging.data.types.Conversation r0 = r0.m35063b()
            r12 = r0
        L6e:
            r0 = r12
            java.lang.String r1 = "draft?.conversation ?: C…LIT_CRITERIA_ALL).build()"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            e.a.a.k.t r0 = r0.f17975M
            r1 = r9
            r2 = r10
            r3 = r12
            com.truecaller.messaging.data.types.Draft r0 = r0.mo30549m(r1, r2, r3)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "transportManager.revertT…rticipants, conversation)"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            r1 = r9
            r0.m33505jk(r1)
            goto Lb0
        L93:
            r0 = r8
            e.a.a.k.t r0 = r0.f17975M
            r1 = r9
            r2 = r10
            r3 = r8
            e.a.r2.j r3 = r3.f18022v
            e.a.a.c.f5 r4 = new e.a.a.c.f5
            r5 = r4
            r6 = r8
            r5.<init>(r6)
            e.a.r2.a r0 = r0.mo30561a(r1, r2, r3, r4)
            java.lang.String r1 = "transportManager.revertT…raft(draft)\n            }"
            s1.z.c.l.d(r0, r1)
        Lb0:
            r0 = r8
            PV r0 = r0.f57683a
            e.a.a.c.k5 r0 = (p193e.p194a.p195a.p200c.AbstractC5444k5) r0
            r9 = r0
            r0 = r9
            if (r0 == 0) goto Lc6
            r0 = r9
            r1 = 1
            r2 = 300(0x12c, double:1.48E-321)
            r0.mo32465f3(r1, r2)
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5240e5.mo32758ui(com.truecaller.messaging.data.types.Message):void");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4.AbstractC5720a
    /* renamed from: w6 */
    public void mo32757w6(Message message) {
        l.e(message, "message");
        this.f17983U.mo33294y5(message);
        ReplySnippet replySnippet = new ReplySnippet(message);
        AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k5 != null) {
            abstractC5444k5.mo32493U1(replySnippet, this.f18007n0.mo31323q(replySnippet));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4.AbstractC5277a
    /* renamed from: x7 */
    public void mo33444x7(C5532f c5532f) {
        l.e(c5532f, "pokeableEmoji");
        AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k5 != null) {
            abstractC5444k5.mo32558Cs(c5532f.f18712b);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4.AbstractC5277a
    /* renamed from: z1 */
    public void mo33443z1() {
        m33504kk();
    }

    /* renamed from: z7 */
    public boolean m33491z7(int i) {
        ConversationAction findById = ConversationAction.findById(i);
        return findById == null || this.f18008o.contains(findById);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4.AbstractC5720a
    /* renamed from: zd */
    public void mo32756zd(Message message) {
        l.e(message, "message");
        AbstractC5444k5 abstractC5444k5 = (AbstractC5444k5) this.f57683a;
        if (abstractC5444k5 != null) {
            abstractC5444k5.mo32561Ba(message.f13380a);
        }
    }
}
