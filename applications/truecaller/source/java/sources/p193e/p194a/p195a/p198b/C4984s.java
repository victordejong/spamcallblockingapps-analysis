package p193e.p194a.p195a.p198b;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseBooleanArray;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.blocking.FiltersContract;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.inboxcleanup.InboxCleanerPromoTab;
import com.truecaller.messaging.messaginglist.MarkAsReadBannerState;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.spamcategories.SpamCategoryResult;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1031t2.C17241d;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19126x;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1270u2.p1271a.AbstractC20577c;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1410z4.AbstractC21878a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC7289w;
import p193e.p194a.p195a.p231g.AbstractC6116g0;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.C6159k;
import p193e.p194a.p195a.p231g.C6247v;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6126a;
import p193e.p194a.p195a.p240i.C6391f;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p241i1.AbstractC6397d;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p244k.p245a.AbstractC6543e1;
import p193e.p194a.p195a.p244k.p245a.AbstractC6598o0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6601p0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6614r0;
import p193e.p194a.p195a.p244k.p245a.C6654z1;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.p264g3.C6879f;
import p193e.p194a.p195a.p275o0.AbstractC7152a;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p413i.AbstractC8449b;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p442b.p445c.C8766c;
import p193e.p194a.p437c.p438a.p446c.p449f.C8796d;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p438a.p493l.C9245c;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import p193e.p194a.p678d4.AbstractC12595a;
import p193e.p194a.p751f4.p762g.AbstractC14015j;
import p193e.p194a.p798g5.AbstractC14535n;
import p193e.p194a.p837h0.AbstractC14854r;
import p193e.p194a.p852i.AbstractC15212n;
import p193e.p194a.p852i.p896f0.AbstractC15162c;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
import w3.c.a.a.a.h;
/* renamed from: e.a.a.b.s */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/s.class */
public final class C4984s extends AbstractC20577c<AbstractC4979q, AbstractC4981r> implements AbstractC4977p, AbstractC14015j.AbstractC14016a, AbstractC6598o0 {

    /* renamed from: D */
    public final InboxTab f17011D;

    /* renamed from: E */
    public final f f17012E;

    /* renamed from: J */
    public final AbstractC19022f0 f17013J;

    /* renamed from: K */
    public final AbstractC6392i0 f17014K;

    /* renamed from: L */
    public final AbstractC14015j f17015L;

    /* renamed from: M */
    public final AbstractC19868j f17016M;

    /* renamed from: N */
    public final a<AbstractC6248w> f17017N;

    /* renamed from: O */
    public final AbstractC15162c f17018O;

    /* renamed from: P */
    public final a<AbstractC19854f<AbstractC6233m>> f17019P;

    /* renamed from: Q */
    public final AbstractC19233h0 f17020Q;

    /* renamed from: R */
    public final AbstractC19854f<AbstractC14854r> f17021R;

    /* renamed from: S */
    public final AbstractC19462a f17022S;

    /* renamed from: T */
    public final AbstractC19854f<AbstractC19126x> f17023T;

    /* renamed from: U */
    public final AbstractC19854f<AbstractC14535n> f17024U;

    /* renamed from: V */
    public final AbstractC19219a0 f17025V;

    /* renamed from: W */
    public final AbstractC19854f<AbstractC6543e1> f17026W;

    /* renamed from: X */
    public final AbstractC8432l f17027X;

    /* renamed from: Y */
    public final AbstractC21878a f17028Y;

    /* renamed from: Z */
    public final AbstractC4951d0 f17029Z;

    /* renamed from: e */
    public AbstractC6126a f17030e;

    /* renamed from: f */
    public boolean f17031f;

    /* renamed from: g */
    public AbstractC19844a f17032g;

    /* renamed from: g0 */
    public final AbstractC19854f<AbstractC6485m> f17033g0;

    /* renamed from: h */
    public AbstractC19844a f17034h;

    /* renamed from: h0 */
    public final AbstractC6394b f17035h0;

    /* renamed from: i */
    public AbstractC19844a f17036i;

    /* renamed from: i0 */
    public final AbstractC19510i0 f17037i0;

    /* renamed from: j */
    public p1 f17038j;

    /* renamed from: j0 */
    public final C20592g f17039j0;

    /* renamed from: k */
    public boolean f17040k;

    /* renamed from: k0 */
    public final AbstractC6116g0 f17041k0;

    /* renamed from: l0 */
    public final AbstractC6601p0 f17043l0;

    /* renamed from: m */
    public boolean f17044m;

    /* renamed from: m0 */
    public final C17241d f17045m0;

    /* renamed from: n0 */
    public final AbstractC12595a f17047n0;

    /* renamed from: o */
    public AbstractC6798d1 f17048o;

    /* renamed from: o0 */
    public final AbstractC7152a f17049o0;

    /* renamed from: p */
    public C6391f f17050p;

    /* renamed from: p0 */
    public final AbstractC6614r0 f17051p0;

    /* renamed from: q */
    public boolean f17052q;

    /* renamed from: q0 */
    public final AbstractC19230g f17053q0;

    /* renamed from: r */
    public boolean f17054r;

    /* renamed from: r0 */
    public final C6879f f17055r0;

    /* renamed from: s0 */
    public final AbstractC6397d f17057s0;

    /* renamed from: t0 */
    public final AbstractC7289w f17059t0;

    /* renamed from: u */
    public boolean f17060u;

    /* renamed from: u0 */
    public final C8796d f17061u0;

    /* renamed from: v0 */
    public final AbstractC8511a f17063v0;

    /* renamed from: w0 */
    public final AbstractC10060c f17065w0;

    /* renamed from: x */
    public boolean f17066x;

    /* renamed from: x0 */
    public final boolean f17067x0;

    /* renamed from: y */
    public boolean f17068y;

    /* renamed from: z */
    public C6247v f17069z;

    /* renamed from: l */
    public final Map<Long, Conversation> f17042l = new LinkedHashMap();

    /* renamed from: n */
    public Conversation[] f17046n = new Conversation[0];

    /* renamed from: s */
    public final Map<String, String> f17056s = new LinkedHashMap();

    /* renamed from: t */
    public final Map<String, String> f17058t = new LinkedHashMap();

    /* renamed from: v */
    public Set<Long> f17062v = new LinkedHashSet();

    /* renamed from: w */
    public MarkAsReadBannerState f17064w = MarkAsReadBannerState.ALL;

    /* renamed from: A */
    public final C4994j f17008A = new C4994j();

    /* renamed from: B */
    public final C4986b f17009B = new C4986b(new Handler(Looper.getMainLooper()), 1000);

    /* renamed from: C */
    public final C4985a f17010C = new C4985a();

    /* renamed from: e.a.a.b.s$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/s$a.class */
    public static final class C4985a extends AbstractC15212n {
        public C4985a() {
            C4984s.this = r4;
        }

        @Override // p193e.p194a.p852i.AbstractC15212n, p193e.p194a.p852i.AbstractC15211m
        public void onAdLoaded() {
            C4984s c4984s = C4984s.this;
            AbstractC4981r abstractC4981r = (AbstractC4981r) c4984s.f57683a;
            if (abstractC4981r != null) {
                abstractC4981r.mo34141I5(c4984s.f17018O.m19093g());
            }
        }
    }

    /* renamed from: e.a.a.b.s$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/s$b.class */
    public static final class C4986b extends AbstractC8449b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4986b(Handler handler, long j) {
            super(handler, j);
            C4984s.this = r6;
        }

