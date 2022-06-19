package p193e.p194a.p195a.p200c;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.webkit.URLUtil;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.flashsdk.models.FlashContact;
import com.truecaller.insights.models.smartcards.CardFeedBackType;
import com.truecaller.insights.models.smartcards.FeedbackClass;
import com.truecaller.insights.models.smartcards.FeedbackSubclass;
import com.truecaller.messaging.conversation.adapter.loader.LoadHistoryType;
import com.truecaller.messaging.conversation.voice_notes.PlayerVisualizerView;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.ImInviteGroupInfo;
import com.truecaller.messaging.data.types.LocationEntity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.Reaction;
import com.truecaller.messaging.data.types.ReplySnippet;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.history.HistoryTransportInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.AbstractC5719s4;
import p193e.p194a.p195a.p200c.C5678q5;
import p193e.p194a.p195a.p200c.p201a.AbstractC5027g;
import p193e.p194a.p195a.p200c.p201a.AbstractC5040n;
import p193e.p194a.p195a.p200c.p201a.AbstractC5041o;
import p193e.p194a.p195a.p200c.p208k.p211d.C5436a;
import p193e.p194a.p195a.p200c.p214m8.AbstractC5527a;
import p193e.p194a.p195a.p200c.p222s8.AbstractC5732i;
import p193e.p194a.p195a.p200c.p222s8.AbstractC5733j;
import p193e.p194a.p195a.p227e.AbstractC6005m;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.C6113f;
import p193e.p194a.p195a.p231g.p233k0.C6161b;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p244k.p245a.AbstractC6523c0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6614r0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p195a.p286y0.AbstractC7343q;
import p193e.p194a.p195a.p287z0.AbstractC7357d;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p552i.p559g.C10345c;
import p193e.p194a.p437c.p552i.p559g.C10346d;
import p193e.p194a.p437c.p570j.AbstractC10439b;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import p193e.p194a.p437c.p580r.p589j.AbstractC10627r;
import p193e.p194a.p437c.p610y.AbstractC10876i;
import p193e.p194a.p437c.p610y.C10872f;
import p193e.p194a.p619d.p637c0.AbstractC11430l0;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p678d4.AbstractC12595a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p851h5.AbstractC14967y;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.f0.r;
import s1.f0.v;
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
/* renamed from: e.a.a.c.t4 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/t4.class */
public final class C5744t4 extends AbstractC20574a<AbstractC5835z4> implements AbstractC5719s4 {

    /* renamed from: A */
    public final boolean f19212A;

    /* renamed from: A0 */
    public final AbstractC10439b f19213A0;

    /* renamed from: B */
    public final boolean f19214B;

    /* renamed from: B0 */
    public final AbstractC6005m f19215B0;

    /* renamed from: C */
    public final String f19216C;

    /* renamed from: D */
    public final a<AbstractC5719s4.AbstractC5720a> f19217D;

    /* renamed from: E */
    public final AbstractC5794w3 f19218E;

    /* renamed from: J */
    public final AbstractC5585n5 f19219J;

    /* renamed from: K */
    public final a<AbstractC6248w> f19220K;

    /* renamed from: L */
    public final AbstractC14967y f19221L;

    /* renamed from: M */
    public final AbstractC14965w f19222M;

    /* renamed from: N */
    public final C6161b f19223N;

    /* renamed from: O */
    public final AbstractC5655p5 f19224O;

    /* renamed from: P */
    public final AbstractC6708t f19225P;

    /* renamed from: Q */
    public final AbstractC19854f<AbstractC7343q> f19226Q;

    /* renamed from: R */
    public final AbstractC5733j f19227R;

    /* renamed from: S */
    public final AbstractC5687r3 f19228S;

    /* renamed from: T */
    public final AbstractC19854f<AbstractC6523c0> f19229T;

    /* renamed from: U */
    public final AbstractC6392i0 f19230U;

    /* renamed from: V */
    public final C20592g f19231V;

    /* renamed from: W */
    public final AbstractC5040n f19232W;

    /* renamed from: X */
    public final AbstractC5027g f19233X;

    /* renamed from: Y */
    public final AbstractC5041o f19234Y;

    /* renamed from: Z */
    public final AbstractC19233h0 f19235Z;

    /* renamed from: d */
    public Draft f19236d;

    /* renamed from: e */
    public C6113f f19237e;

    /* renamed from: f */
    public boolean f19238f;

    /* renamed from: g */
    public boolean f19239g;

    /* renamed from: g0 */
    public final AbstractC19022f0 f19240g0;

    /* renamed from: h */
    public Integer f19241h;

    /* renamed from: h0 */
    public final AbstractC19222c f19242h0;

    /* renamed from: i0 */
    public final AbstractC5527a f19244i0;

    /* renamed from: j */
    public Uri f19245j;

    /* renamed from: j0 */
    public final a<AbstractC19854f<AbstractC6233m>> f19246j0;

    /* renamed from: k0 */
    public final AbstractC19854f<AbstractC6485m> f19248k0;

    /* renamed from: l */
    public final long f19249l;

    /* renamed from: l0 */
    public final a<AbstractC6448d> f19250l0;

    /* renamed from: m */
    public Parcelable f19251m;

    /* renamed from: m0 */
    public final AbstractC5336h3 f19252m0;

    /* renamed from: n */
    public boolean f19253n;

    /* renamed from: n0 */
    public final AbstractC11476s1 f19254n0;

    /* renamed from: o */
    public p1 f19255o;

    /* renamed from: o0 */
    public final AbstractC21631b f19256o0;

    /* renamed from: p0 */
    public final AbstractC12595a f19258p0;

    /* renamed from: q0 */
    public final a<AbstractC5743t3> f19260q0;

    /* renamed from: r0 */
    public final AbstractC5341h7 f19262r0;

    /* renamed from: s */
    public int f19263s;

    /* renamed from: s0 */
    public final f f19264s0;

    /* renamed from: t */
    public boolean f19265t;

    /* renamed from: t0 */
    public final AbstractC9691j f19266t0;

    /* renamed from: u */
    public final AbstractC19868j f19267u;

    /* renamed from: u0 */
    public final AbstractC8571b f19268u0;

    /* renamed from: v */
    public final f f19269v;

    /* renamed from: v0 */
    public final AbstractC6614r0 f19270v0;

    /* renamed from: w */
    public final int f19271w;

    /* renamed from: w0 */
    public final C16461b f19272w0;

    /* renamed from: x */
    public final Long f19273x;

    /* renamed from: x0 */
    public final AbstractC10060c f19274x0;

    /* renamed from: y */
    public final int f19275y;

    /* renamed from: y0 */
    public final AbstractC10028o f19276y0;

    /* renamed from: z */
    public final boolean f19277z;

    /* renamed from: z0 */
    public final a<AbstractC7357d> f19278z0;

    /* renamed from: i */
    public long f19243i = -1;

    /* renamed from: k */
    public boolean f19247k = true;

    /* renamed from: p */
    public final HashSet<Long> f19257p = new HashSet<>();

    /* renamed from: q */
    public final HashSet<Long> f19259q = new HashSet<>();

    /* renamed from: r */
    public final HashSet<String> f19261r = new HashSet<>();

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl", f = "ConversationMessagesPresenter.kt", l = {1225}, m = "canRestoreContent")
    /* renamed from: e.a.a.c.t4$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$a.class */
    public static final class C5745a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f19279d;

        /* renamed from: e */
        public int f19280e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5745a(d dVar) {
            super(dVar);
            C5744t4.this = r4;
        }

        /* renamed from: s */
        public final Object m32672s(Object obj) {
            this.f19279d = obj;
            this.f19280e |= Integer.MIN_VALUE;
            return C5744t4.this.m32737Ij(null, this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl", f = "ConversationMessagesPresenter.kt", l = {1244}, m = "canRestoreThumbnail")
    /* renamed from: e.a.a.c.t4$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$b.class */
    public static final class C5746b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f19282d;

        /* renamed from: e */
        public int f19283e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5746b(d dVar) {
            super(dVar);
            C5744t4.this = r4;
        }

        /* renamed from: s */
        public final Object m32671s(Object obj) {
            this.f19282d = obj;
            this.f19283e |= Integer.MIN_VALUE;
            return C5744t4.this.m32733Jj(null, false, this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$getGroupInfoByInviteKey$1", f = "ConversationMessagesPresenter.kt", l = {956}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.t4$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$c.class */
    public static final class C5747c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f19285e;

        /* renamed from: g */
        public final /* synthetic */ String f19287g;

        /* renamed from: h */
        public final /* synthetic */ int f19288h;

        @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$getGroupInfoByInviteKey$1$info$1", f = "ConversationMessagesPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.c.t4$c$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$c$a.class */
        public static final class C5748a extends i implements p<i0, d<? super ImInviteGroupInfo>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5748a(d dVar) {
                super(2, dVar);
                C5747c.this = r5;
            }

            /* renamed from: i */
            public final d<s> m32667i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5748a(dVar);
            }

            /* renamed from: k */
            public final Object m32666k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C5747c c5747c = C5747c.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                return ((AbstractC6448d) C5744t4.this.f19250l0.get()).mo30938e(c5747c.f19287g).a;
            }

            /* renamed from: s */
            public final Object m32665s(Object obj) {
                C25225a.m3932a3(obj);
                return ((AbstractC6448d) C5744t4.this.f19250l0.get()).mo30938e(C5747c.this.f19287g).a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5747c(String str, int i, d dVar) {
            super(2, dVar);
            C5744t4.this = r5;
            this.f19287g = str;
            this.f19288h = i;
        }

        /* renamed from: i */
        public final d<s> m32670i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5747c(this.f19287g, this.f19288h, dVar);
        }

        /* renamed from: k */
        public final Object m32669k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5747c(this.f19287g, this.f19288h, dVar).m32668s(s.a);
        }

        /* renamed from: s */
        public final Object m32668s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f19285e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f fVar = C5744t4.this.f19264s0;
                C5748a c5748a = new C5748a(null);
                this.f19285e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c5748a, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C5744t4.this.f19219J.mo32844w().put(this.f19287g, (ImInviteGroupInfo) obj);
            AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) C5744t4.this.f57683a;
            if (abstractC5835z4 != null) {
                abstractC5835z4.mo32372A3(this.f19288h);
            }
            HashSet<String> hashSet = C5744t4.this.f19261r;
            hashSet.remove(this.f19287g + '-' + this.f19288h);
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$invalidateLocationIfThemeChanged$1", f = "ConversationMessagesPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.t4$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$d.class */
    public static final class C5749d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Message f19291f;