        @Override // p193e.p194a.p372b0.p413i.AbstractC8449b
        /* renamed from: a */
        public void mo9046a() {
            C4984s c4984s = C4984s.this;
            if (c4984s.f17060u) {
                c4984s.m34079Lj();
            }
        }
    }

    @e(c = "com.truecaller.messaging.messaginglist.MessagingListPresenterImpl$loadConversations$1", f = "MessagingListPresenterImpl.kt", l = {329, 330, 332, 335}, m = "invokeSuspend")
    /* renamed from: e.a.a.b.s$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/s$c.class */
    public static final class C4987c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f17072e;

        /* renamed from: f */
        public int f17073f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4987c(d dVar) {
            super(2, dVar);
            C4984s.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34039i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4987c(dVar);
        }

        /* renamed from: k */
        public final Object m34038k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4987c(dVar).m34037s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:50:0x01a2  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m34037s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 466
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4984s.C4987c.m34037s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.a.b.s$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/s$d.class */
    public static final class C4988d<R> implements AbstractC19851d0<Contact> {

        /* renamed from: b */
        public final /* synthetic */ String f17076b;

        /* renamed from: c */
        public final /* synthetic */ FiltersContract.Filters.EntityType f17077c;

        public C4988d(String str, FiltersContract.Filters.EntityType entityType) {
            C4984s.this = r4;
            this.f17076b = str;
            this.f17077c = entityType;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Contact contact) {
            Contact contact2 = contact;
            C4984s c4984s = C4984s.this;
            String str = this.f17076b;
            FiltersContract.Filters.EntityType entityType = this.f17077c;
            Objects.requireNonNull(c4984s);
            if (contact2 != null) {
                c4984s.f17024U.mo11854a().mo20028a(contact2, str, entityType == FiltersContract.Filters.EntityType.BUSINESS ? 2 : 1).mo11828g();
            }
        }
    }

    @e(c = "com.truecaller.messaging.messaginglist.MessagingListPresenterImpl$onDeleteConfirmationPositiveClicked$1", f = "MessagingListPresenterImpl.kt", l = {932}, m = "invokeSuspend")
    /* renamed from: e.a.a.b.s$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/s$e.class */
    public static final class C4989e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f17078e;

        /* renamed from: g */
        public final /* synthetic */ boolean f17080g;

        /* renamed from: h */
        public final /* synthetic */ boolean f17081h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4989e(boolean z, boolean z2, d dVar) {
            super(2, dVar);
            C4984s.this = r5;
            this.f17080g = z;
            this.f17081h = z2;
        }

        /* renamed from: i */
        public final d<s> m34036i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4989e(this.f17080g, this.f17081h, dVar);
        }

        /* renamed from: k */
        public final Object m34035k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4989e(this.f17080g, this.f17081h, dVar).m34034s(s.a);
        }

        /* renamed from: s */
        public final Object m34034s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f17078e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC4981r abstractC4981r = (AbstractC4981r) C4984s.this.f57683a;
                if (abstractC4981r != null) {
                    abstractC4981r.mo34138Jo(C2752R.string.DeletingConversations);
                }
                C4984s c4984s = C4984s.this;
                AbstractC6397d abstractC6397d = c4984s.f17057s0;
                Conversation[] conversationArr = c4984s.f17046n;
                boolean z = this.f17080g && this.f17081h;
                this.f17078e = 1;
                if (abstractC6397d.mo31313a(conversationArr, "inbox-deleteConversation", z, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC4981r abstractC4981r2 = (AbstractC4981r) C4984s.this.f57683a;
            if (abstractC4981r2 != null) {
                abstractC4981r2.mo34103r3();
            }
            AbstractC4981r abstractC4981r3 = (AbstractC4981r) C4984s.this.f57683a;
            if (abstractC4981r3 != null) {
                abstractC4981r3.mo29984e();
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.b.s$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/s$f.class */
    public static final class C4990f<R> implements AbstractC19851d0<SparseBooleanArray> {
        public C4990f() {
            C4984s.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(SparseBooleanArray sparseBooleanArray) {
            C4984s c4984s = C4984s.this;
            c4984s.f17041k0.mo31766g(c4984s.f17011D);
        }
    }

    /* renamed from: e.a.a.b.s$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/s$g.class */
    public static final class C4991g<R> implements AbstractC19851d0<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ boolean f17084b;

        /* renamed from: c */
        public final /* synthetic */ Conversation[] f17085c;

        public C4991g(boolean z, Conversation[] conversationArr) {
            C4984s.this = r4;
            this.f17084b = z;
            this.f17085c = conversationArr;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            Boolean bool2 = bool;
            C4984s c4984s = C4984s.this;
            boolean z = this.f17084b;
            int length = this.f17085c.length;
            String str = z ? "PinThread" : "UnpinThread";
            AbstractC19462a abstractC19462a = c4984s.f17022S;
            LinkedHashMap m8655X = C22128a.m8655X(str, "type");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("value", Double.valueOf(length));
            String analyticsContext = c4984s.f17011D.getAnalyticsContext();
            l.e("tab", AnalyticsConstants.NAME);
            l.e(analyticsContext, "value");
            m8655X.put("tab", analyticsContext);
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b(str);
            m15852a.m15849c(linkedHashMap);
            C22128a.m8553x0(m15852a, m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
            String mo13759k = C4984s.this.f17020Q.mo13759k(this.f17084b ? 2131755015 : 2131755019, this.f17085c.length, new Object[0]);
            l.d(mo13759k, "resourceProvider.getQuan…                        )");
            AbstractC4981r abstractC4981r = (AbstractC4981r) C4984s.this.f57683a;
            if (abstractC4981r != null) {
                abstractC4981r.mo29984e();
                abstractC4981r.mo34148D0();
                if (!l.a(bool2, Boolean.TRUE)) {
                    return;
                }
                abstractC4981r.mo34107m(mo13759k);
            }
        }
    }

    /* renamed from: e.a.a.b.s$h */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/s$h.class */
    public static final class C4992h<R> implements AbstractC19851d0<Boolean> {
        public C4992h() {
            C4984s.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            AbstractC4981r abstractC4981r = (AbstractC4981r) C4984s.this.f57683a;
            if (abstractC4981r != null) {
                abstractC4981r.mo34148D0();
            }
        }
    }

    @e(c = "com.truecaller.messaging.messaginglist.MessagingListPresenterImpl$refreshPromo$1", f = "MessagingListPresenterImpl.kt", l = {1560}, m = "invokeSuspend")
    /* renamed from: e.a.a.b.s$i */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/s$i.class */
    public static final class C4993i extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f17087e;

        /* renamed from: f */
        public int f17088f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4993i(d dVar) {
            super(2, dVar);
            C4984s.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34033i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4993i(dVar);
        }

        /* renamed from: k */
        public final Object m34032k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4993i(dVar).m34031s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:20:0x008e  */
        /* JADX WARN: Type inference failed for: r0v17, types: [e.a.a.m.d1] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m34031s(java.lang.Object r5) {
            /*
                r4 = this;
                e.a.a.m.d1$p r0 = p193e.p194a.p195a.p258m.AbstractC6798d1.C6820p.f22367b
                r6 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r7 = r0
                r0 = r4
                int r0 = r0.f17088f
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L35
                r0 = r8
                r1 = 1
                if (r0 != r1) goto L2b
                r0 = r4
                java.lang.Object r0 = r0.f17087e
                e.a.a.b.s r0 = (p193e.p194a.p195a.p198b.C4984s) r0
                r7 = r0
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r5
                r9 = r0
                goto L6e
            L2b:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L35:
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r4
                e.a.a.b.s r0 = p193e.p194a.p195a.p198b.C4984s.this
                r5 = r0
                r0 = r5
                boolean r0 = r0.f17066x
                if (r0 == 0) goto L4a
                r0 = r6
                r7 = r0
                goto L7a
            L4a:
                r0 = r5
                e.a.a.b.d0 r0 = r0.f17029Z
                r9 = r0
                r0 = r4
                r1 = r5
                r0.f17087e = r1
                r0 = r4
                r1 = 1
                r0.f17088f = r1
                r0 = r9
                r1 = r4
                java.lang.Object r0 = r0.mo34097a(r1)
                r9 = r0
                r0 = r9
                r1 = r7
                if (r0 != r1) goto L6c
                r0 = r7
                return r0
            L6c:
                r0 = r5
                r7 = r0
            L6e:
                r0 = r9
                e.a.a.m.d1 r0 = (p193e.p194a.p195a.p258m.AbstractC6798d1) r0
                r9 = r0
                r0 = r7
                r5 = r0
                r0 = r9
                r7 = r0
            L7a:
                r0 = r5
                r1 = r7
                r0.f17048o = r1
                r0 = r4
                e.a.a.b.s r0 = p193e.p194a.p195a.p198b.C4984s.this
                PV r0 = r0.f57683a
                e.a.a.b.r r0 = (p193e.p194a.p195a.p198b.AbstractC4981r) r0
                r5 = r0
                r0 = r5
                if (r0 == 0) goto Lae
                r0 = r5
                r0.mo34148D0()
                r0 = r5
                r1 = r4
                e.a.a.b.s r1 = p193e.p194a.p195a.p198b.C4984s.this
                e.a.a.m.d1 r1 = r1.f17048o
                r2 = r6
                boolean r1 = s1.z.c.l.a(r1, r2)
                r2 = 1
                r1 = r1 ^ r2
                r0.mo34150Bk(r1)
                r0 = r4
                e.a.a.b.s r0 = p193e.p194a.p195a.p198b.C4984s.this
                r0.m34064Uj()
            Lae:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4984s.C4993i.m34031s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.a.b.s$j */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/s$j.class */
    public static final class C4994j extends BroadcastReceiver {
        public C4994j() {
            C4984s.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            C4984s.this.m34079Lj();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C4984s(InboxTab inboxTab, @Named("UI") f fVar, AbstractC19022f0 abstractC19022f0, AbstractC6392i0 abstractC6392i0, @Named("inbox") AbstractC14015j abstractC14015j, @Named("ui_thread") AbstractC19868j abstractC19868j, a<AbstractC6248w> aVar, AbstractC15162c abstractC15162c, a<AbstractC19854f<AbstractC6233m>> aVar2, AbstractC19233h0 abstractC19233h0, AbstractC19854f<AbstractC14854r> abstractC19854f, AbstractC19462a abstractC19462a, AbstractC19854f<AbstractC19126x> abstractC19854f2, AbstractC19854f<AbstractC14535n> abstractC19854f3, AbstractC19219a0 abstractC19219a0, AbstractC19854f<AbstractC6543e1> abstractC19854f4, AbstractC8432l abstractC8432l, AbstractC21878a abstractC21878a, AbstractC4951d0 abstractC4951d0, AbstractC19854f<AbstractC6485m> abstractC19854f5, AbstractC6394b abstractC6394b, AbstractC19510i0 abstractC19510i0, C20592g c20592g, AbstractC6116g0 abstractC6116g0, AbstractC6601p0 abstractC6601p0, C17241d c17241d, AbstractC12595a abstractC12595a, AbstractC7152a abstractC7152a, AbstractC6614r0 abstractC6614r0, AbstractC19230g abstractC19230g, C6879f c6879f, AbstractC6397d abstractC6397d, AbstractC7289w abstractC7289w, C8796d c8796d, AbstractC8511a abstractC8511a, AbstractC10060c abstractC10060c, boolean z) {
        super(fVar);
        l.e(inboxTab, "inboxTab");
        l.e(fVar, "uiContext");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC14015j, "bulkSearcher");
        l.e(abstractC19868j, "uiThread");
        l.e(aVar, "readMessageStorage");
        l.e(abstractC15162c, "adsLoader");
        l.e(aVar2, "messagesStorage");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC19854f, "spamManager");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19854f2, "contactsManager");
        l.e(abstractC19854f3, "tagDataSaver");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19854f4, "imUserManager");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC21878a, "adsSettings");
        l.e(abstractC4951d0, "promoStateManager");
        l.e(abstractC19854f5, "imGroupManager");
        l.e(abstractC6394b, "messageUtil");
        l.e(abstractC19510i0, "messageAnalytics");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC6116g0, "unreadThreadsCounter");
        l.e(abstractC6601p0, "imTypingManager");
        l.e(c17241d, "reportSpamPromotionManager");
        l.e(abstractC12595a, "appMarketUtil");
        l.e(abstractC7152a, "participantBlockHelper");
        l.e(abstractC6614r0, "imUnreadRemindersManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(c6879f, "updateMobileServicesPromoManager");
        l.e(abstractC6397d, "messagingActionHelper");
        l.e(abstractC7289w, "inboxTabsProvider");
        l.e(c8796d, "otpFlowUseCase");
        l.e(abstractC8511a, "profileLoader");
        l.e(abstractC10060c, "insightsAnalyticsManager");
        this.f17011D = inboxTab;
        this.f17012E = fVar;
        this.f17013J = abstractC19022f0;
        this.f17014K = abstractC6392i0;
        this.f17015L = abstractC14015j;
        this.f17016M = abstractC19868j;
        this.f17017N = aVar;
        this.f17018O = abstractC15162c;
        this.f17019P = aVar2;
        this.f17020Q = abstractC19233h0;
        this.f17021R = abstractC19854f;
        this.f17022S = abstractC19462a;
        this.f17023T = abstractC19854f2;
        this.f17024U = abstractC19854f3;
        this.f17025V = abstractC19219a0;
        this.f17026W = abstractC19854f4;
        this.f17027X = abstractC8432l;
        this.f17028Y = abstractC21878a;
        this.f17029Z = abstractC4951d0;
        this.f17033g0 = abstractC19854f5;
        this.f17035h0 = abstractC6394b;
        this.f17037i0 = abstractC19510i0;
        this.f17039j0 = c20592g;
        this.f17041k0 = abstractC6116g0;
        this.f17043l0 = abstractC6601p0;
        this.f17045m0 = c17241d;
        this.f17047n0 = abstractC12595a;
        this.f17049o0 = abstractC7152a;
        this.f17051p0 = abstractC6614r0;
        this.f17053q0 = abstractC19230g;
        this.f17055r0 = c6879f;
        this.f17057s0 = abstractC6397d;
        this.f17059t0 = abstractC7289w;
        this.f17061u0 = c8796d;
        this.f17063v0 = abstractC8511a;
        this.f17065w0 = abstractC10060c;
        this.f17067x0 = z;
    }

    /* renamed from: Ij */
    public static final void m34083Ij(C4984s c4984s, AbstractC6126a abstractC6126a) {
        int i;
        int i2;
        AbstractC4981r abstractC4981r = (AbstractC4981r) c4984s.f57683a;
        if (abstractC4981r == null) {
            if (abstractC6126a == null) {
                return;
            }
            abstractC6126a.close();
            return;
        }
        c4984s.f17038j = null;
        if (c4984s.f17040k) {
            c4984s.f17040k = false;
            c4984s.m34079Lj();
        }
        if (c4984s.f17031f) {
            AbstractC6126a abstractC6126a2 = c4984s.f17030e;
            if (abstractC6126a2 != null) {
                abstractC6126a2.unregisterContentObserver(c4984s.f17009B);
            }
            c4984s.f17031f = false;
        }
        AbstractC6126a abstractC6126a3 = c4984s.f17030e;
        if (abstractC6126a3 != null) {
            abstractC6126a3.close();
        }
        c4984s.f17030e = abstractC6126a;
        if (!c4984s.f17031f && c4984s.f17060u) {
            if (abstractC6126a != null) {
                abstractC6126a.registerContentObserver(c4984s.f17009B);
            }
            c4984s.f17031f = true;
        }
        boolean z = abstractC6126a == null || abstractC6126a.getCount() == 0;
        if (z) {
            int ordinal = c4984s.f17011D.ordinal();
            if (ordinal == 0) {
                i = c4984s.f17067x0 ? 2131889507 : 2131889501;
            } else if (ordinal == 1) {
                i = 2131889508;
            } else if (ordinal == 2) {
                throw new IllegalArgumentException("Business tab is managed independently of the MessagingListFragment");
            } else {
                if (ordinal == 3) {
                    i = c4984s.f17067x0 ? 2131889512 : 2131889511;
                } else if (ordinal != 4) {
                    throw new s1.i();
                } else {
                    i = 2131889509;
                }
            }
            abstractC4981r.mo34115ec(i);
            if (c4984s.f17067x0) {
                int ordinal2 = c4984s.f17011D.ordinal();
                if (ordinal2 == 0) {
                    i2 = 2131231976;
                } else if (ordinal2 == 1 || ordinal2 == 2) {
                    i2 = 0;
                } else if (ordinal2 == 3) {
                    i2 = 2131232357;
                } else if (ordinal2 != 4) {
                    throw new s1.i();
                } else {
                    i2 = 2131232038;
                }
                abstractC4981r.mo34136Kb(i2);
            } else {
                abstractC4981r.mo34136Kb(0);
            }
        }
        abstractC4981r.mo34105nt(z);
        if (c4984s.f17011D == InboxTab.OTHERS) {
            c4984s.f17039j0.m10969e0().isEnabled();
        }
        abstractC4981r.mo34148D0();
        c4984s.m34065Tj();
        if (c4984s.f17044m) {
            c4984s.f17041k0.mo31765h(c4984s.f17011D);
        }
        if (c4984s.f17011D != InboxTab.PROMOTIONAL) {
            return;
        }
        if (abstractC6126a == null) {
            c4984s.mo34057d3(0);
            return;
        }
        abstractC6126a.moveToPosition(-1);
        int i3 = 0;
        while (abstractC6126a.moveToNext()) {
            if (abstractC6126a.mo31754b0() > 0) {
                i3++;
            }
        }
        c4984s.mo34057d3(i3);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: A4 */
    public void mo34094A4() {
        ArrayList arrayList = new ArrayList();
        AbstractC6126a abstractC6126a = this.f17030e;
        if (abstractC6126a != null) {
            abstractC6126a.moveToPosition(-1);
            while (abstractC6126a.moveToNext()) {
                Conversation mo31752p = abstractC6126a.mo31752p();
                if (C10480a.m26085C1(mo31752p)) {
                    arrayList.add(mo31752p);
                }
            }
        }
        if (!(!arrayList.isEmpty())) {
            arrayList = null;
        }
        if (arrayList != null) {
            this.f17041k0.mo31764i(this.f17011D, arrayList);
            AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
            if (abstractC4981r != null) {
                abstractC4981r.mo34148D0();
            }
            AbstractC4981r abstractC4981r2 = (AbstractC4981r) this.f57683a;
            if (abstractC4981r2 != null) {
                abstractC4981r2.mo34128Rd(arrayList.size());
            }
            if (this.f17064w != MarkAsReadBannerState.UNREAD) {
                return;
            }
            m34069Rj();
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: Ad */
    public void mo34093Ad(boolean z, boolean z2) {
        if (this.f17046n.length == 0) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C4989e(z, z2, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6892i1.AbstractC6893a
    /* renamed from: Ae */
    public boolean mo30403Ae() {
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6872g2.AbstractC6873a
    /* renamed from: B7 */
    public boolean mo30411B7() {
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6929o1.AbstractC6930a
    /* renamed from: Bi */
    public void mo30371Bi() {
        m34073Pj();
    }

    /* renamed from: Bj */
    public void m34092Bj() {
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4959h
    /* renamed from: Bl */
    public void mo34091Bl(long j, String str, String str2, String str3, String str4, boolean z, boolean z2, boolean z3) {
        l.e(str, "normalizedNumber");
        AbstractC4979q abstractC4979q = (AbstractC4979q) this.f57687b;
        if (abstractC4979q != null) {
            abstractC4979q.mo34091Bl(j, str, str2, str3, str4, z, z2, z3);
        }
    }

    @Override // p193e.p194a.p195a.p240i.AbstractC6386b
    /* renamed from: Cg */
    public InboxTab mo31361Cg() {
        return this.f17011D;
    }

    /* renamed from: D5 */
    public boolean m34090D5() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34151B3();
        }
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6979y1.AbstractC6980a
    /* renamed from: Da */
    public boolean mo30335Da() {
        this.f17014K.mo30972x3(false);
        this.f17014K.mo31216E1(System.currentTimeMillis());
        m34073Pj();
        n.B0(ViewActionEvent.f9985d.m35928j("inbox", ViewActionEvent.ImUpgradeAction.UPDATE_APP_DISMISSED), this.f17022S);
        return true;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: E2 */
    public void mo34089E2() {
        if (this.f17044m) {
            this.f17018O.m19098b(true);
        }
        long millis = TimeUnit.SECONDS.toMillis(this.f17028Y.getLong("adFeatureRetentionTime", 0L));
        if (millis == 0) {
            this.f17018O.m19094f();
        } else {
            this.f17018O.m19097c(millis);
        }
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6839e2.AbstractC6840a
    /* renamed from: E3 */
    public void mo30425E3() {
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: Eq */
    public void mo34088Eq() {
        m34066Sj("notspam");
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo29984e();
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: F0 */
    public void mo34087F0() {
        this.f17068y = true;
        this.f17066x = true;
        AbstractC6798d1.C6820p c6820p = AbstractC6798d1.C6820p.f22367b;
        this.f17048o = c6820p;
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34148D0();
        }
        AbstractC4981r abstractC4981r2 = (AbstractC4981r) this.f57683a;
        if (abstractC4981r2 != null) {
            abstractC4981r2.mo34150Bk(true ^ l.a(this.f17048o, c6820p));
        }
        m34064Uj();
        if (this.f17064w == MarkAsReadBannerState.ALL) {
            m34069Rj();
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4961i
    /* renamed from: F1 */
    public boolean mo34086F1(Conversation conversation) {
        l.e(conversation, "conversation");
        return this.f17042l.containsKey(Long.valueOf(conversation.f13199a));
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: Ft */
    public void mo34085Ft(Conversation[] conversationArr) {
        l.e(conversationArr, "pendingArchiveList");
        ((AbstractC6233m) ((AbstractC19854f) this.f17019P.get()).mo11854a()).mo31670f(conversationArr, false).mo11830e(this.f17016M, new C4992h());
        m34078Mj(conversationArr, false);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6898j1.AbstractC6899a
    /* renamed from: G5 */
    public void mo30400G5() {
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6598o0
    /* renamed from: G6 */
    public void mo30688G6(String str, C6654z1 c6654z1) {
        AbstractC4981r abstractC4981r;
        l.e(str, "imPeerId");
        if (c6654z1 == null) {
            this.f17058t.remove(str);
        } else {
            this.f17058t.put(str, c6654z1.f21939b);
        }
        if (!this.f17060u || (abstractC4981r = (AbstractC4981r) this.f57683a) == null) {
            return;
        }
        abstractC4981r.mo34148D0();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6900j2
    /* renamed from: Ge */
    public String mo30398Ge() {
        int ordinal = this.f17011D.ordinal();
        return ordinal != 0 ? ordinal != 3 ? ordinal != 4 ? "PromoUnknownTab" : "PromoInboxPromotionalTab" : "PromoInboxSpamTab" : "PromoInboxPersonalTab";
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6906k1.AbstractC6907a
    /* renamed from: H6 */
    public boolean mo30393H6() {
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6949s1
    /* renamed from: Ha */
    public void mo30359Ha() {
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6912l1.AbstractC6913a
    /* renamed from: He */
    public void mo30390He() {
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6923n1.AbstractC6924a
    /* renamed from: Hh */
    public boolean mo30379Hh(InboxCleanerPromoTab inboxCleanerPromoTab) {
        l.e(inboxCleanerPromoTab, "tab");
        int ordinal = inboxCleanerPromoTab.ordinal();
        if (ordinal == 0) {
            this.f17014K.mo30986v(new b());
        } else if (ordinal == 1) {
            this.f17014K.mo31156Q1(new b());
        }
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4959h
    /* renamed from: I */
    public void mo34084I(ImGroupInfo imGroupInfo) {
        l.e(imGroupInfo, "imGroupInfo");
        AbstractC4979q abstractC4979q = (AbstractC4979q) this.f57687b;
        if (abstractC4979q != null) {
            abstractC4979q.mo34084I(imGroupInfo);
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4961i
    /* renamed from: J */
    public Object mo34082J(Conversation conversation) {
        l.e(conversation, "conversation");
        long j = conversation.f13199a;
        if (this.f17042l.containsKey(Long.valueOf(j))) {
            this.f17042l.remove(Long.valueOf(j));
        } else {
            this.f17042l.put(Long.valueOf(j), conversation);
        }
        if (!this.f17042l.isEmpty()) {
            AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
            if (abstractC4981r != null) {
                abstractC4981r.mo34148D0();
                abstractC4981r.mo34113g0();
            }
        } else {
            AbstractC4981r abstractC4981r2 = (AbstractC4981r) this.f57683a;
            if (abstractC4981r2 != null) {
                abstractC4981r2.mo29984e();
            }
        }
        return s.a;
    }

    /* renamed from: Jj */
    public final boolean m34081Jj(Conversation conversation, int i) {
        ImGroupInfo imGroupInfo = conversation.f13224z;
        boolean z = false;
        if (imGroupInfo != null) {
            z = false;
            if (!C10480a.m25989a1(imGroupInfo)) {
                z = false;
                if (!C10480a.m25894t1(imGroupInfo)) {
                    l.e(imGroupInfo, "$this$canToggleTo");
                    boolean m25879w1 = C10480a.m25879w1(imGroupInfo);
                    if (i != 0) {
                        m25879w1 = !m25879w1;
                    }
                    z = false;
                    if (m25879w1) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: Kj */
    public final Set<Participant> m34080Kj() {
        Collection<Conversation> values = this.f17042l.values();
        ArrayList arrayList = new ArrayList();
        for (Conversation conversation : values) {
            Participant[] participantArr = conversation.f13211m;
            l.d(participantArr, "it.participants");
            s1.u.i.b(arrayList, C25225a.m3897h3(participantArr));
        }
        return s1.u.i.d1(arrayList);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6984z1.AbstractC6985a
    /* renamed from: L4 */
    public void mo30330L4() {
        PendingIntent m30408a = this.f17055r0.m30408a();
        try {
            if (m30408a == null) {
                AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
                if (abstractC4981r == null) {
                    return;
                }
                String mo13768b = this.f17020Q.mo13768b(2131886719, new Object[0]);
                l.d(mo13768b, "resourceProvider.getString(string.ErrorGeneral)");
                abstractC4981r.mo34122Zj(mo13768b);
                return;
            }
            try {
                m30408a.send();
            } catch (PendingIntent.CanceledException e) {
                e.getMessage();
                AbstractC4981r abstractC4981r2 = (AbstractC4981r) this.f57683a;
                if (abstractC4981r2 != null) {
                    String mo13768b2 = this.f17020Q.mo13768b(2131886719, new Object[0]);
                    l.d(mo13768b2, "resourceProvider.getString(string.ErrorGeneral)");
                    abstractC4981r2.mo34122Zj(mo13768b2);
                }
            }
        } finally {
            m34073Pj();
        }
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6969w1.AbstractC6970a
    /* renamed from: L9 */
    public void mo30342L9() {
        AbstractC4981r abstractC4981r;
        if (this.f17053q0.mo13780q() >= 24 && (abstractC4981r = (AbstractC4981r) this.f57683a) != null) {
            abstractC4981r.mo34125V5();
        }
        m34073Pj();
    }

    /* renamed from: Lj */
    public final void m34079Lj() {
        p1 p1Var = this.f17038j;
        if (p1Var == null || !p1Var.b()) {
            this.f17038j = s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C4987c(null), 3, (Object) null);
        } else {
            this.f17040k = true;
        }
    }

    /* renamed from: Mj */
    public final void m34078Mj(Conversation[] conversationArr, boolean z) {
        String str = z ? "archive" : "unarchive";
        AbstractC19510i0 abstractC19510i0 = this.f17037i0;
        InboxTab inboxTab = this.f17011D;
        AbstractC6126a abstractC6126a = this.f17030e;
        abstractC19510i0.mo13212n(str, inboxTab, abstractC6126a != null ? Integer.valueOf(abstractC6126a.getCount()) : null, conversationArr.length);
        for (Conversation conversation : conversationArr) {
            this.f17037i0.mo13205u(z, conversation.f13199a, conversation.f13218t, this.f17011D);
        }
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6954t1.AbstractC6955a
    /* renamed from: Nd */
    public void mo30356Nd() {
        m34073Pj();
    }

    /* renamed from: Nj */
    public final void m34077Nj(C10530c c10530c, AbstractC9235b.C9239d c9239d) {
        l.e(c10530c, "eventBuilder");
        l.e(c9239d, "otpCardItem");
        c10530c.m25823e(c9239d.f28067g != null ? AnalyticsConstants.OTP : "delivery_otp");
        c10530c.m25822f(c9239d.f28063c);
        this.f17065w0.mo26757a(c10530c.m25827a());
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4973n
    /* renamed from: O */
    public void mo34076O() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            this.f17042l.clear();
            abstractC4981r.mo34152B1(false);
            abstractC4981r.mo34148D0();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d2, code lost:
        if ((r0.size() + r0.length) > 5) goto L28;
     */
    /* renamed from: Oj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m34075Oj(boolean r9) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4984s.m34075Oj(boolean):void");
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4973n
    /* renamed from: P */
    public boolean mo34074P() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34114g();
            abstractC4981r.mo34152B1(true);
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6831d2.AbstractC6832a
    /* renamed from: P7 */
    public void mo30433P7() {
        m34073Pj();
    }

    /* renamed from: Pj */
    public final void m34073Pj() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C4993i(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: Q5 */
    public void mo34072Q5() {
        if (this.f17064w != MarkAsReadBannerState.UNREAD || this.f17066x) {
            return;
        }
        m34069Rj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6944r1.AbstractC6945a
    /* renamed from: Qd */
    public boolean mo30362Qd() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34142G3();
        }
        m34073Pj();
        return true;
    }

    /* renamed from: Qj */
    public final void m34071Qj(int i) {
        Collection<Conversation> values = this.f17042l.values();
        ArrayList<String> arrayList = new ArrayList();
        for (Conversation conversation : values) {
            ImGroupInfo imGroupInfo = conversation.f13224z;
            String str = imGroupInfo != null ? imGroupInfo.f13319a : null;
            if (str != null) {
                arrayList.add(str);
            }
        }
        for (String str2 : arrayList) {
            this.f17033g0.mo11854a().mo30885o(str2, i).mo11828g();
        }
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo29984e();
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4973n
    /* renamed from: R */
    public String mo34070R() {
        return String.valueOf(this.f17042l.size());
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6892i1.AbstractC6893a
    /* renamed from: Rh */
    public boolean mo30402Rh() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34127S2();
        }
        m34073Pj();
        return true;
    }

    /* renamed from: Rj */
    public final void m34069Rj() {
        int i;
        this.f17064w = this.f17064w.toggle();
        this.f17062v.clear();
        if (this.f17064w == MarkAsReadBannerState.ALL) {
            this.f17066x = false;
            m34073Pj();
        }
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            int ordinal = this.f17064w.ordinal();
            if (ordinal == 0) {
                i = 2131886511;
            } else if (ordinal != 1) {
                throw new s1.i();
            } else {
                i = 2131888210;
            }
            abstractC4981r.mo34099wq(i);
        }
        m34079Lj();
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4961i
    /* renamed from: S5 */
    public InboxTab mo34068S5() {
        return this.f17011D;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: Sh */
    public void mo34067Sh() {
        this.f17041k0.mo31763k(this.f17011D);
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34148D0();
        }
    }

    /* renamed from: Sj */
    public final void m34066Sj(String str) {
        Set<Participant> m34080Kj = m34080Kj();
        AbstractC14854r mo11854a = this.f17021R.mo11854a();
        List<Participant> S0 = s1.u.i.S0(m34080Kj);
        ArrayList arrayList = new ArrayList(C25225a.m4004J(m34080Kj, 10));
        for (Participant participant : m34080Kj) {
            arrayList.add(C6405h.m31302b(participant));
        }
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(m34080Kj, 10));
        for (Participant participant2 : m34080Kj) {
            arrayList2.add(C6405h.m31301c(participant2));
        }
        mo11854a.mo19532a(S0, arrayList, arrayList2, str, "inbox", true).mo11828g();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6949s1
    /* renamed from: Ta */
    public void mo30358Ta(PremiumLaunchContext premiumLaunchContext) {
        l.e(premiumLaunchContext, "launchContext");
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34126U(premiumLaunchContext, "premiumAdvancedBlocking");
        }
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6779a2.AbstractC6780a
    /* renamed from: Td */
    public boolean mo30443Td() {
        m34073Pj();
        return true;
    }

    /* renamed from: Tj */
    public final void m34065Tj() {
        AbstractC4981r abstractC4981r;
        AbstractC6126a abstractC6126a;
        if (!this.f17027X.mo28580d() || (abstractC4981r = (AbstractC4981r) this.f57683a) == null || (abstractC6126a = this.f17030e) == null) {
            return;
        }
        List<Integer> mo34102ts = abstractC4981r.mo34102ts();
        ArrayList arrayList = new ArrayList();
        for (Number number : mo34102ts) {
            abstractC6126a.moveToPosition(number.intValue());
            List<Participant> mo31753o = abstractC6126a.mo31753o();
            String str = (mo31753o.size() == 1 && ((Participant) s1.u.i.B(mo31753o)).f11569b == 0) ? ((Participant) s1.u.i.B(mo31753o)).f11572e : null;
            if (str != null) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.f17026W.mo11854a().mo30789c(arrayList);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6779a2.AbstractC6780a
    /* renamed from: U7 */
    public boolean mo30442U7() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34098x3();
        }
        m34073Pj();
        return true;
    }

    /* renamed from: Uj */
    public final void m34064Uj() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34143FA((this.f17052q || this.f17054r) && l.a(this.f17048o, AbstractC6798d1.C6820p.f22367b));
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: Uq */
    public void mo34063Uq() {
        m34066Sj("unblock");
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo29984e();
        }
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6934p1.AbstractC6935a
    /* renamed from: W6 */
    public void mo30366W6() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34129Rb();
        }
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6831d2.AbstractC6832a
    /* renamed from: W9 */
    public void mo30432W9() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34144Eg();
        }
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4959h
    /* renamed from: Wl */
    public void mo34062Wl() {
        AbstractC4979q abstractC4979q = (AbstractC4979q) this.f57687b;
        if (abstractC4979q != null) {
            abstractC4979q.mo34062Wl();
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: Ws */
    public void mo34061Ws(int i) {
        AbstractC4979q abstractC4979q = (AbstractC4979q) this.f57687b;
        if (abstractC4979q != null) {
            List<InboxTab> mo29825a = this.f17059t0.mo29825a();
            InboxTab inboxTab = InboxTab.PROMOTIONAL;
            if (!mo29825a.contains(inboxTab)) {
                inboxTab = InboxTab.OTHERS;
            }
            abstractC4979q.mo29981z0(inboxTab);
        }
        this.f17037i0.mo13203w(i);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.a.b.r] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC4981r) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        this.f17018O.m19091i(this.f17010C);
        r0.mo34105nt(false);
        this.f17043l0.mo30678e(this);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6837e1.AbstractC6838a
    /* renamed from: Y2 */
    public boolean mo30427Y2() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34145E4("AnnounceCallerIdPromo");
        }
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p240i.AbstractC6388d.AbstractC6389a
    /* renamed from: Y3 */
    public void mo31354Y3(AbstractC9235b.C9239d c9239d) {
        l.e(c9239d, "otpCardItem");
        C9245c c9245c = c9239d.f28068h;
        if (c9245c != null) {
            c9245c.m27781a();
            C8766c c8766c = C8766c.f26749e;
            m34077Nj(C8766c.f26747c, c9239d);
        }
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6898j1.AbstractC6899a
    /* renamed from: Y4 */
    public void mo30399Y4() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34131P3();
        }
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6598o0
    /* renamed from: Yh */
    public void mo30687Yh(String str, C6654z1 c6654z1) {
        AbstractC4981r abstractC4981r;
        l.e(str, "imGroupId");
        if (c6654z1 == null) {
            this.f17056s.remove(str);
        } else {
            this.f17056s.put(str, c6654z1.f21939b);
        }
        if (!this.f17060u || (abstractC4981r = (AbstractC4981r) this.f57683a) == null) {
            return;
        }
        abstractC4981r.mo34148D0();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6886h1.AbstractC6887a
    /* renamed from: Yi */
    public boolean mo30405Yi() {
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: Yk */
    public void mo34060Yk(String str, FiltersContract.Filters.EntityType entityType, boolean z, Long l) {
        l.e(entityType, "entityType");
        Collection<Conversation> values = this.f17042l.values();
        ArrayList arrayList = new ArrayList();
        for (Conversation conversation : values) {
            Participant[] participantArr = conversation.f13211m;
            l.d(participantArr, "it.participants");
            s1.u.i.b(arrayList, C25225a.m3897h3(participantArr));
        }
        Set d1 = s1.u.i.d1(arrayList);
        if (d1.isEmpty()) {
            return;
        }
        this.f17049o0.mo30057a(d1, str, entityType, l, false, "inbox");
        Participant participant = (Participant) s1.u.i.A(d1);
        if (str != null && z) {
            this.f17023T.mo11854a().mo14077d(participant.f11575h).mo11830e(this.f17016M, new C4988d(str, entityType));
        }
        String str2 = str;
        if (h.j(str)) {
            str2 = C6405h.m31301c(participant);
        }
        l.e(participant, "$this$getPresentableAddress");
        String m26058J0 = C10480a.m26058J0(participant);
        l.d(m26058J0, "ParticipantUtils.getPresentableAddress(this)");
        String mo13759k = this.f17020Q.mo13759k(C2752R.plurals.NumbersBlockedMessage, d1.size(), Integer.valueOf(d1.size()));
        l.d(mo13759k, "resourceProvider.getQuan….size, participants.size)");
        if (participant.f11569b != 3 || !((Conversation) s1.u.i.A(this.f17042l.values())).f13188C) {
            if (this.f17045m0.m16335a()) {
                AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
                if (abstractC4981r != null) {
                    abstractC4981r.mo34101u3(str2, m26058J0);
                }
            } else {
                AbstractC4981r abstractC4981r2 = (AbstractC4981r) this.f57683a;
                if (abstractC4981r2 != null) {
                    abstractC4981r2.mo34117c6(str2, m26058J0, mo13759k);
                }
            }
        }
        if (this.f17042l.values().size() > 1) {
            this.f17037i0.mo13218h(this.f17042l.values().size(), this.f17011D);
        } else {
            this.f17037i0.mo13219g(d1, "inbox", this.f17011D, l, entityType);
        }
        AbstractC4981r abstractC4981r3 = (AbstractC4981r) this.f57683a;
        if (abstractC4981r3 == null) {
            return;
        }
        abstractC4981r3.mo29984e();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6934p1.AbstractC6935a
    /* renamed from: Z2 */
    public void mo30365Z2() {
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4959h
    /* renamed from: a1 */
    public void mo34059a1(Conversation conversation) {
        l.e(conversation, "conversation");
        AbstractC4979q abstractC4979q = (AbstractC4979q) this.f57687b;
        if (abstractC4979q != null) {
            abstractC4979q.mo34059a1(conversation);
        }
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6851f2.AbstractC6852a
    /* renamed from: a9 */
    public void mo30418a9() {
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6944r1.AbstractC6945a
    /* renamed from: be */
    public boolean mo30361be() {
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6851f2.AbstractC6852a
    /* renamed from: bf */
    public void mo30417bf() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34133N2();
        }
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6959u1.AbstractC6960a
    /* renamed from: bi */
    public boolean mo30353bi() {
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20577c, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        this.f17043l0.mo30677f(this);
        AbstractC6126a abstractC6126a = this.f17030e;
        if (abstractC6126a != null) {
            abstractC6126a.close();
        }
        this.f17030e = null;
        AbstractC19844a abstractC19844a = this.f17032g;
        if (abstractC19844a != null) {
            abstractC19844a.mo11832b();
        }
        this.f17032g = null;
        AbstractC19844a abstractC19844a2 = this.f17034h;
        if (abstractC19844a2 != null) {
            abstractC19844a2.mo11832b();
        }
        this.f17034h = null;
        AbstractC19844a abstractC19844a3 = this.f17036i;
        if (abstractC19844a3 != null) {
            abstractC19844a3.mo11832b();
        }
        this.f17036i = null;
        this.f17018O.m19091i(null);
        this.f17018O.m19099a();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6939q1.AbstractC6940a
    /* renamed from: ca */
    public void mo30364ca() {
        m34073Pj();
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x060e A[LOOP:1: B:92:0x05bf->B:105:0x060e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0608 A[SYNTHETIC] */
    @Override // p193e.p194a.p195a.p198b.AbstractC4973n
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo34058d(int r10) {
        /*
            Method dump skipped, instructions count: 2074
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4984s.mo34058d(int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b0, code lost:
        if (r9 > 0) goto L27;
     */
    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: d3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo34057d3(int r9) {
        /*
            r8 = this;
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 > 0) goto L18
            r0 = r8
            com.truecaller.messaging.messaginglist.MarkAsReadBannerState r0 = r0.f17064w
            com.truecaller.messaging.messaginglist.MarkAsReadBannerState r1 = com.truecaller.messaging.messaginglist.MarkAsReadBannerState.UNREAD
            if (r0 != r1) goto L13
            goto L18
        L13:
            r0 = 0
            r11 = r0
            goto L1a
        L18:
            r0 = 1
            r11 = r0
        L1a:
            r0 = r8
            r1 = r11
            r0.f17052q = r1
            r0 = r11
            if (r0 == 0) goto L95
            r0 = r8
            com.truecaller.messaging.messaginglist.MarkAsReadBannerState r0 = r0.f17064w
            int r0 = r0.ordinal()
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L5c
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L54
            r0 = r8
            e.a.p5.h0 r0 = r0.f17020Q
            r1 = 2131887804(0x7f1206bc, float:1.9410225E38)
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.String r0 = r0.mo13768b(r1, r2)
            r13 = r0
            r0 = r13
            java.lang.String r1 = "resourceProvider.getStri…string.ShowingUnreadOnly)"
            s1.z.c.l.d(r0, r1)
            goto L7e
        L54:
            s1.i r0 = new s1.i
            r1 = r0
            r1.<init>()
            throw r0
        L5c:
            r0 = r8
            e.a.p5.h0 r0 = r0.f17020Q
            r1 = 2131755058(0x7f100032, float:1.9140985E38)
            r2 = r9
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r9
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r4[r5] = r6
            java.lang.String r0 = r0.mo13759k(r1, r2, r3)
            r13 = r0
            r0 = r13
            java.lang.String r1 = "resourceProvider.getQuan…nsCount\n                )"
            s1.z.c.l.d(r0, r1)
        L7e:
            r0 = r8
            PV r0 = r0.f57683a
            e.a.a.b.r r0 = (p193e.p194a.p195a.p198b.AbstractC4981r) r0
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L95
            r0 = r14
            r1 = r13
            r0.mo34118bv(r1)
        L95:
            r0 = r8
            PV r0 = r0.f57683a
            e.a.a.b.r r0 = (p193e.p194a.p195a.p198b.AbstractC4981r) r0
            r13 = r0
            r0 = r13
            if (r0 == 0) goto Lbd
            r0 = r8
            com.truecaller.messaging.messaginglist.MarkAsReadBannerState r0 = r0.f17064w
            com.truecaller.messaging.messaginglist.MarkAsReadBannerState r1 = com.truecaller.messaging.messaginglist.MarkAsReadBannerState.UNREAD
            if (r0 != r1) goto Lb3
            r0 = r10
            r11 = r0
            r0 = r9
            if (r0 <= 0) goto Lb5
        Lb3:
            r0 = 1
            r11 = r0
        Lb5:
            r0 = r13
            r1 = r11
            r0.mo34134Lb(r1)
        Lbd:
            r0 = r8
            r0.m34064Uj()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4984s.mo34057d3(int):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0387, code lost:
        if (r12 == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x01c2, code lost:
        if (r0.getCount() == r7.f17042l.size()) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0262, code lost:
        if (r12 == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x026f, code lost:
        if (r7.f17011D == com.truecaller.messaging.data.types.InboxTab.PROMOTIONAL) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x031a, code lost:
        if (r12 == false) goto L141;
     */
    @Override // p193e.p194a.p195a.p198b.AbstractC4973n
    /* renamed from: dh */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo34056dh(android.view.Menu r8) {
        /*
            Method dump skipped, instructions count: 1443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4984s.mo34056dh(android.view.Menu):void");
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: dn */
    public void mo34055dn() {
        C6159k mo31771a = this.f17041k0.mo31771a();
        if (mo31771a != null) {
            AbstractC19844a abstractC19844a = this.f17034h;
            if (abstractC19844a != null) {
                abstractC19844a.mo11832b();
            }
            AbstractC6233m abstractC6233m = (AbstractC6233m) ((AbstractC19854f) this.f17019P.get()).mo11854a();
            Object[] array = mo31771a.f20749b.toArray(new Conversation[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            this.f17034h = abstractC6233m.mo31701Z((Conversation[]) array, Long.valueOf(mo31771a.f20750c), "inbox").mo11830e(this.f17016M, new C4990f());
            AbstractC6614r0 abstractC6614r0 = this.f17051p0;
            Object[] array2 = mo31771a.f20749b.toArray(new Conversation[0]);
            Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
            abstractC6614r0.mo30611a((Conversation[]) array2);
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: e2 */
    public void mo34054e2(List<String> list, List<? extends Uri> list2) {
        l.e(list, "names");
        l.e(list2, "imageUris");
        InboxTab inboxTab = this.f17011D;
        InboxTab inboxTab2 = InboxTab.PERSONAL;
        if (inboxTab == inboxTab2 && this.f17064w == MarkAsReadBannerState.UNREAD) {
            return;
        }
        boolean z = inboxTab == inboxTab2 && (list.isEmpty() ^ true) && !this.f17068y && !this.f17067x0;
        this.f17054r = z;
        if (z) {
            String mo13768b = this.f17020Q.mo13768b(C2752R.string.UnreadMessagesFromBanner, s1.u.i.O(list, ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62));
            l.d(mo13768b, "resourceProvider.getStri…names.joinToString(\", \"))");
            AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
            if (abstractC4981r != null) {
                abstractC4981r.mo34111ip(mo13768b, list.size(), (Uri) s1.u.i.G(list2, 0), (Uri) s1.u.i.G(list2, 1));
            }
        }
        m34064Uj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6964v1
    /* renamed from: ec */
    public boolean mo30350ec() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34104o2();
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p195a.p240i.AbstractC6388d.AbstractC6389a
    /* renamed from: ei */
    public void mo31353ei(AbstractC9235b.C9239d c9239d) {
        l.e(c9239d, "otpCardItem");
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34116cy(c9239d);
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4961i
    /* renamed from: f */
    public AbstractC6126a mo34053f() {
        return this.f17030e;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6870g1.AbstractC6871a
    /* renamed from: fc */
    public void mo30413fc() {
        m34073Pj();
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14015j.AbstractC14016a
    /* renamed from: g6 */
    public void mo20852g6(Collection<String> collection) {
        l.e(collection, "normalizedNumbers");
        m34079Lj();
    }

    /* renamed from: g8 */
    public void m34052g8() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34130R5();
        }
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6849f1.AbstractC6850a
    /* renamed from: gh */
    public void mo30419gh() {
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6906k1.AbstractC6907a
    /* renamed from: h2 */
    public boolean mo30392h2() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34145E4("GhostCallPromo");
        }
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4961i
    /* renamed from: hj */
    public String mo34051hj(Participant[] participantArr) {
        boolean z;
        l.e(participantArr, "participants");
        if (participantArr.length == 1) {
            int length = participantArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                } else if (participantArr[i].m35448l()) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (z) {
                return null;
            }
            Participant participant = (Participant) C25225a.m3845s0(participantArr);
            return participant.f11569b != 4 ? this.f17058t.get(participant.f11570c) : this.f17056s.get(participant.f11572e);
        }
        return null;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6979y1.AbstractC6980a
    /* renamed from: i3 */
    public boolean mo30334i3() {
        this.f17014K.mo30972x3(false);
        this.f17014K.mo31216E1(System.currentTimeMillis());
        m34073Pj();
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34135L8(this.f17047n0.mo22844c());
        }
        n.B0(ViewActionEvent.f9985d.m35928j("inbox", ViewActionEvent.ImUpgradeAction.UPDATE_APP_CLICKED), this.f17022S);
        return true;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: j */
    public void mo34050j() {
        if (this.f17044m) {
            this.f17018O.m19098b(false);
            this.f17018O.m19096d();
        }
        m34073Pj();
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34141I5(this.f17018O.m19093g());
        }
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6974x1.AbstractC6975a
    /* renamed from: jb */
    public void mo30338jb() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34149C1();
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4962i0
    /* renamed from: jh */
    public C6247v mo34049jh() {
        return this.f17064w == MarkAsReadBannerState.ALL ? this.f17069z : null;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6837e1.AbstractC6838a
    /* renamed from: jj */
    public boolean mo30426jj() {
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p240i.AbstractC6388d.AbstractC6389a
    /* renamed from: l7 */
    public void mo31352l7(AbstractC9235b.C9239d c9239d) {
        l.e(c9239d, "otpCardItem");
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34123X8(c9239d);
        }
        C8766c c8766c = C8766c.f26749e;
        m34077Nj(C8766c.f26748d, c9239d);
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14015j.AbstractC14016a
    /* renamed from: la */
    public void mo20851la(Set<String> set) {
        l.e(set, "normalizedNumbers");
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34148D0();
        }
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6974x1.AbstractC6975a
    /* renamed from: m4 */
    public void mo30337m4() {
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6872g2.AbstractC6873a
    /* renamed from: md */
    public boolean mo30410md() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34139J3();
        }
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6929o1.AbstractC6930a
    /* renamed from: mg */
    public void mo30370mg() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (l.a(abstractC4981r != null ? Boolean.valueOf(abstractC4981r.mo34109k("android.permission.ACCESS_COARSE_LOCATION")) : null, Boolean.TRUE)) {
            AbstractC4981r abstractC4981r2 = (AbstractC4981r) this.f57683a;
            if (abstractC4981r2 == null) {
                return;
            }
            abstractC4981r2.mo34121aj();
            return;
        }
        AbstractC4981r abstractC4981r3 = (AbstractC4981r) this.f57683a;
        if (abstractC4981r3 == null) {
            return;
        }
        abstractC4981r3.mo34110j9(1);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6954t1.AbstractC6955a
    /* renamed from: n8 */
    public void mo30355n8(String str) {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34124W1(str);
        }
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6984z1.AbstractC6985a
    /* renamed from: oc */
    public void mo30329oc() {
        m34073Pj();
    }

    /* renamed from: og */
    public void m34048og() {
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6959u1.AbstractC6960a
    /* renamed from: oi */
    public boolean mo30352oi() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34137K4();
        }
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    public void onPause() {
        this.f17009B.f26155b = 1000L;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        if (i != 1) {
            return;
        }
        if (this.f17025V.mo13826g(strArr, iArr, "android.permission.ACCESS_COARSE_LOCATION")) {
            m34073Pj();
        } else {
            m34073Pj();
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    public void onResume() {
        this.f17009B.f26155b = 0L;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    public void onStart() {
        this.f17060u = true;
        this.f17015L.mo20855b(this);
        this.f17013J.mo14241e(this.f17008A, "com.truecaller.messaging.spam.SEARCH_COMPLETED");
        m34079Lj();
        m34073Pj();
        if (this.f17011D != InboxTab.PERSONAL) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C4996t(this, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    public void onStop() {
        if (this.f17031f) {
            AbstractC6126a abstractC6126a = this.f17030e;
            if (abstractC6126a != null) {
                abstractC6126a.unregisterContentObserver(this.f17009B);
            }
            this.f17031f = false;
        }
        this.f17015L.mo20854c(this);
        this.f17013J.mo14238h(this.f17008A);
        this.f17061u0.f26836d.mo28074a();
        this.f17060u = false;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    public void onVisibilityChanged(boolean z) {
        AbstractC4981r abstractC4981r;
        this.f17044m = z;
        this.f17018O.m19098b(!z);
        if (z) {
            this.f17018O.m19096d();
            this.f17041k0.mo31765h(this.f17011D);
        }
        if (z || (abstractC4981r = (AbstractC4981r) this.f57683a) == null) {
            return;
        }
        abstractC4981r.mo34108ld();
    }

    /* renamed from: pi */
    public void m34047pi() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34140I7();
        }
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4959h
    /* renamed from: q2 */
    public void mo34046q2(Conversation conversation, int i) {
        l.e(conversation, "conversation");
        AbstractC4979q abstractC4979q = (AbstractC4979q) this.f57687b;
        if (abstractC4979q != null) {
            abstractC4979q.mo34046q2(conversation, i);
        }
        this.f17062v.add(Long.valueOf(conversation.f13199a));
    }

    @Override // p193e.p194a.p195a.p240i.AbstractC6386b
    /* renamed from: r */
    public C6391f mo31360r() {
        return this.f17050p;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: se */
    public void mo34045se() {
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6964v1
    /* renamed from: sf */
    public boolean mo30349sf() {
        this.f17014K.mo30966z(true);
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p240i.AbstractC6388d.AbstractC6389a
    /* renamed from: t3 */
    public void mo31351t3(AbstractC9235b.C9239d c9239d) {
        l.e(c9239d, "otpCardItem");
        C9245c c9245c = c9239d.f28067g;
        if (c9245c != null) {
            c9245c.m27781a();
            C8766c c8766c = C8766c.f26749e;
            m34077Nj(C8766c.f26746b, c9239d);
        }
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6886h1.AbstractC6887a
    /* renamed from: u8 */
    public boolean mo30404u8() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34119b6();
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: uf */
    public void mo34044uf() {
        String str;
        m34069Rj();
        AbstractC19510i0 abstractC19510i0 = this.f17037i0;
        InboxTab inboxTab = this.f17011D;
        int ordinal = this.f17064w.ordinal();
        if (ordinal == 0) {
            str = "all";
        } else if (ordinal != 1) {
            throw new s1.i();
        } else {
            str = "unread";
        }
        abstractC19510i0.mo13213m(str, inboxTab);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6969w1.AbstractC6970a
    /* renamed from: va */
    public void mo30341va() {
        m34073Pj();
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6923n1.AbstractC6924a
    /* renamed from: vj */
    public boolean mo30378vj(InboxCleanerPromoTab inboxCleanerPromoTab) {
        l.e(inboxCleanerPromoTab, "tab");
        int ordinal = inboxCleanerPromoTab.ordinal();
        if (ordinal == 0) {
            AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
            if (abstractC4981r != null) {
                abstractC4981r.mo34146E1("PromotionsTabBanner");
            }
            this.f17014K.mo30986v(new b());
            return true;
        } else if (ordinal != 1) {
            return true;
        } else {
            AbstractC4981r abstractC4981r2 = (AbstractC4981r) this.f57683a;
            if (abstractC4981r2 != null) {
                abstractC4981r2.mo34146E1("SpamTabBanner");
            }
            this.f17014K.mo31156Q1(new b());
            return true;
        }
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: wh */
    public void mo34043wh() {
        m34065Tj();
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4973n
    /* renamed from: x0 */
    public void mo34042x0() {
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6839e2.AbstractC6840a
    /* renamed from: xf */
    public void mo30424xf() {
        AbstractC4981r abstractC4981r = (AbstractC4981r) this.f57683a;
        if (abstractC4981r != null) {
            abstractC4981r.mo34145E4("WhatsAppCallerIdPromo");
        }
        m34073Pj();
    }

    /* renamed from: y7 */
    public boolean m34041y7() {
        m34073Pj();
        return true;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6900j2
    /* renamed from: ze */
    public AbstractC6798d1 mo30397ze() {
        return this.f17048o;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4977p
    /* renamed from: zg */
    public void mo34040zg(boolean z, SpamCategoryResult spamCategoryResult) {
        if (!z || spamCategoryResult == null) {
            return;
        }
        String str = spamCategoryResult.f14924b;
        FiltersContract.Filters.EntityType fromIsBusiness = FiltersContract.Filters.EntityType.fromIsBusiness(spamCategoryResult.f14925c);
        l.d(fromIsBusiness, "EntityType.fromIsBusines…ategoryResult.isBusiness)");
        mo34060Yk(str, fromIsBusiness, spamCategoryResult.f14928f, spamCategoryResult.f14923a);
    }
}