        /* renamed from: g */
        public final /* synthetic */ LocationEntity f19292g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5749d(Message message, LocationEntity locationEntity, d dVar) {
            super(2, dVar);
            C5744t4.this = r5;
            this.f19291f = message;
            this.f19292g = locationEntity;
        }

        /* renamed from: i */
        public final d<s> m32664i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5749d(this.f19291f, this.f19292g, dVar);
        }

        /* renamed from: k */
        public final Object m32663k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C5744t4 c5744t4 = C5744t4.this;
            Message message = this.f19291f;
            LocationEntity locationEntity = this.f19292g;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c5744t4.f19225P.mo30558d(message, locationEntity, true);
            return sVar;
        }

        /* renamed from: s */
        public final Object m32662s(Object obj) {
            C25225a.m3932a3(obj);
            C5744t4.this.f19225P.mo30558d(this.f19291f, this.f19292g, true);
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.t4$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$e.class */
    public static final class C5750e extends m implements s1.z.b.a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5750e() {
            super(0);
            C5744t4.this = r4;
        }

        public Object invoke() {
            AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) C5744t4.this.f57683a;
            if (abstractC5835z4 != null) {
                abstractC5835z4.mo32373A();
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$loadMessages$1", f = "ConversationMessagesPresenter.kt", l = {995, 1004}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.t4$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$f.class */
    public static final class C5751f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f19294e;

        /* renamed from: g */
        public final /* synthetic */ Conversation f19296g;

        /* renamed from: h */
        public final /* synthetic */ boolean f19297h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5751f(Conversation conversation, boolean z, d dVar) {
            super(2, dVar);
            C5744t4.this = r5;
            this.f19296g = conversation;
            this.f19297h = z;
        }

        /* renamed from: i */
        public final d<s> m32661i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5751f(this.f19296g, this.f19297h, dVar);
        }

        /* renamed from: k */
        public final Object m32660k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5751f(this.f19296g, this.f19297h, dVar).m32659s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x0147  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m32659s(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 360
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5744t4.C5751f.m32659s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$onAttachmentClicked$1", f = "ConversationMessagesPresenter.kt", l = {531, 533}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.t4$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$g.class */
    public static final class C5752g extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f19298e;

        /* renamed from: g */
        public final /* synthetic */ Entity f19300g;

        /* renamed from: h */
        public final /* synthetic */ Message f19301h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5752g(Entity entity, Message message, d dVar) {
            super(2, dVar);
            C5744t4.this = r5;
            this.f19300g = entity;
            this.f19301h = message;
        }

        /* renamed from: i */
        public final d<s> m32658i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5752g(this.f19300g, this.f19301h, dVar);
        }

        /* renamed from: k */
        public final Object m32657k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5752g(this.f19300g, this.f19301h, dVar).m32656s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00df  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m32656s(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 561
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5744t4.C5752g.m32656s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.a.c.t4$h */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$h.class */
    public static final class C5753h<R> implements AbstractC19851d0<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ int f19302a;

        /* renamed from: b */
        public final /* synthetic */ C5744t4 f19303b;

        public C5753h(int i, C5744t4 c5744t4, boolean z) {
            this.f19302a = i;
            this.f19303b = c5744t4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            ((AbstractC5719s4.AbstractC5720a) this.f19303b.f19217D.get()).mo32759pa(this.f19302a);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$onDownloadAttachmentClicked$1", f = "ConversationMessagesPresenter.kt", l = {488}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.t4$i */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$i.class */
    public static final class C5754i extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f19304e;

        /* renamed from: g */
        public final /* synthetic */ Entity f19306g;

        /* renamed from: h */
        public final /* synthetic */ Message f19307h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5754i(Entity entity, Message message, d dVar) {
            super(2, dVar);
            C5744t4.this = r5;
            this.f19306g = entity;
            this.f19307h = message;
        }

        /* renamed from: i */
        public final d<s> m32655i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5754i(this.f19306g, this.f19307h, dVar);
        }

        /* renamed from: k */
        public final Object m32654k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5754i(this.f19306g, this.f19307h, dVar).m32653s(s.a);
        }

        /* renamed from: s */
        public final Object m32653s(Object obj) {
            s sVar = s.a;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f19304e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (C5744t4.this.f19268u0.mo28365f(this.f19306g.f13307b, C10480a.m25899s1(this.f19307h))) {
                    C5744t4 c5744t4 = C5744t4.this;
                    this.f19304e = 1;
                    Object m32716Qj = c5744t4.m32716Qj(this);
                    obj = m32716Qj;
                    if (m32716Qj == aVar) {
                        return aVar;
                    }
                }
                C5744t4.this.f19225P.mo30558d(this.f19307h, this.f19306g, false);
                return sVar;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                return sVar;
            }
            C5744t4.this.f19225P.mo30558d(this.f19307h, this.f19306g, false);
            return sVar;
        }
    }

    /* renamed from: e.a.a.c.t4$j */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$j.class */
    public static final class C5755j implements AbstractC11430l0 {

        /* renamed from: b */
        public final /* synthetic */ Message f19309b;

        /* renamed from: c */
        public final /* synthetic */ boolean f19310c;

        /* renamed from: d */
        public final /* synthetic */ FlashContact f19311d;

        public C5755j(Message message, boolean z, FlashContact flashContact) {
            C5744t4.this = r4;
            this.f19309b = message;
            this.f19310c = z;
            this.f19311d = flashContact;
        }

        @Override // p193e.p194a.p619d.p637c0.AbstractC11430l0
        /* renamed from: a */
        public void mo10471a(boolean z) {
            AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) C5744t4.this.f57683a;
            if (abstractC5835z4 != null) {
                Participant participant = this.f19309b.f13382c;
                l.d(participant, "message.participant");
                Message message = this.f19309b;
                abstractC5835z4.mo32334uo(participant, message.f13370J, message.f13371K, z, this.f19310c, this.f19311d);
            }
        }
    }

    /* renamed from: e.a.a.c.t4$k */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$k.class */
    public static final class C5756k<R> implements AbstractC19851d0<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ Message[] f19313b;

        public C5756k(Message[] messageArr) {
            C5744t4.this = r4;
            this.f19313b = messageArr;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            C5744t4 c5744t4 = C5744t4.this;
            Message[] messageArr = this.f19313b;
            String mo13768b = (c5744t4.f19266t0.mo27262d() || c5744t4.f19266t0.mo27237w()) ? c5744t4.f19235Z.mo13768b(C2752R.string.ConversationMarkAsImportantToast, new Object[0]) : c5744t4.f19235Z.mo13759k(C2752R.plurals.ConversationMarkAsImportantNotification, messageArr.length, new Object[0]);
            l.d(mo13768b, "if (insightsStatusProvid… messages.size)\n        }");
            AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) c5744t4.f57683a;
            if (abstractC5835z4 != null) {
                abstractC5835z4.mo32358Uf(messageArr, mo13768b);
            }
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$onMentionClicked$1", f = "ConversationMessagesPresenter.kt", l = {636}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.t4$l */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$l.class */
    public static final class C5757l extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f19314e;

        /* renamed from: g */
        public final /* synthetic */ String f19316g;

        @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$onMentionClicked$1$1$1", f = "ConversationMessagesPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.c.t4$l$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$l$a.class */
        public static final class C5758a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public final /* synthetic */ Participant f19317e;

            /* renamed from: f */
            public final /* synthetic */ C5757l f19318f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5758a(Participant participant, d dVar, C5757l c5757l) {
                super(2, dVar);
                this.f19317e = participant;
                this.f19318f = c5757l;
            }

            /* renamed from: i */
            public final d<s> m32649i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5758a(this.f19317e, dVar, this.f19318f);
            }

            /* renamed from: k */
            public final Object m32648k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                Participant participant = this.f19317e;
                C5757l c5757l = this.f19318f;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) C5744t4.this.f57683a;
                if (abstractC5835z4 != null) {
                    abstractC5835z4.mo32339n8(participant, participant.f11569b == 3);
                } else {
                    sVar = null;
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m32647s(Object obj) {
                s sVar;
                C25225a.m3932a3(obj);
                AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) C5744t4.this.f57683a;
                if (abstractC5835z4 != null) {
                    Participant participant = this.f19317e;
                    abstractC5835z4.mo32339n8(participant, participant.f11569b == 3);
                    sVar = s.a;
                } else {
                    sVar = null;
                }
                return sVar;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5757l(String str, d dVar) {
            super(2, dVar);
            C5744t4.this = r5;
            this.f19316g = str;
        }

        /* renamed from: i */
        public final d<s> m32652i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5757l(this.f19316g, dVar);
        }

        /* renamed from: k */
        public final Object m32651k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5757l(this.f19316g, dVar).m32650s(s.a);
        }

        /* renamed from: s */
        public final Object m32650s(Object obj) {
            Participant participant;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f19314e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Contact m17365g = C5744t4.this.f19272w0.m17365g(this.f19316g);
                if (m17365g != null) {
                    l.e(m17365g, "$this$mapToParticipant");
                    String m35498s = m17365g.m35498s();
                    if (m35498s == null) {
                        m35498s = m17365g.m35575A();
                    }
                    if (m35498s != null) {
                        l.d(m35498s, "defaultNumber ?: imId ?: return null");
                        String m35498s2 = m17365g.m35498s();
                        int i2 = 0;
                        if (m35498s2 == null || m35498s2.length() == 0) {
                            i2 = 3;
                        }
                        Participant.C3848b c3848b = new Participant.C3848b(i2);
                        c3848b.f11598e = m35498s;
                        c3848b.f11596c = m17365g.m35575A();
                        c3848b.f11605l = m17365g.m35491w();
                        Long m35548R = m17365g.m35548R();
                        if (m35548R == null) {
                            m35548R = -1L;
                        }
                        l.d(m35548R, "phonebookId ?: -1");
                        c3848b.f11608o = m35548R.longValue();
                        String m35573B = m17365g.m35573B();
                        if (m35573B == null) {
                            m35573B = "";
                        }
                        c3848b.f11606m = m35573B;
                        c3848b.f11600g = m17365g.getTcId();
                        c3848b.f11607n = m17365g.getSource();
                        participant = c3848b.m35443a();
                    } else {
                        participant = null;
                    }
                    if (participant != null && C6405h.m31303a(participant)) {
                        f fVar = C5744t4.this.f19269v;
                        C5758a c5758a = new C5758a(participant, null, this);
                        this.f19314e = 1;
                        if (s1.a.a.a.v0.f.d.a4(fVar, c5758a, this) == aVar) {
                            return aVar;
                        }
                    }
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$onPlayPauseVoiceClipClicked$1", f = "ConversationMessagesPresenter.kt", l = {652, 654}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.t4$m */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$m.class */
    public static final class C5759m extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f19319e;

        /* renamed from: g */
        public final /* synthetic */ Entity f19321g;

        /* renamed from: h */
        public final /* synthetic */ PlayerVisualizerView f19322h;

        /* renamed from: i */
        public final /* synthetic */ AbstractC5732i f19323i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5759m(Entity entity, PlayerVisualizerView playerVisualizerView, AbstractC5732i abstractC5732i, d dVar) {
            super(2, dVar);
            C5744t4.this = r5;
            this.f19321g = entity;
            this.f19322h = playerVisualizerView;
            this.f19323i = abstractC5732i;
        }

        /* renamed from: i */
        public final d<s> m32646i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5759m(this.f19321g, this.f19322h, this.f19323i, dVar);
        }

        /* renamed from: k */
        public final Object m32645k(Object obj, Object obj2) {
            return m32646i(obj, (d) obj2).m32644s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00b6  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m32644s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 356
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5744t4.C5759m.m32644s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.a.c.t4$n */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$n.class */
    public static final class C5760n<R> implements AbstractC19851d0<Map<Reaction, ? extends Participant>> {
        public C5760n() {
            C5744t4.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Map<Reaction, ? extends Participant> map) {
            AbstractC5835z4 abstractC5835z4;
            Map<Reaction, ? extends Participant> map2 = map;
            if (map2 == null || (abstractC5835z4 = (AbstractC5835z4) C5744t4.this.f57683a) == null) {
                return;
            }
            abstractC5835z4.mo32357Vc(map2);
        }
    }

    /* renamed from: e.a.a.c.t4$o */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$o.class */
    public static final class C5761o extends m implements s1.z.b.l<String, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5761o() {
            super(1);
            C5744t4.this = r4;
        }

        /* renamed from: d */
        public Object m32643d(Object obj) {
            String str = (String) obj;
            l.e(str, "deeplink");
            AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) C5744t4.this.f57683a;
            if (abstractC5835z4 != null) {
                abstractC5835z4.mo32348gw(str);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.t4$p */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$p.class */
    public static final class C5762p<R> implements AbstractC19851d0<Draft> {
        public C5762p() {
            C5744t4.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Draft draft) {
            ((AbstractC5719s4.AbstractC5720a) C5744t4.this.f19217D.get()).mo32762D2();
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl", f = "ConversationMessagesPresenter.kt", l = {1128}, m = "requestStoragePermissions")
    /* renamed from: e.a.a.c.t4$q */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$q.class */
    public static final class C5763q extends c {

        /* renamed from: d */
        public /* synthetic */ Object f19327d;

        /* renamed from: e */
        public int f19328e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5763q(d dVar) {
            super(dVar);
            C5744t4.this = r4;
        }

        /* renamed from: s */
        public final Object m32642s(Object obj) {
            this.f19327d = obj;
            this.f19328e |= Integer.MIN_VALUE;
            return C5744t4.this.m32716Qj(this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl", f = "ConversationMessagesPresenter.kt", l = {1132}, m = "requestVoiceClipPermissions")
    /* renamed from: e.a.a.c.t4$r */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$r.class */
    public static final class C5764r extends c {

        /* renamed from: d */
        public /* synthetic */ Object f19330d;

        /* renamed from: e */
        public int f19331e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5764r(d dVar) {
            super(dVar);
            C5744t4.this = r4;
        }

        /* renamed from: s */
        public final Object m32641s(Object obj) {
            this.f19330d = obj;
            this.f19331e |= Integer.MIN_VALUE;
            return C5744t4.this.m32714Rj(this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$restoreAttachmentIfNotExist$1", f = "ConversationMessagesPresenter.kt", l = {501, 509}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.t4$s */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/t4$s.class */
    public static final class C5765s extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f19333e;

        /* renamed from: g */
        public final /* synthetic */ Entity f19335g;

        /* renamed from: h */
        public final /* synthetic */ Message f19336h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5765s(Entity entity, Message message, d dVar) {
            super(2, dVar);
            C5744t4.this = r5;
            this.f19335g = entity;
            this.f19336h = message;
        }

        /* renamed from: i */
        public final d<s> m32640i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5765s(this.f19335g, this.f19336h, dVar);
        }

        /* renamed from: k */
        public final Object m32639k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5765s(this.f19335g, this.f19336h, dVar).m32638s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00c0  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m32638s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 217
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5744t4.C5765s.m32638s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5744t4(@Named("UiThread") AbstractC19868j abstractC19868j, @Named("UI") f fVar, @Named("Filter") int i, @Named("MessageId") Long l, @Named("InitialMessageLimit") int i2, @Named("IsHiddenNumberIntent") boolean z, @Named("IsUrgentIntent") boolean z2, @Named("IsBubbleIntent") boolean z3, @Named("ConversationContext") String str, a<AbstractC5719s4.AbstractC5720a> aVar, AbstractC5794w3 abstractC5794w3, AbstractC5585n5 abstractC5585n5, a<AbstractC6248w> aVar2, AbstractC14967y abstractC14967y, AbstractC14965w abstractC14965w, C6161b c6161b, AbstractC5655p5 abstractC5655p5, AbstractC6708t abstractC6708t, AbstractC19854f<AbstractC7343q> abstractC19854f, AbstractC5733j abstractC5733j, AbstractC5687r3 abstractC5687r3, AbstractC19854f<AbstractC6523c0> abstractC19854f2, AbstractC6392i0 abstractC6392i0, C20592g c20592g, AbstractC5040n abstractC5040n, AbstractC5027g abstractC5027g, AbstractC5041o abstractC5041o, AbstractC19233h0 abstractC19233h0, AbstractC19022f0 abstractC19022f0, AbstractC19222c abstractC19222c, AbstractC5527a abstractC5527a, a<AbstractC19854f<AbstractC6233m>> aVar3, AbstractC19854f<AbstractC6485m> abstractC19854f3, a<AbstractC6448d> aVar4, AbstractC5336h3 abstractC5336h3, AbstractC11476s1 abstractC11476s1, AbstractC21631b abstractC21631b, AbstractC12595a abstractC12595a, a<AbstractC5743t3> aVar5, AbstractC5341h7 abstractC5341h7, @Named("IO") f fVar2, AbstractC9691j abstractC9691j, AbstractC8571b abstractC8571b, AbstractC6614r0 abstractC6614r0, C16461b c16461b, AbstractC10060c abstractC10060c, AbstractC10028o abstractC10028o, a<AbstractC7357d> aVar6, AbstractC10439b abstractC10439b, AbstractC6005m abstractC6005m) {
        super(fVar);
        l.e(abstractC19868j, "uiThread");
        l.e(fVar, "uiContext");
        l.e(str, "conversationContext");
        l.e(aVar, "listener");
        l.e(abstractC5794w3, "conversationDataSource");
        l.e(abstractC5585n5, "conversationState");
        l.e(aVar2, "readMessageStorage");
        l.e(abstractC14967y, "permissionsView");
        l.e(abstractC14965w, "permissionUtil");
        l.e(c6161b, "attachmentsHelper");
        l.e(abstractC5655p5, "conversationUtil");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC19854f, "notificationsManager");
        l.e(abstractC5733j, "playerAdapter");
        l.e(abstractC5687r3, "conversationAnalytics");
        l.e(abstractC19854f2, "imReactionManager");
        l.e(abstractC6392i0, "messageSettings");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC5040n, "smartCardsManager");
        l.e(abstractC5027g, "infoCardsManagerRevamp");
        l.e(abstractC5041o, "updateCategoriesManager");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19222c, "clock");
        l.e(abstractC5527a, "emojiPokeHelper");
        l.e(aVar3, "messagesStorage");
        l.e(abstractC19854f3, "imGroupManager");
        l.e(aVar4, "imGroupHelper");
        l.e(abstractC5336h3, "actionModePresenter");
        l.e(abstractC11476s1, "voipUtil");
        l.e(abstractC21631b, "flashManager");
        l.e(abstractC12595a, "appMarketUtil");
        l.e(aVar5, "conversationBubbleInteractions");
        l.e(abstractC5341h7, "messagesTranslateHelper");
        l.e(fVar2, "ioContext");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC8571b, "attachmentStoreHelper");
        l.e(abstractC6614r0, "imUnreadRemindersManager");
        l.e(c16461b, "aggregatedContactDao");
        l.e(abstractC10060c, "analyticsManager");
        l.e(abstractC10028o, "insightConfig");
        l.e(aVar6, "messageToNudgeNotificationHelper");
        l.e(abstractC10439b, "deeplinkEnricher");
        l.e(abstractC6005m, "inboxCleaner");
        this.f19267u = abstractC19868j;
        this.f19269v = fVar;
        this.f19271w = i;
        this.f19273x = l;
        this.f19275y = i2;
        this.f19277z = z;
        this.f19212A = z2;
        this.f19214B = z3;
        this.f19216C = str;
        this.f19217D = aVar;
        this.f19218E = abstractC5794w3;
        this.f19219J = abstractC5585n5;
        this.f19220K = aVar2;
        this.f19221L = abstractC14967y;
        this.f19222M = abstractC14965w;
        this.f19223N = c6161b;
        this.f19224O = abstractC5655p5;
        this.f19225P = abstractC6708t;
        this.f19226Q = abstractC19854f;
        this.f19227R = abstractC5733j;
        this.f19228S = abstractC5687r3;
        this.f19229T = abstractC19854f2;
        this.f19230U = abstractC6392i0;
        this.f19231V = c20592g;
        this.f19232W = abstractC5040n;
        this.f19233X = abstractC5027g;
        this.f19234Y = abstractC5041o;
        this.f19235Z = abstractC19233h0;
        this.f19240g0 = abstractC19022f0;
        this.f19242h0 = abstractC19222c;
        this.f19244i0 = abstractC5527a;
        this.f19246j0 = aVar3;
        this.f19248k0 = abstractC19854f3;
        this.f19250l0 = aVar4;
        this.f19252m0 = abstractC5336h3;
        this.f19254n0 = abstractC11476s1;
        this.f19256o0 = abstractC21631b;
        this.f19258p0 = abstractC12595a;
        this.f19260q0 = aVar5;
        this.f19262r0 = abstractC5341h7;
        this.f19264s0 = fVar2;
        this.f19266t0 = abstractC9691j;
        this.f19268u0 = abstractC8571b;
        this.f19270v0 = abstractC6614r0;
        this.f19272w0 = c16461b;
        this.f19274x0 = abstractC10060c;
        this.f19276y0 = abstractC10028o;
        this.f19278z0 = aVar6;
        this.f19213A0 = abstractC10439b;
        this.f19215B0 = abstractC6005m;
        this.f19249l = abstractC19222c.mo13821a();
    }

    /* renamed from: Oj */
    public static /* synthetic */ void m32721Oj(C5744t4 c5744t4, boolean z, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        c5744t4.m32722Nj(z);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: A9 */
    public boolean mo32747A9() {
        return this.f19276y0.mo26836j0();
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: Ac */
    public void mo32746Ac(C10529b c10529b) {
        l.e(c10529b, "simpleAnalyticsEvent");
        this.f19274x0.mo26757a(c10529b);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: Ba */
    public void mo32745Ba(AbstractC5732i abstractC5732i) {
        this.f19227R.mo32752b(null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: C */
    public void mo32744C() {
        m32722Nj(this.f19265t);
    }

    @Override // p193e.p194a.p437c.p438a.p506o.AbstractC9439b
    /* renamed from: C3 */
    public void mo27567C3(AbstractC10876i abstractC10876i, String str, boolean z, int i) {
        l.e(abstractC10876i, "smartCardAction");
        l.e(str, "analyticsCategory");
        this.f19233X.mo33984c(C10480a.m25922n3(abstractC10876i.mo25531a(), null, 1), str, z);
        C10480a.m25964f1(abstractC10876i);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: D */
    public void mo32743D(String str) {
        l.e(str, "url");
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 != null) {
            abstractC5835z4.mo32343j4();
        }
        AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z42 != null) {
            abstractC5835z42.mo32351b(URLUtil.guessUrl(str));
        }
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: E8 */
    public void mo32742E8(String str, int i) {
        l.e(str, "inviteKey");
        HashSet<String> hashSet = this.f19261r;
        if (hashSet.contains(str + '-' + i)) {
            return;
        }
        HashSet<String> hashSet2 = this.f19261r;
        hashSet2.add(str + '-' + i);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5747c(str, i, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: Ea */
    public void mo32741Ea(double d, double d2, String str, Message message) {
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 != null) {
            abstractC5835z4.mo32343j4();
        }
        AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z42 != null) {
            abstractC5835z42.mo32350bu(d, d2, str);
        }
        if (message != null) {
            C5718s3 c5718s3 = (C5718s3) this.f19228S;
            Objects.requireNonNull(c5718s3);
            l.e(message, "message");
            AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
            LinkedHashMap m8655X = C22128a.m8655X("LocationMessagePreviewGetDirections", "type");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            String mo34882T1 = message.f13393n.mo34882T1(message.f13384e);
            l.d(mo34882T1, "message.transportInfo.ge…sageEventId(message.date)");
            l.e("message_id", AnalyticsConstants.NAME);
            l.e(mo34882T1, "value");
            m8655X.put("message_id", mo34882T1);
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("LocationMessagePreviewGetDirections");
            m15852a.m15849c(linkedHashMap);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19510i0.mo13225a(build);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: F9 */
    public void mo32740F9(String str) {
        l.e(str, "imId");
        s1.a.a.a.v0.f.d.w2(this, this.f19264s0, (j0) null, new C5757l(str, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: Fe */
    public void mo32739Fe() {
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 != null) {
            abstractC5835z4.mo32343j4();
        }
        AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z42 != null) {
            abstractC5835z42.mo32351b(this.f19258p0.mo22844c());
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: H5 */
    public void mo32738H5(boolean z) {
        this.f19265t = z;
        if (!z) {
            this.f19263s = 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a8, code lost:
        if (s1.f0.r.n("tenor/gif", r0, true) == false) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0109  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m32737Ij(com.truecaller.messaging.data.types.Entity r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5744t4.m32737Ij(com.truecaller.messaging.data.types.Entity, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: J2 */
    public void mo32736J2(C6113f c6113f) {
        C6113f c6113f2;
        l.e(c6113f, "stats");
        boolean z = !this.f19247k && ((c6113f2 = this.f19237e) == null || c6113f2.f20303b != c6113f.f20303b || c6113f2 == null || c6113f2.f20304c != c6113f.f20304c);
        this.f19237e = c6113f;
        if (z) {
            m32722Nj(false);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: J8 */
    public void mo32735J8(String str) {
        AbstractC5835z4 abstractC5835z4;
        l.e(str, "link");
        AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z42 == null || abstractC5835z42.mo32355Yx(str) || (abstractC5835z4 = (AbstractC5835z4) this.f57683a) == null) {
            return;
        }
        abstractC5835z4.mo32353a(2131887863);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: Jc */
    public void mo32734Jc() {
        this.f19232W.mo33949b();
        this.f19233X.mo33985b();
        this.f19234Y.mo33931b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x009e, code lost:
        if (s1.f0.r.n("tenor/gif", r0, true) == false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0140  */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m32733Jj(com.truecaller.messaging.data.types.Entity r6, boolean r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5744t4.m32733Jj(com.truecaller.messaging.data.types.Entity, boolean, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: K */
    public void mo32732K() {
        ((C5718s3) this.f19228S).m32766e("Finish");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: K0 */
    public void mo32731K0(Message message) {
        String str;
        l.e(message, "message");
        ((AbstractC5719s4.AbstractC5720a) this.f19217D.get()).mo32763C2(message);
        C5718s3 c5718s3 = (C5718s3) this.f19228S;
        Objects.requireNonNull(c5718s3);
        l.e(message, "message");
        TransportInfo transportInfo = message.f13393n;
        l.d(transportInfo, "message.transportInfo");
        String str2 = transportInfo.mo34885E() == 3 ? "deliveredNotRead" : "sentNotDelivered";
        String str3 = message.m35018h() ? "mms" : TokenResponseDto.METHOD_SMS;
        AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
        LinkedHashMap m8655X = C22128a.m8655X("NudgeSendAsSmsClicked", "type");
        LinkedHashMap m8652Y = C22128a.m8652Y("messageStatus", AnalyticsConstants.NAME, str2, "value", m8655X, "messageStatus", str2);
        String mo34882T1 = message.f13393n.mo34882T1(message.f13384e);
        l.d(mo34882T1, "message.transportInfo.ge…sageEventId(message.date)");
        l.e("messageId", AnalyticsConstants.NAME);
        l.e(mo34882T1, "value");
        m8655X.put("messageId", mo34882T1);
        l.e("transportType", AnalyticsConstants.NAME);
        l.e(str3, "value");
        m8655X.put("transportType", str3);
        boolean m35018h = message.m35018h();
        l.e("hasAttachment", AnalyticsConstants.NAME);
        m8655X.put("hasAttachment", String.valueOf(m35018h));
        Entity[] entityArr = message.f13394o;
        l.d(entityArr, "entities");
        int length = entityArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str = "none";
                break;
            }
            Entity entity = entityArr[i];
            if (entity.mo34895l()) {
                str = "photo";
                break;
            } else if (entity.mo34892w()) {
                str = "video";
                break;
            } else if (entity.mo34893t()) {
                str = AnalyticsConstants.CONTACT;
                break;
            } else {
                i++;
            }
        }
        C17697p3.C17699b m8560v1 = C22128a.m8560v1("attachmentType", AnalyticsConstants.NAME, str, "value", m8655X, "attachmentType", str, "NudgeSendAsSmsClicked", m8652Y);
        m8560v1.m15848d(m8655X);
        C17697p3 build = m8560v1.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        abstractC19510i0.mo13225a(build);
    }

    /* renamed from: Kj */
    public final boolean m32730Kj(Message message) {
        boolean z;
        Entity[] entityArr = message.f13394o;
        l.d(entityArr, "entities");
        int length = entityArr.length;
        int i = 0;
        while (true) {
            z = false;
            if (i >= length) {
                break;
            }
            Entity entity = entityArr[i];
            if ((entity instanceof BinaryEntity) && this.f19268u0.mo28370a(((BinaryEntity) entity).f13173i)) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: L7 */
    public void mo32729L7(Conversation conversation, boolean z) {
        boolean z2;
        boolean z3;
        int i;
        l.e(conversation, "conversation");
        Participant[] participantArr = conversation.f13211m;
        l.d(participantArr, "conversation.participants");
        if (!C6405h.m31299e(participantArr)) {
            Participant[] participantArr2 = conversation.f13211m;
            l.d(participantArr2, "conversation.participants");
            Object m3845s0 = C25225a.m3845s0(participantArr2);
            l.d(m3845s0, "conversation.participants.first()");
            Participant participant = (Participant) m3845s0;
            String str = participant.f11572e;
            l.d(str, "participant.normalizedAddress");
            int m28330K = C8582g0.m28330K(str);
            if (this.f19232W.mo33938m() && (i = participant.f11576i) != 2 && i != 1 && C10480a.m26085C1(conversation)) {
                this.f19232W.mo33939l(conversation.f13199a, this.f19271w, new C5750e());
            }
            boolean z4 = this.f19266t0.mo27293B() && participant.m35448l();
            AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
            if (abstractC5835z4 != null) {
                String str2 = participant.f11571d;
                l.d(str2, "participant.rawAddress");
                z2 = abstractC5835z4.mo32333vj(str2);
            } else {
                z2 = false;
            }
            if (this.f19266t0.mo27234z()) {
                int i2 = participant.f11569b;
                z3 = (i2 == 0 || i2 == 1) ? !z2 : false;
            } else {
                String str3 = participant.f11572e;
                l.d(str3, "participant.normalizedAddress");
                z3 = C8582g0.m28317c(str3, participant.f11569b, m28330K);
            }
            if (!z4 && !z3) {
                return;
            }
            if (this.f19266t0.mo27262d()) {
                long j = conversation.f13199a;
                String str4 = participant.f11572e;
                l.d(str4, "participant.normalizedAddress");
                AbstractC5027g abstractC5027g = this.f19233X;
                String m28346m = C8574c0.m28346m(str4);
                l.d(m28346m, "PhoneNumberUtils.stripAlphanumericAddress(address)");
                abstractC5027g.mo33978i(new C10345c(j, m28346m, this.f19216C, null, 8), z, new C5807x4(this));
                return;
            }
            long j2 = conversation.f13199a;
            String str5 = participant.f11572e;
            l.d(str5, "participant.normalizedAddress");
            AbstractC5040n abstractC5040n = this.f19232W;
            String m28346m2 = C8574c0.m28346m(str5);
            l.d(m28346m2, "PhoneNumberUtils.stripAlphanumericAddress(address)");
            abstractC5040n.mo33942i(new C10345c(j2, m28346m2, this.f19216C, null, 8), z, new C5796w4(this));
            long j3 = conversation.f13199a;
            String str6 = participant.f11572e;
            l.d(str6, "participant.normalizedAddress");
            if (!this.f19232W.mo33937n() && !this.f19232W.mo33933r(str6)) {
                return;
            }
            AbstractC5041o abstractC5041o = this.f19234Y;
            String m28346m3 = C8574c0.m28346m(str6);
            l.d(m28346m3, "PhoneNumberUtils.stripAlphanumericAddress(address)");
            abstractC5041o.mo33927f(new C10346d(j3, m28346m3, this.f19216C, null, 8), z, new C5824y4(this));
        }
    }

    /* renamed from: Lj */
    public final Object m32728Lj(Uri uri, d<? super Boolean> dVar) {
        if (this.f19268u0.mo28368c(uri) || !m32712Sj(uri) || this.f19222M.mo19343n()) {
            C5678q5 c5678q5 = (C5678q5) this.f19224O;
            return s1.a.a.a.v0.f.d.a4(c5678q5.f19044b, new C5678q5.C5679a(uri, null), dVar);
        }
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3.AbstractC5337a
    /* renamed from: Ma */
    public void mo32727Ma(Message message) {
        l.e(message, "message");
        ((AbstractC5719s4.AbstractC5720a) this.f19217D.get()).mo32758ui(message);
    }

    /* renamed from: Mj */
    public final void m32726Mj(boolean z) {
        Conversation conversation;
        Draft draft = this.f19236d;
        if (draft == null || (conversation = draft.f13267b) == null) {
            return;
        }
        ImGroupInfo imGroupInfo = conversation.f13224z;
        if (!C10480a.m25904r1(conversation.f13211m) || imGroupInfo == null) {
            return;
        }
        if (!z && imGroupInfo.f13327i != 1) {
            return;
        }
        this.f19248k0.mo11854a().mo30889k(imGroupInfo.f13319a);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: N6 */
    public void mo32725N6(int i) {
        AbstractC6225a item = this.f19218E.getItem(i);
        AbstractC6225a abstractC6225a = item;
        if (!(item instanceof Message)) {
            abstractC6225a = null;
        }
        Message message = (Message) abstractC6225a;
        if (message != null) {
            ((AbstractC5719s4.AbstractC5720a) this.f19217D.get()).mo32757w6(message);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: N7 */
    public void mo32724N7(Message message) {
        l.e(message, "message");
        if (!this.f19225P.mo30557e(message)) {
            this.f19226Q.mo11854a().mo29765l();
            return;
        }
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 == null) {
            return;
        }
        abstractC5835z4.mo32373A();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3.AbstractC5337a
    /* renamed from: N8 */
    public void mo32723N8(Message[] messageArr, String str) {
        l.e(messageArr, "messages");
        l.e(str, "initiatedVia");
        AbstractC6233m abstractC6233m = (AbstractC6233m) ((AbstractC19854f) this.f19246j0.get()).mo11854a();
        ArrayList arrayList = new ArrayList(messageArr.length);
        for (Message message : messageArr) {
            arrayList.add(Long.valueOf(message.f13380a));
        }
        abstractC6233m.mo31668n(s1.u.i.U0(arrayList), true).mo11830e(this.f19267u, new C5756k(messageArr));
        C5718s3 c5718s3 = (C5718s3) this.f19228S;
        Objects.requireNonNull(c5718s3);
        l.e(messageArr, "messages");
        l.e(str, "initiatedVia");
        AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
        ArrayList arrayList2 = new ArrayList(messageArr.length);
        for (Message message2 : messageArr) {
            arrayList2.add(Integer.valueOf(message2.f13390k));
        }
        abstractC19510i0.mo13206t(true, arrayList2, messageArr.length, "conversation", str);
        this.f19266t0.mo27279P(true);
    }

    /* renamed from: Nj */
    public final void m32722Nj(boolean z) {
        if (this.f19238f) {
            this.f19239g = true;
            return;
        }
        Draft draft = this.f19236d;
        Conversation conversation = draft != null ? draft.f13267b : null;
        if (conversation == null) {
            m32719Pj(null, false);
            return;
        }
        this.f19238f = true;
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5751f(conversation, z, null), 3, (Object) null);
        p1 p1Var = this.f19255o;
        if (C12864a2.m22540r(p1Var != null ? Boolean.valueOf(p1Var.b()) : null)) {
            return;
        }
        this.f19255o = s1.a.a.a.v0.f.d.w2(this, this.f19264s0, (j0) null, new C5785v4(this, conversation, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: P0 */
    public void mo32720P0(String str) {
        l.e(str, AnalyticsConstants.EMAIL);
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 != null) {
            abstractC5835z4.mo32343j4();
        }
        AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z42 != null) {
            abstractC5835z42.mo32363Q(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x03a0, code lost:
        if (r19.f11569b != 0) goto L106;
     */
    /* renamed from: Pj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32719Pj(p193e.p194a.p195a.p231g.p232j0.AbstractC6149q r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 1893
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5744t4.m32719Pj(e.a.a.g.j0.q, boolean):void");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: Q0 */
    public void mo32718Q0(Message message) {
        l.e(message, "message");
        this.f19229T.mo11854a().mo30803c(message.f13380a).mo11830e(this.f19267u, new C5760n());
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: Q9 */
    public void mo32717Q9(AbstractC10567a abstractC10567a, Message message, k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z) {
        AbstractC5835z4 abstractC5835z4;
        AbstractC5835z4 abstractC5835z42;
        l.e(abstractC10567a, "actionData");
        l.e(kVar, "category");
        if (abstractC10567a instanceof AbstractC10567a.C10574e) {
            String str = ((AbstractC10567a.C10574e) abstractC10567a).f31531d;
            if (!(!r.p(str))) {
                str = null;
            }
            if (str != null && (abstractC5835z42 = (AbstractC5835z4) this.f57683a) != null) {
                abstractC5835z42.mo32351b(str);
            }
            this.f19232W.mo33948c(C10480a.m25922n3(abstractC10567a.mo25780b(), null, 1), kVar, z);
        } else if (abstractC10567a instanceof AbstractC10567a.C10571b) {
            String str2 = ((AbstractC10567a.C10571b) abstractC10567a).f31521d;
            if (!(!r.p(str2))) {
                str2 = null;
            }
            if (str2 != null && (abstractC5835z4 = (AbstractC5835z4) this.f57683a) != null) {
                abstractC5835z4.mo32356X(str2);
            }
            this.f19232W.mo33948c(C10480a.m25922n3(abstractC10567a.mo25780b(), null, 1), kVar, z);
        } else if (abstractC10567a instanceof AbstractC10567a.AbstractC10568a.C10570b) {
            AbstractC10567a.AbstractC10568a.C10570b c10570b = (AbstractC10567a.AbstractC10568a.C10570b) abstractC10567a;
            this.f19213A0.mo26135a(c10570b.f31512d, new C5761o());
            this.f19232W.mo33948c(l.a(c10570b.f31516h, "PrepaidExpiry") ? "recharge" : "pay_bill", kVar, z);
        } else if (!(abstractC10567a instanceof AbstractC10567a.AbstractC10575f.C10576a)) {
        } else {
            AbstractC5835z4 abstractC5835z43 = (AbstractC5835z4) this.f57683a;
            if (abstractC5835z43 != null) {
                abstractC5835z43.mo32368Ez(((AbstractC10567a.AbstractC10575f.C10576a) abstractC10567a).f31535f);
            }
            AbstractC5835z4 abstractC5835z44 = (AbstractC5835z4) this.f57683a;
            if (abstractC5835z44 != null) {
                abstractC5835z44.mo32353a(2131887876);
            }
            this.f19232W.mo33948c("copy_otp", kVar, z);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* renamed from: Qj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m32716Qj(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p195a.p200c.C5744t4.C5763q
            if (r0 == 0) goto L27
            r0 = r6
            e.a.a.c.t4$q r0 = (p193e.p194a.p195a.p200c.C5744t4.C5763q) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f19328e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f19328e = r1
            r0 = r7
            r6 = r0
            goto L31
        L27:
            e.a.a.c.t4$q r0 = new e.a.a.c.t4$q
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L31:
            r0 = r6
            java.lang.Object r0 = r0.f19327d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f19328e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L52
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L98
        L52:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5d:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.h5.y r0 = r0.f19221L
            r7 = r0
            r0 = r5
            e.a.h5.w r0 = r0.f19222M
            java.lang.String[] r0 = r0.mo19340q()
            r10 = r0
            r0 = r10
            r1 = r10
            int r1 = r1.length
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r1)
            java.lang.String[] r0 = (java.lang.String[]) r0
            r10 = r0
            r0 = r6
            r1 = 1
            r0.f19328e = r1
            r0 = r7
            r1 = r10
            r2 = r6
            java.lang.Object r0 = r0.mo19334f(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L98
            r0 = r9
            return r0
        L98:
            r0 = r6
            e.a.h5.l r0 = (p193e.p194a.p851h5.C14945l) r0
            boolean r0 = r0.f42679a
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5744t4.m32716Qj(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3.AbstractC5337a
    /* renamed from: R7 */
    public boolean mo32715R7(Message message) {
        C10872f mo33983d;
        l.e(message, "message");
        boolean z = true;
        if (!this.f19266t0.mo27262d() ? this.f19232W.mo33947d(message) == null : (mo33983d = this.f19233X.mo33983d(message)) == null || (mo33983d.f32289h instanceof AbstractC10616p.C10625i)) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p437c.p438a.p506o.AbstractC9439b
    /* renamed from: Ra */
    public void mo27566Ra(String str, boolean z) {
        l.e(str, "analyticsCategory");
        this.f19233X.mo33980g(str, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* renamed from: Rj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m32714Rj(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p195a.p200c.C5744t4.C5764r
            if (r0 == 0) goto L27
            r0 = r6
            e.a.a.c.t4$r r0 = (p193e.p194a.p195a.p200c.C5744t4.C5764r) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f19331e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f19331e = r1
            r0 = r7
            r6 = r0
            goto L31
        L27:
            e.a.a.c.t4$r r0 = new e.a.a.c.t4$r
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L31:
            r0 = r6
            java.lang.Object r0 = r0.f19330d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f19331e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L52
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L98
        L52:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5d:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.h5.y r0 = r0.f19221L
            r7 = r0
            r0 = r5
            e.a.h5.w r0 = r0.f19222M
            java.lang.String[] r0 = r0.mo19345l()
            r10 = r0
            r0 = r10
            r1 = r10
            int r1 = r1.length
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r1)
            java.lang.String[] r0 = (java.lang.String[]) r0
            r10 = r0
            r0 = r6
            r1 = 1
            r0.f19331e = r1
            r0 = r7
            r1 = r10
            r2 = r6
            java.lang.Object r0 = r0.mo19334f(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L98
            r0 = r9
            return r0
        L98:
            r0 = r6
            e.a.h5.l r0 = (p193e.p194a.p851h5.C14945l) r0
            boolean r0 = r0.f42679a
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5744t4.m32714Rj(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: S0 */
    public void mo32713S0(String str) {
        l.e(str, "inviteKey");
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 != null) {
            abstractC5835z4.mo32343j4();
        }
        AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z42 != null) {
            abstractC5835z42.mo32335ua(str);
        }
    }

    /* renamed from: Sj */
    public final boolean m32712Sj(Uri uri) {
        Objects.requireNonNull(this.f19223N);
        l.e(uri, "uri");
        if (l.a(uri.getAuthority(), "com.truecaller.attachmentprovider")) {
            return true;
        }
        return l.a(this.f19268u0.mo28366e(uri), Boolean.TRUE);
    }

    /* renamed from: Tj */
    public final void m32711Tj(long j, int i) {
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 != null) {
            abstractC5835z4.mo32372A3(i);
        }
        AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z42 != null) {
            abstractC5835z42.mo32370C4(i);
        }
        AbstractC5835z4 abstractC5835z43 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z43 != null) {
            abstractC5835z43.mo32346h9(j);
        }
    }

    /* renamed from: Uj */
    public final boolean m32710Uj(C6113f c6113f) {
        int i = c6113f.f20304c;
        boolean z = true;
        if (i == 0) {
            z = this.f19230U.mo31008q3();
        } else if (i != 1) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: V0 */
    public void mo32709V0(String str) {
        l.e(str, "number");
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 != null) {
            abstractC5835z4.mo32343j4();
        }
        AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z42 != null) {
            abstractC5835z42.mo32356X(str);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.a.c.z4, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC5835z4 abstractC5835z4) {
        AbstractC5835z4 abstractC5835z42 = abstractC5835z4;
        l.e(abstractC5835z42, "presenterView");
        this.f57683a = abstractC5835z42;
        if (this.f19273x == null) {
            this.f19241h = Integer.valueOf(this.f19275y);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: Z0 */
    public void mo32708Z0(String str) {
        l.e(str, "link");
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 != null) {
            abstractC5835z4.mo32366Kt(str);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: Z3 */
    public void mo32707Z3() {
        this.f19276y0.mo26886A0(true);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: Zg */
    public void mo32706Zg(ReplySnippet replySnippet) {
        Integer mo32583a;
        if (replySnippet == null || (mo32583a = this.f19218E.mo32583a(replySnippet.f13459a)) == null) {
            return;
        }
        m32711Tj(replySnippet.f13459a, mo32583a.intValue());
    }

    @Override // p193e.p194a.p437c.p438a.p506o.AbstractC9439b
    /* renamed from: a3 */
    public void mo27565a3(Message message, String str, boolean z) {
        boolean z2;
        l.e(message, "message");
        l.e(str, "analyticsCategory");
        this.f19233X.mo33984c("delete_otp", str, z);
        List<Message> m3962T1 = C25225a.m3962T1(message);
        if (this.f19215B0.mo32047j() && !this.f19230U.mo31011q0()) {
            AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
            if (abstractC5835z4 == null) {
                return;
            }
            abstractC5835z4.mo32337t8(m3962T1);
            return;
        }
        AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z42 == null) {
            return;
        }
        if (!m3962T1.isEmpty()) {
            Iterator<T> it = m3962T1.iterator();
            while (true) {
                z2 = false;
                if (it.hasNext()) {
                    if (m32730Kj((Message) it.next())) {
                        z2 = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z2 = false;
        }
        abstractC5835z42.mo32360S4(z2, C2752R.plurals.ConversationMessagesDeleteQuestion_tcx, m3962T1, "conversation-deleteOtp");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3.AbstractC5337a
    /* renamed from: ag */
    public void mo32705ag(Message message) {
        l.e(message, "message");
        ((AbstractC5719s4.AbstractC5720a) this.f19217D.get()).mo32757w6(message);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        p1 p1Var = this.f19255o;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: d5 */
    public void mo32704d5(Message message, LocationEntity locationEntity) {
        String path;
        l.e(message, "message");
        l.e(locationEntity, "entity");
        if (locationEntity.f13308c != 0 || (path = locationEntity.f13173i.getPath()) == null) {
            return;
        }
        C15314a c15314a = C15314a.f43582g;
        if (v.z(path, C15314a.m18933f() ? "dark" : "light", true) || this.f19259q.contains(Long.valueOf(locationEntity.f13306a))) {
            return;
        }
        this.f19259q.add(Long.valueOf(locationEntity.f13306a));
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5749d(message, locationEntity, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: di */
    public void mo32703di(int i) {
        Integer num = this.f19241h;
        if (num == null || i < num.intValue() * 0.8d) {
            return;
        }
        this.f19241h = Integer.valueOf(num.intValue() * 2);
        m32722Nj(false);
        m32726Mj(false);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5525m6
    /* renamed from: f9 */
    public void mo32702f9(LoadHistoryType loadHistoryType) {
        l.e(loadHistoryType, "type");
        if (loadHistoryType == LoadHistoryType.FAIL) {
            m32726Mj(true);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: fj */
    public void mo32701fj(Message message, CardFeedBackType cardFeedBackType, boolean z) {
        k kVar;
        l.e(cardFeedBackType, "cardFeedBackType");
        FeedbackClass feedbackClass = cardFeedBackType.getFeedbackClass();
        FeedbackClass feedbackClass2 = FeedbackClass.SPAM;
        if (feedbackClass == feedbackClass2 && cardFeedBackType.getFeedbackSubclass() == FeedbackSubclass.POSITIVE) {
            if (message == null) {
                return;
            }
            AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
            if (abstractC5835z4 != null) {
                abstractC5835z4.mo32371C2(message);
            }
            this.f19232W.mo33941j(message.f13398s, "spam", z);
            return;
        }
        FeedbackClass feedbackClass3 = cardFeedBackType.getFeedbackClass();
        FeedbackClass feedbackClass4 = FeedbackClass.NOT_SPAM;
        if (feedbackClass3 == feedbackClass4 && cardFeedBackType.getFeedbackSubclass() == FeedbackSubclass.NEGATIVE) {
            if (message == null) {
                return;
            }
            AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
            if (abstractC5835z42 != null) {
                abstractC5835z42.mo32364N4(message);
            }
            this.f19232W.mo33941j(message.f13398s, "not_spam", z);
            return;
        }
        if (cardFeedBackType.getFeedbackClass() == feedbackClass4 && cardFeedBackType.getFeedbackSubclass() == FeedbackSubclass.POSITIVE) {
            kVar = new k("spam", "reported_spam");
        } else if (cardFeedBackType.getFeedbackClass() == feedbackClass2 && cardFeedBackType.getFeedbackSubclass() == FeedbackSubclass.NEGATIVE) {
            kVar = new k("not_spam", "reported_not_spam");
        } else if ((cardFeedBackType.getFeedbackClass() != feedbackClass2 && cardFeedBackType.getFeedbackClass() != feedbackClass4) || cardFeedBackType.getFeedbackSubclass() != FeedbackSubclass.DISMISS) {
            return;
        } else {
            kVar = new k("dismiss", "dismissed");
        }
        String str = (String) kVar.a;
        String str2 = (String) kVar.b;
        if (message == null) {
            return;
        }
        this.f19232W.mo33941j(message.f13398s, str, z);
        AbstractC5835z4 abstractC5835z43 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z43 == null) {
            return;
        }
        abstractC5835z43.mo32359Sq(str2, message);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: h1 */
    public void mo32700h1(Entity entity, Message message) {
        l.e(entity, "attachment");
        if (!(entity instanceof BinaryEntity)) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5752g(entity, message, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3.AbstractC5337a
    /* renamed from: h6 */
    public void mo32699h6(Message[] messageArr) {
        l.e(messageArr, "messages");
        ((AbstractC5719s4.AbstractC5720a) this.f19217D.get()).mo32761P4((Message[]) Arrays.copyOf(messageArr, messageArr.length));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3.AbstractC5337a
    /* renamed from: hd */
    public void mo32698hd(Message message) {
        l.e(message, "message");
        ((AbstractC5719s4.AbstractC5720a) this.f19217D.get()).mo32756zd(message);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: hh */
    public void mo32697hh(Bundle bundle) {
        if (bundle != null) {
            this.f19251m = bundle.getParcelable("scroll");
            this.f19241h = (Integer) bundle.getSerializable("limit");
        }
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: i */
    public void mo32696i(Message message, String str) {
        l.e(message, "message");
        l.e(str, "action");
        ((AbstractC5719s4.AbstractC5720a) this.f19217D.get()).mo32760i(message, str);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: i1 */
    public void mo32695i1(Entity entity, PlayerVisualizerView playerVisualizerView, AbstractC5732i abstractC5732i) {
        l.e(playerVisualizerView, "visualizer");
        l.e(abstractC5732i, "listener");
        if (this.f19219J.mo32869F() || !(entity instanceof BinaryEntity)) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5759m(entity, playerVisualizerView, abstractC5732i, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: jc */
    public void mo32694jc(k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z) {
        l.e(kVar, "category");
        this.f19232W.mo33944g(kVar, z);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: jd */
    public void mo32693jd(Message message) {
        l.e(message, "message");
        ((AbstractC5719s4.AbstractC5720a) this.f19217D.get()).mo32761P4(message);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: k0 */
    public void mo32692k0(Message message) {
        l.e(message, "message");
        TransportInfo transportInfo = message.f13393n;
        Objects.requireNonNull(transportInfo, "null cannot be cast to non-null type com.truecaller.messaging.transport.history.HistoryTransportInfo");
        boolean z = true;
        if (((HistoryTransportInfo) transportInfo).f13705d != 1) {
            z = false;
        }
        String str = message.f13382c.f11572e;
        l.d(str, "message.participant.normalizedAddress");
        String t = r.t(str, "+", "", false, 4);
        FlashContact flashContact = null;
        if (this.f19230U.mo31102b()) {
            flashContact = null;
            if (this.f19256o0.mo9316b(t).f60563c) {
                Participant participant = message.f13382c;
                l.d(participant, "message.participant");
                flashContact = new FlashContact(t, C6405h.m31301c(participant), null);
            }
        }
        Participant participant2 = message.f13382c;
        AbstractC11476s1 abstractC11476s1 = this.f19254n0;
        l.d(participant2, "it");
        abstractC11476s1.mo24615i(participant2, new C5755j(message, z, flashContact));
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: k1 */
    public void mo32691k1(String str) {
        l.e(str, "url");
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 != null) {
            abstractC5835z4.mo32343j4();
        }
        AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z42 != null) {
            abstractC5835z42.mo32351b(str);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: ld */
    public void mo32690ld() {
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 != null) {
            abstractC5835z4.mo32352a2(0);
        }
        AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z42 != null) {
            abstractC5835z42.mo32342j7(false);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: m2 */
    public void mo32689m2(Bundle bundle) {
        l.e(bundle, "state");
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 != null) {
            bundle.putParcelable("scroll", abstractC5835z4.getScrollState());
            bundle.putSerializable("limit", this.f19241h);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: n0 */
    public void mo32688n0(Message message, int i) {
        Participant[] participantArr;
        l.e(message, "message");
        if (!message.m35019g()) {
            return;
        }
        switch (i) {
            case C2752R.string.ConversationDetailsActionSelectMessages /* 2131886525 */:
                this.f19252m0.mo33227Ya();
                break;
            case C2752R.string.ConversationErrorDelete /* 2131886545 */:
                this.f19252m0.mo33242Cf(false, false, C25225a.m3962T1(message), (r11 & 8) != 0 ? "conversation-deleteSms" : null);
                break;
            case C2752R.string.ConversationErrorEdit /* 2131886546 */:
                ((AbstractC5719s4.AbstractC5720a) this.f19217D.get()).mo32758ui(message);
                break;
            case C2752R.string.ConversationErrorResendChat /* 2131886548 */:
                this.f19252m0.mo33228Xb(message, 2);
                break;
            case C2752R.string.ConversationErrorResendMms /* 2131886549 */:
                this.f19252m0.mo33228Xb(message, 1);
                break;
            case C2752R.string.ConversationErrorResendSms /* 2131886550 */:
                this.f19252m0.mo33228Xb(message, 0);
                break;
            case C2752R.string.ConversationErrorRetry /* 2131886551 */:
                Draft draft = this.f19236d;
                if (draft != null && (participantArr = draft.f13270e) != null) {
                    this.f19225P.mo30555g(message);
                    ((C5718s3) this.f19228S).m32767d(message, participantArr, this.f19225P.mo30548n(message.m35018h(), participantArr, true));
                    break;
                }
                break;
            case C2752R.string.ConversationMarkImportant /* 2131886588 */:
                this.f19252m0.mo33238Jb();
                break;
            case C2752R.string.ConversationMoreDetails /* 2131886598 */:
                this.f19252m0.mo33232N9();
                break;
            case C2752R.string.ConversationNotImportant /* 2131886599 */:
                this.f19252m0.mo33231U2();
                break;
            case C2752R.string.menu_copy /* 2131889451 */:
                this.f19252m0.mo33229Wi();
                break;
        }
        ((AbstractC5743t3) this.f19260q0.get()).mo32633n0(message, i);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: n2 */
    public void mo32687n2(Message message) {
        l.e(message, "message");
        if (message.m35016k()) {
            this.f19225P.mo30541v(message, this.f19267u, new C5762p());
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3.AbstractC5337a
    /* renamed from: n6 */
    public void mo32686n6() {
        this.f19241h = null;
        m32722Nj(false);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: p */
    public void mo32685p(Draft draft) {
        Conversation conversation;
        Draft draft2;
        Conversation conversation2;
        this.f19236d = draft;
        m32722Nj(false);
        if (draft == null || (conversation = draft.f13267b) == null) {
            return;
        }
        ImGroupInfo imGroupInfo = conversation.f13224z;
        Participant[] participantArr = conversation.f13211m;
        l.d(participantArr, "conversation.participants");
        if (!C6405h.m31298f(participantArr) || imGroupInfo == null || C10480a.m25989a1(imGroupInfo)) {
            this.f19218E.mo32574j(null);
        } else {
            AbstractC5794w3 abstractC5794w3 = this.f19218E;
            int i = imGroupInfo.f13327i;
            LoadHistoryType loadHistoryType = i != 2 ? i != 3 ? i != 4 ? null : LoadHistoryType.FAIL : LoadHistoryType.COMPLETE : LoadHistoryType.PROGRESS;
            abstractC5794w3.mo32574j(loadHistoryType != null ? new C5436a(-20000000L, loadHistoryType) : null);
        }
        m32726Mj(false);
        if (this.f19231V.m10988Q().isEnabled() && (draft2 = this.f19236d) != null && (conversation2 = draft2.f13267b) != null) {
            long j = conversation2.f13199a;
            ((AbstractC7357d) this.f19278z0.get()).mo29743b(j);
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5775u4(this, j, null), 3, (Object) null);
        }
        this.f19252m0.mo33223p(draft);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: p7 */
    public void mo32684p7() {
        Conversation conversation;
        this.f19253n = true;
        Draft draft = this.f19236d;
        if (draft == null || (conversation = draft.f13267b) == null) {
            return;
        }
        ((AbstractC6233m) ((AbstractC19854f) this.f19246j0.get()).mo11854a()).mo31672c0(conversation.f13199a, this.f19271w, conversation.f13218t);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: q0 */
    public void mo32683q0(Message message, Entity entity) {
        if (message == null || entity == null) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5754i(entity, message, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: r4 */
    public void mo32682r4() {
        this.f19227R.reset();
        this.f19227R.release();
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: rb */
    public void mo32681rb(Message message, Entity entity) {
        if (entity == null || message.f13390k != 2 || C10480a.m25874x1(message) || this.f19257p.contains(Long.valueOf(entity.f13306a))) {
            return;
        }
        this.f19257p.add(Long.valueOf(entity.f13306a));
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5765s(entity, message, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3.AbstractC5337a
    /* renamed from: rg */
    public void mo32680rg(Message[] messageArr, String str) {
        l.e(messageArr, "messages");
        l.e(str, AnalyticsConstants.CONTEXT);
        AbstractC6233m abstractC6233m = (AbstractC6233m) ((AbstractC19854f) this.f19246j0.get()).mo11854a();
        ArrayList arrayList = new ArrayList(messageArr.length);
        for (Message message : messageArr) {
            arrayList.add(Long.valueOf(message.f13380a));
        }
        abstractC6233m.mo31668n(s1.u.i.U0(arrayList), false).mo11828g();
        C5718s3 c5718s3 = (C5718s3) this.f19228S;
        Objects.requireNonNull(c5718s3);
        l.e(messageArr, "messages");
        l.e(str, AnalyticsConstants.CONTEXT);
        AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
        ArrayList arrayList2 = new ArrayList(messageArr.length);
        for (Message message2 : messageArr) {
            arrayList2.add(Integer.valueOf(message2.f13390k));
        }
        abstractC19510i0.mo13206t(false, arrayList2, messageArr.length, "conversation", null);
        this.f19266t0.mo27279P(true);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: u9 */
    public void mo32679u9(boolean z) {
        if (z) {
            AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
            if (abstractC5835z4 == null) {
                return;
            }
            abstractC5835z4.mo32338qz();
            return;
        }
        AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z42 == null) {
            return;
        }
        abstractC5835z42.mo32344hh();
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: v1 */
    public void mo32678v1(String str) {
        l.e(str, "link");
        AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
        if (abstractC5835z4 != null) {
            abstractC5835z4.mo32347h7(str);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: w7 */
    public void mo32677w7(Message message, k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z) {
        boolean z2;
        l.e(message, "message");
        l.e(kVar, "category");
        this.f19232W.mo33948c("delete_otp", kVar, z);
        List<Message> m3962T1 = C25225a.m3962T1(message);
        if (this.f19215B0.mo32047j() && !this.f19230U.mo31011q0() && (kVar.b instanceof AbstractC10616p.C10623g)) {
            AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) this.f57683a;
            if (abstractC5835z4 == null) {
                return;
            }
            abstractC5835z4.mo32337t8(m3962T1);
        } else if (C10480a.m26095A(m3962T1, this.f19231V, this.f19219J)) {
            AbstractC5835z4 abstractC5835z42 = (AbstractC5835z4) this.f57683a;
            if (abstractC5835z42 == null) {
                return;
            }
            abstractC5835z42.mo32340n4(C2752R.plurals.ConversationMessagesDeleteQuestion_tcx, C10480a.m25890u0(this.f19219J, this.f19235Z), m3962T1);
        } else {
            AbstractC5835z4 abstractC5835z43 = (AbstractC5835z4) this.f57683a;
            if (abstractC5835z43 == null) {
                return;
            }
            if (!m3962T1.isEmpty()) {
                Iterator<T> it = m3962T1.iterator();
                while (true) {
                    z2 = false;
                    if (it.hasNext()) {
                        if (m32730Kj((Message) it.next())) {
                            z2 = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            } else {
                z2 = false;
            }
            abstractC5835z43.mo32360S4(z2, C2752R.plurals.ConversationMessagesDeleteQuestion_tcx, m3962T1, "conversation-deleteOtp");
        }
    }

    @Override // p193e.p194a.p195a.p200c.p201a.C5036k.AbstractC5037a
    /* renamed from: w8 */
    public void mo32676w8(String str, Message message) {
        l.e(str, RemoteMessageConst.Notification.TAG);
        l.e(message, "message");
        this.f19234Y.mo33928e(str, message.f13380a);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5336h3.AbstractC5337a
    /* renamed from: x0 */
    public void mo32675x0() {
        mo32682r4();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5719s4
    /* renamed from: xc */
    public void mo32674xc() {
        AbstractC5835z4 abstractC5835z4;
        Conversation conversation;
        C6113f c6113f = this.f19237e;
        boolean m22540r = C12864a2.m22540r(c6113f != null ? Boolean.valueOf(m32710Uj(c6113f)) : null);
        Draft draft = this.f19236d;
        if (draft != null && (conversation = draft.f13267b) != null) {
            int i = m22540r ? 2 : 1;
            ((AbstractC6233m) ((AbstractC19854f) this.f19246j0.get()).mo11854a()).mo31666q(conversation.f13199a, i).mo11830e(this.f19267u, new C5753h(i, this, m22540r));
        }
        if (!this.f19230U.mo30979w1() && this.f19230U.mo31008q3() && m22540r && (abstractC5835z4 = (AbstractC5835z4) this.f57683a) != null) {
            abstractC5835z4.mo32336u8();
        }
        Conversation mo32851p = this.f19219J.mo32851p();
        if (mo32851p != null) {
            C5718s3 c5718s3 = (C5718s3) this.f19228S;
            Objects.requireNonNull(c5718s3);
            l.e(mo32851p, "conversation");
            Participant[] participantArr = mo32851p.f13211m;
            l.d(participantArr, "conversation.participants");
            Participant participant = (Participant) C25225a.m3830v0(participantArr);
            if (participant == null) {
                return;
            }
            boolean m22540r2 = C12864a2.m22540r(Boolean.valueOf(participant.m35447m()));
            boolean m22540r3 = C12864a2.m22540r(Boolean.valueOf(participant.m35446n()));
            AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
            LinkedHashMap m8655X = C22128a.m8655X("ChangeDisplayCallsConversationSetting", "type");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            l.e("inPhonebook", AnalyticsConstants.NAME);
            m8655X.put("inPhonebook", String.valueOf(m22540r2));
            l.e("isSpammer", AnalyticsConstants.NAME);
            m8655X.put("isSpammer", String.valueOf(m22540r3));
            String m32770a = c5718s3.m32770a(mo32851p.f13217s);
            l.e("tab", AnalyticsConstants.NAME);
            l.e(m32770a, "value");
            m8655X.put("tab", m32770a);
            l.e("value", AnalyticsConstants.NAME);
            m8655X.put("value", String.valueOf(!m22540r));
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("ChangeDisplayCallsConversationSetting");
            m15852a.m15849c(linkedHashMap);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19510i0.mo13225a(build);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j.AbstractC5420b
    /* renamed from: z0 */
    public void mo32673z0(Message message, Entity entity) {
        if (!(entity instanceof BinaryEntity) || message == null || !entity.mo34892w()) {
            return;
        }
        int i = message.f13390k;
        if (i == 2) {
            this.f19225P.mo30539x(i).mo15172q((BinaryEntity) entity);
        } else {
            mo32687n2(message);
        }
    }
}
