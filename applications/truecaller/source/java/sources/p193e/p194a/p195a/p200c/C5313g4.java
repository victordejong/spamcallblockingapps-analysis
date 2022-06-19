package p193e.p194a.p195a.p200c;

import android.content.ContentValues;
import android.content.Intent;
import android.media.AudioManager;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ContentFormat;
import com.truecaller.C2752R;
import com.truecaller.api.services.messenger.p138v1.models.input.InputUserTypingKind;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.flashsdk.models.FlashContact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.conversation.ConversationMode;
import com.truecaller.messaging.conversation.SendType;
import com.truecaller.messaging.conversation.draft.DraftArguments;
import com.truecaller.messaging.conversation.draft.DraftMode;
import com.truecaller.messaging.conversation.draft.DraftUri;
import com.truecaller.messaging.conversation.draft.UriTypeHint;
import com.truecaller.messaging.conversation.voice_notes.RecordView;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.GifEntity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.ReplySnippet;
import com.truecaller.messaging.data.types.TextEntity;
import com.truecaller.messaging.views.Switch;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19073o0;
import p193e.p194a.p1114o5.AbstractC19091q0;
import p193e.p194a.p1114o5.AbstractC19108u0;
import p193e.p194a.p1114o5.AbstractC19126x;
import p193e.p194a.p1114o5.p1120d2.C19010a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1146q2.p1151d1.AbstractC19494d;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p1221t.p1222a.AbstractC20301p;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.C4907a0;
import p193e.p194a.p195a.C6060f0;
import p193e.p194a.p195a.p200c.AbstractC5276f4;
import p193e.p194a.p195a.p200c.p207j8.C5405a;
import p193e.p194a.p195a.p200c.p214m8.AbstractC5527a;
import p193e.p194a.p195a.p200c.p214m8.C5532f;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5639g;
import p193e.p194a.p195a.p223c1.AbstractC5843b;
import p193e.p194a.p195a.p223c1.AbstractC5851c;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.C6113f;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p195a.p244k.C6676e;
import p193e.p194a.p195a.p244k.p245a.AbstractC6523c0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6573i1;
import p193e.p194a.p195a.p244k.p245a.AbstractC6601p0;
import p193e.p194a.p195a.p244k.p245a.C6651y1;
import p193e.p194a.p195a.p284w0.AbstractC7290a;
import p193e.p194a.p195a.p285x0.AbstractC7297b;
import p193e.p194a.p195a.p285x0.C7296a;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p619d.p637c0.AbstractC11430l0;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p712e4.AbstractC13497p;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.e0.x;
import s1.f0.r;
import s1.f0.v;
import s1.k;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.b;
import s1.z.c.j;
import s1.z.c.m;
/* renamed from: e.a.a.c.g4 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/g4.class */
public final class C5313g4 extends AbstractC20574a<AbstractC5443k4> implements AbstractC5276f4 {

    /* renamed from: A */
    public final boolean f18174A;

    /* renamed from: B */
    public final boolean f18175B;

    /* renamed from: C */
    public final f f18176C;

    /* renamed from: D */
    public final AbstractC19870l f18177D;

    /* renamed from: E */
    public final a<AbstractC5276f4.AbstractC5277a> f18178E;

    /* renamed from: J */
    public final AbstractC6708t f18179J;

    /* renamed from: K */
    public final C7296a f18180K;

    /* renamed from: L */
    public final AbstractC5776u5 f18181L;

    /* renamed from: M */
    public final AbstractC5639g f18182M;

    /* renamed from: N */
    public final AbstractC6392i0 f18183N;

    /* renamed from: O */
    public final AbstractC5484l5 f18184O;

    /* renamed from: P */
    public final AbstractC8432l f18185P;

    /* renamed from: Q */
    public final AbstractC19219a0 f18186Q;

    /* renamed from: R */
    public final AbstractC19230g f18187R;

    /* renamed from: S */
    public final AbstractC6394b f18188S;

    /* renamed from: T */
    public final AbstractC19854f<AbstractC19126x> f18189T;

    /* renamed from: U */
    public final AbstractC13497p f18190U;

    /* renamed from: V */
    public final AbstractC19108u0 f18191V;

    /* renamed from: W */
    public final AbstractC20301p f18192W;

    /* renamed from: X */
    public final C20592g f18193X;

    /* renamed from: Y */
    public final AbstractC21631b f18194Y;

    /* renamed from: Z */
    public final a<AbstractC19854f<AbstractC6233m>> f18195Z;

    /* renamed from: d */
    public Draft f18196d;

    /* renamed from: e */
    public C6113f f18197e;

    /* renamed from: f */
    public SendType f18198f;

    /* renamed from: g */
    public final C6676e f18199g;

    /* renamed from: g0 */
    public final AbstractC5854d f18200g0;

    /* renamed from: h */
    public boolean f18201h;

    /* renamed from: h0 */
    public final AbstractC5527a f18202h0;

    /* renamed from: i */
    public boolean f18203i;

    /* renamed from: i0 */
    public final AbstractC19494d f18204i0;

    /* renamed from: j */
    public boolean f18205j;

    /* renamed from: j0 */
    public final AbstractC11476s1 f18206j0;

    /* renamed from: k */
    public C5532f f18207k;

    /* renamed from: k0 */
    public final AbstractC19854f<AbstractC19091q0> f18208k0;

    /* renamed from: l */
    public boolean f18209l;

    /* renamed from: l0 */
    public final AbstractC5585n5 f18210l0;

    /* renamed from: m */
    public boolean f18211m;

    /* renamed from: m0 */
    public final AbstractC19022f0 f18212m0;

    /* renamed from: n */
    public Boolean f18213n;

    /* renamed from: n0 */
    public final AudioManager f18214n0;

    /* renamed from: o */
    public RecordView.RecordState f18215o;

    /* renamed from: o0 */
    public final AbstractC19854f<AbstractC6523c0> f18216o0;

    /* renamed from: p */
    public C6651y1 f18217p;

    /* renamed from: p0 */
    public final AbstractC5687r3 f18218p0;

    /* renamed from: q */
    public boolean f18219q;

    /* renamed from: q0 */
    public final AbstractC6601p0 f18220q0;

    /* renamed from: r */
    public boolean f18221r;

    /* renamed from: r0 */
    public final AbstractC12597c f18222r0;

    /* renamed from: s */
    public AbstractC5276f4.AbstractC5278b f18223s;

    /* renamed from: s0 */
    public final a<AbstractC5743t3> f18224s0;

    /* renamed from: t */
    public List<DraftUri> f18225t;

    /* renamed from: t0 */
    public final AbstractC6573i1 f18226t0;

    /* renamed from: u */
    public boolean f18227u;

    /* renamed from: u0 */
    public final a<C5723s7> f18228u0;

    /* renamed from: v */
    public Message f18229v;

    /* renamed from: v0 */
    public final AbstractC5483l4 f18230v0;

    /* renamed from: w */
    public boolean f18231w;

    /* renamed from: w0 */
    public final AbstractC5719s4 f18232w0;

    /* renamed from: x */
    public p1 f18233x;

    /* renamed from: x0 */
    public final AbstractC5342h8 f18234x0;

    /* renamed from: y */
    public final boolean f18235y;

    /* renamed from: z */
    public final boolean f18236z;

    /* renamed from: e.a.a.c.g4$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g4$a.class */
    public static final /* synthetic */ class C5314a extends j implements l<String, s> {
        public C5314a(C5313g4 c5313g4) {
            super(1, c5313g4, C5313g4.class, "onContactTextReady", "onContactTextReady(Ljava/lang/String;)V", 0);
        }

        /* renamed from: d */
        public Object m33290d(Object obj) {
            String str = (String) obj;
            C5313g4 c5313g4 = (C5313g4) ((b) this).b;
            AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) c5313g4.f57683a;
            if (abstractC5443k4 != null) {
                List T = i.T(new String[]{c5313g4.m33369Nj(), str});
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : T) {
                    String str2 = (String) obj2;
                    if (!(str2 == null || str2.length() == 0)) {
                        arrayList.add(obj2);
                    }
                }
                String O = i.O(arrayList, "\n\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 62);
                boolean z = false;
                if (O.length() > 0) {
                    z = true;
                }
                if (z) {
                    abstractC5443k4.mo32502Ri(O);
                    abstractC5443k4.mo32423qh();
                }
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.g4$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g4$b.class */
    public static final class C5315b<R> implements AbstractC19851d0<k<? extends BinaryEntity, ? extends AbstractC19073o0>> {

        /* renamed from: b */
        public final /* synthetic */ Draft f18238b;

        public C5315b(Draft draft) {
            C5313g4.this = r4;
            this.f18238b = draft;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(k<? extends BinaryEntity, ? extends AbstractC19073o0> kVar) {
            BinaryEntity binaryEntity;
            k<? extends BinaryEntity, ? extends AbstractC19073o0> kVar2 = kVar;
            if (kVar2 == null || (binaryEntity = (BinaryEntity) kVar2.a) == null) {
                return;
            }
            Draft.C4194b m35061b = this.f18238b.m35061b();
            m35061b.m35052f();
            m35061b.m35054d();
            m35061b.m35057a(Collections.singleton(binaryEntity));
            m35061b.f13298o = C5313g4.this.m33372Mj();
            Message m35062a = m35061b.m35055c().m35062a("-1", C5313g4.this.m33375Lj());
            s1.z.c.l.d(m35062a, "draft.buildUpon()\n      …N, getAnalyticsContext())");
            AbstractC5687r3 abstractC5687r3 = C5313g4.this.f18218p0;
            Draft draft = this.f18238b;
            C5718s3 c5718s3 = (C5718s3) abstractC5687r3;
            Objects.requireNonNull(c5718s3);
            s1.z.c.l.e(draft, "draft");
            s1.z.c.l.e(binaryEntity, "entity");
            AbstractC7290a abstractC7290a = c5718s3.f19172c;
            String str = draft.f13274i;
            Participant[] participantArr = draft.f13270e;
            s1.z.c.l.d(participantArr, "draft.participants");
            abstractC7290a.mo29839i(str, "conversation", 2, participantArr, new BinaryEntity[]{binaryEntity}, draft.f13273h);
            AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
            String str2 = draft.f13274i;
            s1.z.c.l.d(str2, "draft.analyticsId");
            Participant[] participantArr2 = draft.f13270e;
            s1.z.c.l.d(participantArr2, "draft.participants");
            abstractC19510i0.mo13209q("UserInput", str2, participantArr2, false, binaryEntity.f13307b);
            C5313g4.this.f18179J.mo30560b(m35062a, this.f18238b.f13270e, false, false).mo11828g();
        }
    }

    /* renamed from: e.a.a.c.g4$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g4$c.class */
    public static final class C5316c<R> implements AbstractC19851d0<List<? extends k<? extends BinaryEntity, ? extends AbstractC19073o0>>> {

        /* renamed from: b */
        public final /* synthetic */ Runnable f18240b;

        public C5316c(Runnable runnable) {
            C5313g4.this = r4;
            this.f18240b = runnable;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(List<? extends k<? extends BinaryEntity, ? extends AbstractC19073o0>> list) {
            k kVar;
            BinaryEntity binaryEntity;
            List<? extends k<? extends BinaryEntity, ? extends AbstractC19073o0>> list2 = list;
            this.f18240b.run();
            if (list2 == null || (kVar = (k) i.B(list2)) == null || (binaryEntity = (BinaryEntity) kVar.a) == null) {
                return;
            }
            C5313g4.this.mo32625dc(binaryEntity.mo34999h() ? DraftMode.GIF : DraftMode.GALLERY, s1.u.s.a, C25225a.m3962T1(binaryEntity), null, false, -1L, 0);
        }
    }

    /* renamed from: e.a.a.c.g4$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g4$d.class */
    public static final class C5317d<R> implements AbstractC19851d0<k<? extends BinaryEntity, ? extends AbstractC19073o0>> {

        /* renamed from: b */
        public final /* synthetic */ Draft f18242b;

        public C5317d(Draft draft) {
            C5313g4.this = r4;
            this.f18242b = draft;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(k<? extends BinaryEntity, ? extends AbstractC19073o0> kVar) {
            BinaryEntity binaryEntity;
            k<? extends BinaryEntity, ? extends AbstractC19073o0> kVar2 = kVar;
            if (kVar2 == null || (binaryEntity = (BinaryEntity) kVar2.a) == null) {
                return;
            }
            Draft.C4194b m35061b = this.f18242b.m35061b();
            m35061b.m35052f();
            m35061b.m35054d();
            m35061b.m35057a(Collections.singleton(binaryEntity));
            m35061b.f13298o = C5313g4.this.m33372Mj();
            Message m35062a = m35061b.m35055c().m35062a("-1", C5313g4.this.m33375Lj());
            s1.z.c.l.d(m35062a, "draft.buildUpon()\n      …N, getAnalyticsContext())");
            C5313g4.this.f18179J.mo30560b(m35062a, this.f18242b.f13270e, false, false).mo11830e(C5313g4.this.f18177D.mo11845d(), new C5380i4(this));
        }
    }

    /* renamed from: e.a.a.c.g4$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g4$e.class */
    public static final class C5318e extends m implements l<String, Boolean> {

        /* renamed from: b */
        public static final C5318e f18243b = new C5318e();

        public C5318e() {
            super(1);
        }

        /* renamed from: d */
        public Object m33289d(Object obj) {
            String str = (String) obj;
            s1.z.c.l.e(str, "it");
            return Boolean.valueOf(str.length() > 0);
        }
    }

    /* renamed from: e.a.a.c.g4$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g4$f.class */
    public static final class C5319f<R> implements AbstractC19851d0<Message> {

        /* renamed from: b */
        public final /* synthetic */ Message f18245b;

        public C5319f(Message message) {
            C5313g4.this = r4;
            this.f18245b = message;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Message message) {
            ((AbstractC6233m) ((AbstractC19854f) C5313g4.this.f18195Z.get()).mo11854a()).mo31667o(this.f18245b.f13380a);
        }
    }

    /* renamed from: e.a.a.c.g4$g */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g4$g.class */
    public static final class C5320g<R> implements AbstractC19851d0<Message> {

        /* renamed from: b */
        public final /* synthetic */ Message f18247b;

        public C5320g(Message message) {
            C5313g4.this = r4;
            this.f18247b = message;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Message message) {
            ((AbstractC6233m) ((AbstractC19854f) C5313g4.this.f18195Z.get()).mo11854a()).mo31673S(this.f18247b.f13380a);
            AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) C5313g4.this.f57683a;
            if (abstractC5443k4 != null) {
                abstractC5443k4.mo32404vk();
            }
        }
    }

    /* renamed from: e.a.a.c.g4$h */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g4$h.class */
    public static final class C5321h<R> implements AbstractC19851d0<Boolean> {
        public C5321h() {
            C5313g4.this = r4;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            C5313g4.this.mo33390C4();
            C5313g4.this.f18230v0.m33058a();
        }
    }

    /* renamed from: e.a.a.c.g4$i */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g4$i.class */
    public static final /* synthetic */ class C5322i extends j implements l<AbstractC5851c, s> {
        public C5322i(C5313g4 c5313g4) {
            super(1, c5313g4, C5313g4.class, "onMessageScheduled", "onMessageScheduled$truecaller_googlePlayRelease(Lcom/truecaller/messaging/sending/DraftScheduleResult;)V", 0);
        }

        /* renamed from: d */
        public Object m33288d(Object obj) {
            Message message;
            Draft draft;
            AbstractC5443k4 abstractC5443k4;
            AbstractC5851c abstractC5851c = (AbstractC5851c) obj;
            C5313g4 c5313g4 = (C5313g4) ((b) this).b;
            Objects.requireNonNull(c5313g4);
            if (abstractC5851c != null) {
                if (abstractC5851c instanceof AbstractC5851c.C5852a) {
                    draft = ((AbstractC5851c.C5852a) abstractC5851c).f19598b;
                    message = null;
                } else if (!(abstractC5851c instanceof AbstractC5851c.C5853b)) {
                    throw new s1.i();
                } else {
                    AbstractC5851c.C5853b c5853b = (AbstractC5851c.C5853b) abstractC5851c;
                    if (!c5853b.f19599a.isEmpty()) {
                        k kVar = (k) i.B(c5853b.f19599a);
                        draft = (Draft) kVar.a;
                        message = (Message) kVar.b;
                    }
                }
                AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) c5313g4.f57683a;
                if (abstractC5443k42 != null) {
                    abstractC5443k42.mo32404vk();
                }
                if (message == null) {
                    String str = draft.f13268c;
                    s1.z.c.l.d(str, "draft.text");
                    c5313g4.m33303lk(str, true);
                } else if (message.f13391l == 0 && draft.f13270e.length > 1 && (abstractC5443k4 = (AbstractC5443k4) c5313g4.f57683a) != null) {
                    abstractC5443k4.mo32353a(C2752R.string.ConversationGroupSmsSent);
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.ConversationInputPresenterImpl$showScheduledMessageTooltip$1", f = "ConversationInputPresenter.kt", l = {548}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.g4$j */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g4$j.class */
    public static final class C5323j extends s1.w.k.a.i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18249e;

        /* renamed from: g */
        public final /* synthetic */ boolean f18251g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5323j(boolean z, d dVar) {
            super(2, dVar);
            C5313g4.this = r5;
            this.f18251g = z;
        }

        /* renamed from: i */
        public final d<s> m33287i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C5323j(this.f18251g, dVar);
        }

        /* renamed from: k */
        public final Object m33286k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C5323j(this.f18251g, dVar).m33285s(s.a);
        }

        /* renamed from: s */
        public final Object m33285s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f18249e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (this.f18251g) {
                    this.f18249e = 1;
                    if (s1.a.a.a.v0.f.d.D0(2000L, this) == aVar) {
                        return aVar;
                    }
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C5313g4 c5313g4 = C5313g4.this;
            if (!c5313g4.f18205j && c5313g4.f18231w && !c5313g4.f18183N.mo31162P0()) {
                C5313g4 c5313g42 = C5313g4.this;
                if (c5313g42.f18198f != SendType.URGENT_MESSAGE) {
                    AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) c5313g42.f57683a;
                    if (abstractC5443k4 != null) {
                        abstractC5443k4.mo32560Bu(true);
                    }
                    C5313g4.this.f18183N.mo31124W3(true);
                }
            }
            return s.a;
        }
    }

    /* renamed from: e.a.a.c.g4$k */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g4$k.class */
    public static final class C5324k implements AbstractC11430l0 {

        /* renamed from: b */
        public final /* synthetic */ AbstractC5443k4 f18253b;

        public C5324k(AbstractC5443k4 abstractC5443k4) {
            C5313g4.this = r4;
            this.f18253b = abstractC5443k4;
        }

        @Override // p193e.p194a.p619d.p637c0.AbstractC11430l0
        /* renamed from: a */
        public void mo10471a(boolean z) {
            C5313g4.this.f18213n = Boolean.valueOf(z);
            this.f18253b.mo32397xz(C5313g4.this.m33346Vj());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5313g4(@Named("IsHiddenNumberIntent") boolean z, @Named("IsBubbleIntent") boolean z2, @Named("IsUrgentIntent") boolean z3, @Named("shouldOpenAttachmentPicker") boolean z4, @Named("UI") f fVar, AbstractC19870l abstractC19870l, a<AbstractC5276f4.AbstractC5277a> aVar, AbstractC6708t abstractC6708t, C7296a c7296a, AbstractC5776u5 abstractC5776u5, AbstractC5639g abstractC5639g, AbstractC6392i0 abstractC6392i0, AbstractC5484l5 abstractC5484l5, AbstractC8432l abstractC8432l, AbstractC19219a0 abstractC19219a0, AbstractC19230g abstractC19230g, AbstractC6394b abstractC6394b, AbstractC19854f<AbstractC19126x> abstractC19854f, AbstractC13497p abstractC13497p, AbstractC19108u0 abstractC19108u0, AbstractC20301p abstractC20301p, C20592g c20592g, AbstractC21631b abstractC21631b, a<AbstractC19854f<AbstractC6233m>> aVar2, AbstractC5854d abstractC5854d, AbstractC5527a abstractC5527a, AbstractC19494d abstractC19494d, AbstractC11476s1 abstractC11476s1, AbstractC19854f<AbstractC19091q0> abstractC19854f2, AbstractC5585n5 abstractC5585n5, AbstractC19022f0 abstractC19022f0, AudioManager audioManager, AbstractC19854f<AbstractC6523c0> abstractC19854f3, AbstractC5687r3 abstractC5687r3, AbstractC6601p0 abstractC6601p0, AbstractC12597c abstractC12597c, a<AbstractC5743t3> aVar3, AbstractC6573i1 abstractC6573i1, a<C5723s7> aVar4, AbstractC5483l4 abstractC5483l4, AbstractC5719s4 abstractC5719s4, AbstractC5342h8 abstractC5342h8) {
        super(fVar);
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(abstractC19870l, "actorsThreads");
        s1.z.c.l.e(aVar, "listener");
        s1.z.c.l.e(abstractC6708t, "transportManager");
        s1.z.c.l.e(c7296a, "multiSimHelper");
        s1.z.c.l.e(abstractC5776u5, "draftEntityPresenter");
        s1.z.c.l.e(abstractC5639g, "mentionPresenter");
        s1.z.c.l.e(abstractC6392i0, "messageSettings");
        s1.z.c.l.e(abstractC5484l5, "conversationResourceProvider");
        s1.z.c.l.e(abstractC8432l, "accountManager");
        s1.z.c.l.e(abstractC19219a0, "permissionUtil");
        s1.z.c.l.e(abstractC19230g, "deviceInfoUtil");
        s1.z.c.l.e(abstractC6394b, "messageUtil");
        s1.z.c.l.e(abstractC19854f, "contactsManager");
        s1.z.c.l.e(abstractC13497p, "multiSimManager");
        s1.z.c.l.e(abstractC19108u0, "mediaUtils");
        s1.z.c.l.e(abstractC20301p, "emojiRecentsManager");
        s1.z.c.l.e(c20592g, "featuresRegistry");
        s1.z.c.l.e(abstractC21631b, "flashManager");
        s1.z.c.l.e(aVar2, "messagesStorage");
        s1.z.c.l.e(abstractC5854d, "draftSender");
        s1.z.c.l.e(abstractC5527a, "emojiPokeHelper");
        s1.z.c.l.e(abstractC19494d, "firebaseAnalytics");
        s1.z.c.l.e(abstractC11476s1, "voipUtil");
        s1.z.c.l.e(abstractC19854f2, "mediaHelper");
        s1.z.c.l.e(abstractC5585n5, "conversationState");
        s1.z.c.l.e(abstractC19022f0, "deviceManager");
        s1.z.c.l.e(audioManager, "audioManager");
        s1.z.c.l.e(abstractC19854f3, "imReactionManager");
        s1.z.c.l.e(abstractC5687r3, "conversationAnalytics");
        s1.z.c.l.e(abstractC6601p0, "imTypingManager");
        s1.z.c.l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        s1.z.c.l.e(aVar3, "conversationBubbleInteractions");
        s1.z.c.l.e(abstractC6573i1, "imVersionManager");
        s1.z.c.l.e(aVar4, "quickActionsItemPresenter");
        s1.z.c.l.e(abstractC5483l4, "linkPreviewHelper");
        s1.z.c.l.e(abstractC5719s4, "messagesPresenter");
        s1.z.c.l.e(abstractC5342h8, "urgentMessageConversationHelper");
        this.f18235y = z;
        this.f18236z = z2;
        this.f18174A = z3;
        this.f18175B = z4;
        this.f18176C = fVar;
        this.f18177D = abstractC19870l;
        this.f18178E = aVar;
        this.f18179J = abstractC6708t;
        this.f18180K = c7296a;
        this.f18181L = abstractC5776u5;
        this.f18182M = abstractC5639g;
        this.f18183N = abstractC6392i0;
        this.f18184O = abstractC5484l5;
        this.f18185P = abstractC8432l;
        this.f18186Q = abstractC19219a0;
        this.f18187R = abstractC19230g;
        this.f18188S = abstractC6394b;
        this.f18189T = abstractC19854f;
        this.f18190U = abstractC13497p;
        this.f18191V = abstractC19108u0;
        this.f18192W = abstractC20301p;
        this.f18193X = c20592g;
        this.f18194Y = abstractC21631b;
        this.f18195Z = aVar2;
        this.f18200g0 = abstractC5854d;
        this.f18202h0 = abstractC5527a;
        this.f18204i0 = abstractC19494d;
        this.f18206j0 = abstractC11476s1;
        this.f18208k0 = abstractC19854f2;
        this.f18210l0 = abstractC5585n5;
        this.f18212m0 = abstractC19022f0;
        this.f18214n0 = audioManager;
        this.f18216o0 = abstractC19854f3;
        this.f18218p0 = abstractC5687r3;
        this.f18220q0 = abstractC6601p0;
        this.f18222r0 = abstractC12597c;
        this.f18224s0 = aVar3;
        this.f18226t0 = abstractC6573i1;
        this.f18228u0 = aVar4;
        this.f18230v0 = abstractC5483l4;
        this.f18232w0 = abstractC5719s4;
        this.f18234x0 = abstractC5342h8;
        this.f18198f = z3 ? SendType.URGENT_MESSAGE : SendType.DEFAULT;
        this.f18199g = new C6676e();
        this.f18221r = true;
        this.f18227u = z4;
    }

    /* renamed from: Xj */
    public static void m33340Xj(C5313g4 c5313g4, boolean z, boolean z2, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) c5313g4.f57683a;
        if (abstractC5443k4 != null) {
            if (abstractC5443k4.mo32451k("android.permission.READ_SMS") || abstractC5443k4.mo32451k("android.permission.SEND_SMS") || abstractC5443k4.mo32451k("android.permission.RECEIVE_SMS")) {
                abstractC5443k4.mo32431p5();
            } else if (z2) {
                abstractC5443k4.mo32427q0(210);
            } else if (z) {
                abstractC5443k4.mo32427q0(209);
            } else {
                abstractC5443k4.mo32233t0();
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: A6 */
    public void mo33396A6() {
        mo33381Ja();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Aj */
    public void mo33395Aj() {
        this.f18221r = true;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: B */
    public void mo33394B() {
        this.f18234x0.mo33193a();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: B2 */
    public void mo33393B2() {
        if (this.f18210l0.mo32869F()) {
            this.f18210l0.mo32866I(false);
            m33320fk(false);
            AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
            if (abstractC5443k4 == null) {
                return;
            }
            abstractC5443k4.mo32563B2();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e3, code lost:
        if (r8.f18199g.f22024c != 2) goto L39;
     */
    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: B9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33392B9(boolean r9) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5313g4.mo33392B9(boolean):void");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: C2 */
    public void mo33391C2(Message message) {
        TextEntity textEntity;
        List<? extends k<Draft, ? extends Collection<? extends BinaryEntity>>> m25999Y;
        s1.z.c.l.e(message, "message");
        this.f18229v = message;
        Draft draft = this.f18196d;
        Draft draft2 = null;
        if (draft != null) {
            Draft.C4194b m35061b = draft.m35061b();
            m35061b.m35052f();
            m35061b.m35054d();
            m35061b.m35053e();
            Entity[] entityArr = message.f13394o;
            s1.z.c.l.d(entityArr, "message.entities");
            ArrayList arrayList = new ArrayList();
            for (Entity entity : entityArr) {
                if (entity instanceof BinaryEntity) {
                    arrayList.add(entity);
                }
            }
            m35061b.m35057a(arrayList);
            Entity[] entityArr2 = message.f13394o;
            s1.z.c.l.d(entityArr2, "message.entities");
            int length = entityArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    textEntity = null;
                    break;
                }
                textEntity = entityArr2[i];
                if (textEntity instanceof TextEntity) {
                    break;
                }
                i++;
            }
            if (textEntity != null) {
                m35061b.f13288e = textEntity.f13465i;
            }
            draft2 = m35061b.m35055c();
            s1.z.c.l.d(draft2, "draft\n            .build… } }\n            .build()");
            AbstractC5854d abstractC5854d = this.f18200g0;
            m25999Y = C10480a.m25999Y(draft, null);
            String str = this.f18180K.f23291e;
            s1.z.c.l.d(str, "multiSimHelper.selectedSimToken");
            AbstractC5843b mo32322c = abstractC5854d.mo32322c(m25999Y, str, false, false, false);
            if (!(mo32322c instanceof AbstractC5843b.C5848e)) {
                if (mo32322c instanceof AbstractC5843b.C5847d) {
                    AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
                    draft2 = null;
                    if (abstractC5443k4 != null) {
                        abstractC5443k4.mo32485W(210, "conversation-nudgeSendAsSms");
                        draft2 = null;
                    }
                } else if (mo32322c instanceof AbstractC5843b.C5846c) {
                    m33340Xj(this, false, true, 1);
                    draft2 = null;
                } else {
                    draft2 = null;
                    if (mo32322c instanceof AbstractC5843b.C5844a) {
                        m33344Wj((AbstractC5843b.C5844a) mo32322c);
                        draft2 = null;
                    }
                }
            }
        }
        if (draft2 != null) {
            Message m35062a = draft2.m35062a(this.f18190U.mo21743b(), m33375Lj());
            s1.z.c.l.d(m35062a, "draft.buildMessage(multi…n, getAnalyticsContext())");
            this.f18179J.mo30560b(m35062a, draft2.f13270e, true, true).mo11830e(this.f18177D.mo11845d(), new C5319f(message));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: C4 */
    public void mo33390C4() {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32502Ri(null);
        }
        AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k42 != null) {
            abstractC5443k42.mo32551Ec();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: C6 */
    public void mo33389C6(boolean z, Uri uri) {
        if (!z || uri == null) {
            return;
        }
        if (!this.f18190U.mo21732y() && !mo33353Se()) {
            m33383Ij(uri);
            return;
        }
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 == null) {
            return;
        }
        abstractC5443k4.mo32433nw(uri);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: D2 */
    public void mo33388D2() {
        this.f18221r = true;
    }

    @Override // com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker.AbstractC4171c
    /* renamed from: D6 */
    public void mo33387D6() {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null && !m33333ak(206)) {
            abstractC5443k4.mo32464fA(this.f18183N.mo31006r());
        }
        ((C5718s3) this.f18218p0).m32769b("file");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Df */
    public void mo33386Df(String str, List<? extends Uri> list) {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32502Ri(str);
            if (list == null) {
                return;
            }
            List z = i.z(list);
            ArrayList arrayList = new ArrayList(C25225a.m4004J(z, 10));
            Iterator it = ((ArrayList) z).iterator();
            while (it.hasNext()) {
                arrayList.add(new DraftUri((Uri) it.next(), UriTypeHint.UNKNOWN, false));
            }
            this.f18225t = arrayList;
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: I2 */
    public void mo33385I2() {
        this.f18234x0.mo33194I2();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: I5 */
    public void mo33384I5() {
        Draft draft;
        Draft draft2 = this.f18196d;
        if (draft2 != null) {
            Draft.C4194b m35061b = draft2.m35061b();
            m35061b.m35053e();
            draft = m35061b.m35055c();
        } else {
            draft = null;
        }
        this.f18196d = draft;
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32570Ab(m33326ck(), true);
        }
        m33313ik();
    }

    /* renamed from: Ij */
    public final void m33383Ij(Uri uri) {
        this.f18189T.mo11854a().mo14078c(uri).mo11830e(this.f18177D.mo11845d(), new C5401j4(new C5314a(this)));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: J2 */
    public void mo33382J2(C6113f c6113f) {
        s1.z.c.l.e(c6113f, "stats");
        this.f18197e = c6113f;
        m33311jk();
    }

    @Override // com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker.AbstractC4171c
    /* renamed from: Ja */
    public void mo33381Ja() {
        FlashContact flashContact;
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32332J0();
        }
        Draft draft = this.f18196d;
        Participant[] participantArr = draft != null ? draft.f13270e : null;
        if (participantArr == null) {
            participantArr = new Participant[0];
        }
        ArrayList<FlashContact> arrayList = new ArrayList<>();
        for (Participant participant : participantArr) {
            String str = participant.f11572e;
            s1.z.c.l.d(str, "it.normalizedAddress");
            String t = r.t(str, "+", "", false, 4);
            if (this.f18194Y.mo9316b(t).f60563c) {
                s1.z.c.l.d(participant, "it");
                flashContact = new FlashContact(t, C6405h.m31301c(participant), null);
            } else {
                flashContact = null;
            }
            if (flashContact != null) {
                arrayList.add(flashContact);
            }
        }
        int size = arrayList.size();
        if (size != 0) {
            if (size != 1) {
                AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
                if (abstractC5443k42 != null) {
                    abstractC5443k42.mo32461gn(arrayList);
                }
            } else {
                FlashContact flashContact2 = arrayList.get(0);
                if (this.f18194Y.mo9327C(flashContact2.f11999a)) {
                    C21632c.m9330b().mo9308j("FlashTapped", C22128a.m8654X0("flashContext", "conversation"));
                }
                AbstractC5443k4 abstractC5443k43 = (AbstractC5443k4) this.f57683a;
                if (abstractC5443k43 != null) {
                    abstractC5443k43.mo32531K1(flashContact2);
                }
            }
        }
        ((C5718s3) this.f18218p0).m32769b("flash");
    }

    /* renamed from: Jj */
    public final void m33380Jj(int i, boolean z, boolean z2, String str) {
        String str2;
        Draft draft;
        Conversation conversation;
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            SendType sendType = this.f18198f;
            SendType sendType2 = SendType.values()[i];
            this.f18198f = sendType2;
            if (z && (draft = this.f18196d) != null && (conversation = draft.f13267b) != null) {
                long j = conversation.f13199a;
                if (sendType2 != SendType.URGENT_MESSAGE) {
                    int i2 = sendType2.ordinal() != 2 ? 0 : 2;
                    AbstractC6233m abstractC6233m = (AbstractC6233m) ((AbstractC19854f) this.f18195Z.get()).mo11854a();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("preferred_transport", Integer.valueOf(i2));
                    abstractC6233m.mo31669l(j, contentValues).mo11828g();
                }
            }
            m33303lk(m33369Nj(), false);
            m33308kk();
            SendType sendType3 = this.f18198f;
            if (sendType != sendType3 && z2) {
                int ordinal = sendType3.ordinal();
                if (ordinal == 1) {
                    abstractC5443k4.mo32353a(C2752R.string.ConversationSwitchedToSms);
                } else if (ordinal == 2) {
                    abstractC5443k4.mo32353a(C2752R.string.ConversationSwitchedToIm);
                } else if (ordinal == 3) {
                    abstractC5443k4.mo32353a(C2752R.string.ConversationSwitchedToUrgentMessage);
                }
                abstractC5443k4.mo32332J0();
            }
            this.f18181L.mo32597Jj(mo33353Se() ? 2 : 1);
            abstractC5443k4.mo32536In();
            m33315hk(this.f18198f.ordinal());
            this.f18230v0.mo32994f();
            AbstractC5687r3 abstractC5687r3 = this.f18218p0;
            SendType sendType4 = this.f18198f;
            C5718s3 c5718s3 = (C5718s3) abstractC5687r3;
            Objects.requireNonNull(c5718s3);
            s1.z.c.l.e(sendType4, "sendType");
            if (str == null) {
                return;
            }
            int ordinal2 = sendType4.ordinal();
            if (ordinal2 == 0) {
                str2 = "Unknown";
            } else if (ordinal2 == 1) {
                str2 = "SMS";
            } else if (ordinal2 == 2) {
                str2 = "IM";
            } else if (ordinal2 == 3) {
                str2 = "Urgent";
            } else if (ordinal2 != 4) {
                throw new s1.i();
            } else {
                str2 = "Scheduled";
            }
            c5718s3.f19171b.mo13217i(str2, "conversation", str);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: K2 */
    public void mo33379K2(long j) {
        Draft m33335Zj = m33335Zj();
        if (m33335Zj != null) {
            this.f18179J.mo30545q(this.f18210l0.mo32868G().getContext(), m33335Zj.m35062a(this.f18180K.f23291e, m33375Lj()), m33335Zj.f13270e, j, m33335Zj.f13266a, mo33353Se() ? 2 : 0).mo11830e(this.f18177D.mo11845d(), new C5321h());
        }
    }

    /* renamed from: Kj */
    public final void m33378Kj(boolean z) {
        AbstractC5443k4 abstractC5443k4;
        if (z && (abstractC5443k4 = (AbstractC5443k4) this.f57683a) != null) {
            abstractC5443k4.mo32502Ri(null);
        }
        AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k42 != null) {
            abstractC5443k42.mo32551Ec();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: L2 */
    public Draft mo33377L2() {
        Draft draft = this.f18196d;
        if (draft != null) {
            if (draft.m35060c() && draft.f13283r == 129) {
                return null;
            }
            AbstractC5687r3 abstractC5687r3 = this.f18218p0;
            SendType sendType = this.f18198f;
            C6676e c6676e = this.f18199g;
            String m33369Nj = m33369Nj();
            C5718s3 c5718s3 = (C5718s3) abstractC5687r3;
            Objects.requireNonNull(c5718s3);
            s1.z.c.l.e(sendType, "sendType");
            s1.z.c.l.e(c6676e, "messageLimits");
            s1.z.c.l.e(m33369Nj, "trimmedMessageText");
            if (!(m33369Nj.length() == 0)) {
                String str = m33369Nj.length() > 0 ? "Yes" : "No";
                String str2 = sendType == SendType.SMS || c6676e.f22024c != 2 ? "SMS" : "IM";
                AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
                C17697p3.C17699b m15852a = C17697p3.m15852a();
                m15852a.m15850b("DraftInfo");
                m15852a.m15848d(i.W(new k[]{new k("hasText", str), new k("transport", str2)}));
                C17697p3 build = m15852a.build();
                s1.z.c.l.d(build, "GenericAnalyticsEvent.ne…                ).build()");
                abstractC19510i0.mo13225a(build);
            }
            String m33369Nj2 = m33369Nj();
            Draft.C4194b m35061b = draft.m35061b();
            m35061b.f13288e = m33369Nj2;
            m35061b.m35054d();
            BinaryEntity entity = this.f18230v0.getEntity();
            List m3962T1 = entity != null ? C25225a.m3962T1(entity) : null;
            if (m3962T1 == null) {
                m3962T1 = s1.u.s.a;
            }
            m35061b.m35057a(m3962T1);
            m35061b.m35051g(this.f18182M.mo32829Ti());
            Draft m35055c = m35061b.m35055c();
            s1.z.c.l.d(m35055c, "draft.buildUpon()\n      …s())\n            .build()");
            if (m35055c.m35059d()) {
                boolean z = false;
                if (m35055c.f13266a != -1) {
                    z = true;
                }
                if (!z) {
                    return null;
                }
            }
            return m35055c;
        }
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Le */
    public void mo33376Le() {
        boolean m33347Uj = m33347Uj();
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32516O9(m33347Uj && m33361Pj());
        }
        m33302mk();
    }

    /* renamed from: Lj */
    public final String m33375Lj() {
        return this.f18174A ? "urgentBubble" : "conversation";
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: M2 */
    public void mo33374M2(String str) {
        s1.z.c.l.e(str, "voiceNotePath");
        ((C5718s3) this.f18218p0).m32765f("Finish");
        this.f18210l0.mo32866I(false);
        m33320fk(false);
        Draft draft = this.f18196d;
        if (draft != null) {
            Uri fromFile = Uri.fromFile(new File(str));
            s1.z.c.l.d(fromFile, "uri");
            this.f18208k0.mo11854a().mo14130d(fromFile, true).mo11829f(new C5315b(draft));
            m33378Kj(true);
            m33322ek();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: M9 */
    public void mo33373M9(String str, Message message, String str2) {
        s1.z.c.l.e(message, "message");
        s1.z.c.l.e(str2, "initiatedVia");
        this.f18216o0.mo11854a().mo30798h(message, str, str2);
        ((AbstractC5743t3) this.f18224s0.get()).mo32632o0();
    }

    /* renamed from: Mj */
    public final int m33372Mj() {
        return (this.f18198f == SendType.URGENT_MESSAGE || this.f18174A) ? 1 : 0;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Nb */
    public void mo33371Nb(String str) {
        s1.z.c.l.e(str, "reply");
        Draft draft = this.f18196d;
        if (draft != null) {
            Draft.C4194b m35061b = draft.m35061b();
            m35061b.f13288e = str;
            m35061b.m35054d();
            m35061b.f13298o = m33372Mj();
            Message m35062a = m35061b.m35055c().m35062a("-1", "conversation");
            s1.z.c.l.d(m35062a, "draft.buildUpon()\n      …icsContexts.CONVERSATION)");
            this.f18179J.mo30560b(m35062a, draft.f13270e, false, false).mo11828g();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Ng */
    public void mo33370Ng() {
        ((C5718s3) this.f18218p0).m32765f("Tooltip");
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32353a(C2752R.string.ConversationRecordTip);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
        if (r3 != null) goto L9;
     */
    /* renamed from: Nj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m33369Nj() {
        /*
            r2 = this;
            r0 = r2
            PV r0 = r0.f57683a
            e.a.a.c.k4 r0 = (p193e.p194a.p195a.p200c.AbstractC5443k4) r0
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L23
            r0 = r3
            java.lang.CharSequence r0 = r0.mo32525Lw()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L23
            r0 = r3
            java.lang.String r0 = r0.toString()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L23
            goto L27
        L23:
            java.lang.String r0 = ""
            r3 = r0
        L27:
            r0 = r3
            r4 = r0
            r0 = r2
            boolean r0 = r0.mo33353Se()
            if (r0 == 0) goto L46
            r0 = r3
            r4 = r0
            r0 = r2
            e.a.a.c.o8.g r0 = r0.f18182M
            boolean r0 = r0.mo32823gj()
            if (r0 != 0) goto L46
            r0 = r3
            java.lang.CharSequence r0 = s1.f0.v.g0(r0)
            java.lang.String r0 = r0.toString()
            r4 = r0
        L46:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5313g4.m33369Nj():java.lang.String");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: O2 */
    public boolean mo33368O2() {
        return C12864a2.m22540r(this.f18213n);
    }

    /* renamed from: Oj */
    public final boolean m33367Oj() {
        return m33369Nj().length() > 0;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: P2 */
    public void mo33366P2(C5405a c5405a) {
        s1.z.c.l.e(c5405a, "emoji");
        Draft draft = this.f18196d;
        if (draft != null) {
            Draft.C4194b m35061b = draft.m35061b();
            m35061b.f13288e = c5405a.f18491a;
            m35061b.m35054d();
            m35061b.f13298o = m33372Mj();
            Message m35062a = m35061b.m35055c().m35062a("-1", m33375Lj());
            s1.z.c.l.d(m35062a, "draft.buildUpon()\n      …N, getAnalyticsContext())");
            this.f18179J.mo30560b(m35062a, draft.f13270e, false, false).mo11828g();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: P5 */
    public void mo33365P5() {
        RecordView.RecordState recordState = this.f18215o;
        RecordView.RecordState recordState2 = RecordView.RecordState.RECORD;
        if (recordState == recordState2) {
            return;
        }
        this.f18215o = recordState2;
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 == null) {
            return;
        }
        abstractC5443k4.mo32436ng();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: P6 */
    public boolean mo33364P6() {
        return this.f18205j;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Pa */
    public s mo33363Pa(Switch r4) {
        s sVar;
        s sVar2 = s.a;
        s1.z.c.l.e(r4, "onSwitchClicked");
        int ordinal = r4.ordinal();
        if (ordinal == 1 || ordinal == 2) {
            AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
            if (abstractC5443k4 != null) {
                abstractC5443k4.mo32353a(C2752R.string.ConversationSwitchSmsDisabled);
                sVar = sVar2;
            }
            sVar = null;
        } else {
            AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
            if (abstractC5443k42 != null) {
                abstractC5443k42.mo32353a(C2752R.string.ConversationSwitchImDisabled);
                sVar = sVar2;
            }
            sVar = null;
        }
        return sVar;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Pg */
    public void mo33362Pg() {
        Participant[] participantArr;
        ((C5718s3) this.f18218p0).m32765f("Initiate");
        this.f18210l0.mo32866I(true);
        m33320fk(true);
        RecordView.RecordState recordState = this.f18215o;
        RecordView.RecordState recordState2 = RecordView.RecordState.RECORD;
        if (recordState == recordState2) {
            return;
        }
        this.f18215o = recordState2;
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32436ng();
        }
        Draft draft = this.f18196d;
        Participant participant = (draft == null || (participantArr = draft.f13270e) == null) ? null : (Participant) C25225a.m3845s0(participantArr);
        if (this.f18217p != null || participant == null) {
            return;
        }
        this.f18217p = this.f18220q0.mo30679d(participant, this.f18235y, InputUserTypingKind.VOICE_RECORDING);
    }

    /* renamed from: Pj */
    public final boolean m33361Pj() {
        return this.f18186Q.mo13825h("android.permission.RECORD_AUDIO");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Qa */
    public void mo33360Qa(boolean z) {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            if (!(z && !this.f18236z)) {
                return;
            }
            if (m33351Sj()) {
                abstractC5443k4.mo32526Ls();
            } else {
                abstractC5443k4.mo32541Hd();
            }
            m33303lk(m33369Nj(), false);
            this.f18230v0.mo32995d();
        }
    }

    /* renamed from: Qj */
    public final boolean m33359Qj() {
        boolean z = true;
        if (this.f18193X.m10998G().isEnabled()) {
            z = true;
            if (!this.f18210l0.mo32842y(8)) {
                z = true;
                if (!this.f18210l0.mo32842y(16)) {
                    z = true;
                    if (!this.f18210l0.mo32842y(128)) {
                        z = true;
                        if (!this.f18210l0.mo32842y(32)) {
                            z = this.f18210l0.mo32842y(64);
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: R3 */
    public void mo33358R3() {
        Long id = this.f18210l0.getId();
        if (id != null) {
            long longValue = id.longValue();
            AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
            if (abstractC5443k4 != null) {
                abstractC5443k4.mo32527Kz(longValue);
            }
            AbstractC19510i0 abstractC19510i0 = ((C5718s3) this.f18218p0).f19171b;
            C22128a.m8681O0("ViewScheduledMessages", new LinkedHashMap(), C22128a.m8655X("ViewScheduledMessages", "type"), "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19510i0);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: R4 */
    public void mo33357R4() {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            if (abstractC5443k4.mo32565Au() || abstractC5443k4.mo32566As()) {
                abstractC5443k4.mo32332J0();
                abstractC5443k4.mo32542H4();
                abstractC5443k4.mo32530K5(true);
            }
            m33311jk();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: R6 */
    public int mo33356R6() {
        return this.f18183N.mo31098b3();
    }

    /* renamed from: Rj */
    public final boolean m33355Rj(int i) {
        boolean z = true;
        if (!this.f18193X.m10998G().isEnabled() ? m33351Sj() : !this.f18210l0.mo32842y(i) || m33351Sj()) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Sa */
    public void mo33354Sa(AbstractC5276f4.AbstractC5278b abstractC5278b) {
        s1.z.c.l.e(abstractC5278b, "listener");
        this.f18223s = abstractC5278b;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Se */
    public boolean mo33353Se() {
        return this.f18185P.mo28580d() && this.f18199g.f22024c == 2 && this.f18198f != SendType.SMS;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Sf */
    public void mo33352Sf() {
        RecordView.RecordState recordState = this.f18215o;
        RecordView.RecordState recordState2 = RecordView.RecordState.DELETE;
        if (recordState == recordState2) {
            return;
        }
        this.f18215o = recordState2;
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 == null) {
            return;
        }
        abstractC5443k4.mo32550Eh();
    }

    /* renamed from: Sj */
    public final boolean m33351Sj() {
        Draft draft = this.f18196d;
        return draft == null || draft.f13282q != -1;
    }

    @Override // com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker.AbstractC4171c
    /* renamed from: T1 */
    public void mo33350T1() {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            C20592g c20592g = this.f18193X;
            abstractC5443k4.mo32424qe(c20592g.f58008q2.m10941a(c20592g, C20592g.f57695p6[172]).isEnabled());
        }
        ((C5718s3) this.f18218p0).m32769b("location");
        AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k42 != null) {
            abstractC5443k42.mo32332J0();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Tg */
    public void mo33349Tg() {
        m33303lk(m33369Nj(), true);
    }

    /* renamed from: Tj */
    public final boolean m33348Tj(String str, String[] strArr, int[] iArr) {
        ArrayList arrayList = (ArrayList) C25225a.m3827v3(strArr, i.f(iArr));
        boolean z = true;
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                k kVar = (k) it.next();
                if (s1.z.c.l.a((String) kVar.a, str) && ((Number) kVar.b).intValue() == 0) {
                    break;
                }
            }
        }
        z = false;
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0069  */
    /* renamed from: Uj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m33347Uj() {
        /*
            r2 = this;
            r0 = r2
            e.a.o5.f0 r0 = r0.f18212m0
            boolean r0 = r0.mo14243c()
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L3c
            r0 = r2
            android.media.AudioManager r0 = r0.f18214n0
            int r0 = r0.getMode()
            if (r0 != 0) goto L3c
            boolean r0 = com.truecaller.voip.legacy.incall.LegacyVoipService.f16356l
            if (r0 != 0) goto L2e
            boolean r0 = com.truecaller.voip.legacy.incoming.LegacyIncomingVoipService.f16365l
            if (r0 == 0) goto L29
            goto L2e
        L29:
            r0 = 0
            r5 = r0
            goto L30
        L2e:
            r0 = 1
            r5 = r0
        L30:
            r0 = r5
            if (r0 == 0) goto L37
            goto L3c
        L37:
            r0 = 0
            r5 = r0
            goto L3e
        L3c:
            r0 = 1
            r5 = r0
        L3e:
            r0 = r2
            boolean r0 = r0.mo33325d1()
            if (r0 == 0) goto L5d
            r0 = r2
            e.a.u3.g r0 = r0.f18193X
            e.a.u3.b r0 = r0.m10998G()
            boolean r0 = r0.isEnabled()
            if (r0 != 0) goto L57
            goto L5d
        L57:
            r0 = 0
            r6 = r0
            goto L60
        L5d:
            r0 = 1
            r6 = r0
        L60:
            r0 = r4
            r3 = r0
            r0 = r2
            boolean r0 = r0.m33367Oj()
            if (r0 != 0) goto L8a
            r0 = r4
            r3 = r0
            r0 = r2
            boolean r0 = r0.mo33353Se()
            if (r0 == 0) goto L8a
            r0 = r4
            r3 = r0
            r0 = r5
            if (r0 != 0) goto L8a
            r0 = r4
            r3 = r0
            r0 = r6
            if (r0 == 0) goto L8a
            r0 = r4
            r3 = r0
            r0 = r2
            boolean r0 = r0.m33351Sj()
            if (r0 != 0) goto L8a
            r0 = 1
            r3 = r0
        L8a:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5313g4.m33347Uj():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x018e  */
    /* renamed from: Vj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m33346Vj() {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5313g4.m33346Vj():boolean");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Wf */
    public void mo33345Wf() {
        boolean z;
        Conversation conversation;
        Conversation conversation2;
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            if (this.f18236z) {
                Draft draft = this.f18196d;
                if (draft == null || (conversation2 = draft.f13267b) == null) {
                    return;
                }
                long j = conversation2.f13199a;
                abstractC5443k4.mo32450k1();
                abstractC5443k4.mo32414u2(j);
            } else if (abstractC5443k4.mo32565Au()) {
                abstractC5443k4.mo32332J0();
                m33311jk();
                m33318gk();
            } else {
                C20592g c20592g = this.f18193X;
                C20592g.C20593a c20593a = c20592g.f58001p2;
                s1.a.l<?>[] lVarArr = C20592g.f57695p6;
                boolean z2 = c20593a.m10941a(c20592g, lVarArr[171]).isEnabled() && this.f18222r0.mo22840d(AbstractC12603e.C12604a.f36737c);
                if (!mo33353Se()) {
                    AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
                    if (abstractC5443k42 != null) {
                        abstractC5443k42.mo32542H4();
                    }
                    AbstractC5443k4 abstractC5443k43 = (AbstractC5443k4) this.f57683a;
                    if (abstractC5443k43 != null) {
                        abstractC5443k43.mo32397xz(false);
                    }
                    abstractC5443k4.mo32466eu(this.f18190U.mo21732y(), this.f18190U.mo21732y(), false, z2, false, true);
                } else if (m33359Qj()) {
                    AbstractC5443k4 abstractC5443k44 = (AbstractC5443k4) this.f57683a;
                    if (abstractC5443k44 != null) {
                        abstractC5443k44.mo32542H4();
                    }
                    AbstractC5443k4 abstractC5443k45 = (AbstractC5443k4) this.f57683a;
                    if (abstractC5443k45 != null) {
                        abstractC5443k45.mo32397xz(false);
                    }
                    Draft draft2 = this.f18196d;
                    if ((draft2 == null || (conversation = draft2.f13267b) == null) ? this.f18235y : conversation.f13188C) {
                        C20592g c20592g2 = this.f18193X;
                        if (!((AbstractC20597i) c20592g2.f57978m3.m10941a(c20592g2, lVarArr[221])).isEnabled()) {
                            z = false;
                            abstractC5443k4.mo32466eu(!m33355Rj(8) && z, !m33355Rj(16) && z, false, !z2 && m33355Rj(128), m33355Rj(32), m33355Rj(64));
                        }
                    }
                    z = true;
                    abstractC5443k4.mo32466eu(!m33355Rj(8) && z, !m33355Rj(16) && z, false, !z2 && m33355Rj(128), m33355Rj(32), m33355Rj(64));
                } else {
                    abstractC5443k4.mo32353a(C2752R.string.ConversationFileAttachFailed);
                }
                m33318gk();
                abstractC5443k4.mo32541Hd();
                m33303lk(m33369Nj(), false);
            }
        }
    }

    /* renamed from: Wj */
    public final void m33344Wj(AbstractC5843b.C5844a c5844a) {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32236L2(c5844a.f19587a);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: X2 */
    public void mo33343X2(GifEntity gifEntity) {
        s1.z.c.l.e(gifEntity, "entity");
        mo32625dc(DraftMode.GIF, s1.u.s.a, C25225a.m3962T1(gifEntity), null, false, -1L, 0);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Xd */
    public void mo33342Xd(Draft draft) {
        Conversation conversation;
        SendType sendType;
        if (draft == null || (conversation = draft.f13267b) == null || (sendType = this.f18198f) == SendType.URGENT_MESSAGE) {
            return;
        }
        int ordinal = sendType.ordinal();
        int i = 2;
        if (ordinal == 0) {
            i = 3;
        } else if (ordinal != 2) {
            i = ordinal != 4 ? 0 : 8;
        }
        if (conversation.f13219u == i) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("preferred_transport", Integer.valueOf(i));
        ((AbstractC6233m) ((AbstractC19854f) this.f18195Z.get()).mo11854a()).mo31669l(conversation.f13199a, contentValues).mo11828g();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Xi */
    public void mo33341Xi() {
        m33329bk(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.a.c.k4, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC5443k4 abstractC5443k4) {
        AbstractC5443k4 abstractC5443k42 = abstractC5443k4;
        s1.z.c.l.e(abstractC5443k42, "presenterView");
        this.f57683a = abstractC5443k42;
        this.f18181L.mo32598Ij(this);
        m33302mk();
        C7296a c7296a = this.f18180K;
        c7296a.f23291e = c7296a.f23287a.mo21743b();
        c7296a.m29823b();
        AbstractC7297b abstractC7297b = this.f18180K.f23290d;
        if (abstractC7297b != null) {
            abstractC7297b.mo29820vm(false);
        }
        abstractC5443k42.mo32522Mo(this.f18192W);
        C5532f mo32989b = this.f18202h0.mo32989b();
        this.f18207k = mo32989b;
        if (mo32989b == null) {
            s1.z.c.l.l("defaultPokeableEmoji");
            throw null;
        }
        abstractC5443k42.mo32548Es(mo32989b.f18712b);
        this.f18234x0.mo33192b(abstractC5443k42);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c7, code lost:
        if (r11 != false) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bc A[LOOP:0: B:14:0x003d->B:31:0x00bc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b6 A[SYNTHETIC] */
    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Yc */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo33339Yc() {
        /*
            r6 = this;
            r0 = r6
            e.a.a.i0 r0 = r0.f18183N
            boolean r0 = r0.mo31102b()
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto Lcd
            r0 = r6
            boolean r0 = r0.f18211m
            if (r0 != 0) goto Lcd
            r0 = r6
            com.truecaller.messaging.data.types.Draft r0 = r0.f18196d
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L28
            r0 = r9
            com.truecaller.data.entity.messaging.Participant[] r0 = r0.f13270e
            r9 = r0
            goto L2a
        L28:
            r0 = 0
            r9 = r0
        L2a:
            r0 = r9
            if (r0 == 0) goto L31
            goto L36
        L31:
            r0 = 0
            com.truecaller.data.entity.messaging.Participant[] r0 = new com.truecaller.data.entity.messaging.Participant[r0]
            r9 = r0
        L36:
            r0 = r9
            int r0 = r0.length
            r10 = r0
            r0 = 0
            r11 = r0
        L3d:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto Lc2
            r0 = r9
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            int r0 = r0.f11569b
            if (r0 != 0) goto Lae
            r0 = r12
            java.lang.String r0 = r0.f11572e
            r12 = r0
            r0 = r12
            java.lang.String r1 = "participant.normalizedAddress"
            s1.z.c.l.d(r0, r1)
            r0 = r12
            java.lang.String r1 = "+"
            java.lang.String r2 = ""
            r3 = 0
            r4 = 4
            java.lang.String r0 = s1.f0.r.t(r0, r1, r2, r3, r4)
            java.lang.Long r0 = s1.f0.q.j(r0)
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L9d
            r0 = r12
            long r0 = r0.longValue()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L9d
            r0 = r6
            e.a.y.c.b r0 = r0.f18194Y
            r1 = r12
            e.a.y.g.d r0 = r0.mo9316b(r1)
            boolean r0 = r0.f60563c
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r12 = r0
            goto La0
        L9d:
            r0 = 0
            r12 = r0
        La0:
            r0 = r12
            boolean r0 = p193e.p194a.p682e.C12864a2.m22540r(r0)
            if (r0 == 0) goto Lae
            r0 = 1
            r13 = r0
            goto Lb1
        Lae:
            r0 = 0
            r13 = r0
        Lb1:
            r0 = r13
            if (r0 == 0) goto Lbc
            r0 = 1
            r11 = r0
            goto Lc5
        Lbc:
            int r11 = r11 + 1
            goto L3d
        Lc2:
            r0 = 0
            r11 = r0
        Lc5:
            r0 = r11
            if (r0 == 0) goto Lcd
            goto Lcf
        Lcd:
            r0 = 0
            r8 = r0
        Lcf:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5313g4.mo33339Yc():boolean");
    }

    @Override // com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker.AbstractC4171c
    /* renamed from: Yd */
    public void mo33338Yd() {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32426q1();
        }
        ((C5718s3) this.f18218p0).m32769b(AnalyticsConstants.CONTACT);
    }

    /* renamed from: Yj */
    public void m33337Yj(int i, String str) {
        AbstractC5443k4 abstractC5443k4;
        s1.z.c.l.e(str, "uiControl");
        AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k42 != null) {
            abstractC5443k42.mo32472b2();
        }
        m33380Jj(i, true, true, str);
        m33302mk();
        if (SendType.values()[i] == SendType.SMS) {
            Draft draft = this.f18196d;
            if (!(draft != null ? draft.m35058e() : false) || (abstractC5443k4 = (AbstractC5443k4) this.f57683a) == null) {
                return;
            }
            abstractC5443k4.mo32551Ec();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: Zb */
    public void mo33336Zb() {
        ((C5718s3) this.f18218p0).m32765f("Cancel");
        this.f18210l0.mo32866I(false);
        m33320fk(false);
        m33322ek();
    }

    /* renamed from: Zj */
    public final Draft m33335Zj() {
        List<? extends k<Draft, ? extends Collection<? extends BinaryEntity>>> m25999Y;
        boolean z = this.f18198f == SendType.SMS || this.f18199g.f22024c != 2;
        String m33369Nj = m33369Nj();
        Draft draft = this.f18196d;
        if (draft != null) {
            Draft.C4194b m35061b = draft.m35061b();
            m35061b.f13288e = m33369Nj;
            m35061b.m35051g(this.f18182M.mo32829Ti());
            m35061b.f13289f = (m33369Nj.length() > 0) && !z;
            Draft m35055c = m35061b.m35055c();
            AbstractC5854d abstractC5854d = this.f18200g0;
            m25999Y = C10480a.m25999Y(m35055c, null);
            String str = this.f18180K.f23291e;
            s1.z.c.l.d(str, "multiSimHelper.selectedSimToken");
            AbstractC5843b mo32322c = abstractC5854d.mo32322c(m25999Y, str, !z, false, false);
            if (mo32322c instanceof AbstractC5843b.C5848e) {
                return m35055c;
            }
            if (mo32322c instanceof AbstractC5843b.C5847d) {
                AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
                if (abstractC5443k4 == null) {
                    return null;
                }
                abstractC5443k4.mo32485W(209, "conversation-sendSms");
                return null;
            } else if (mo32322c instanceof AbstractC5843b.C5846c) {
                m33340Xj(this, true, false, 2);
                return null;
            } else if (mo32322c instanceof AbstractC5843b.C5844a) {
                m33344Wj((AbstractC5843b.C5844a) mo32322c);
                return null;
            } else if (mo32322c instanceof AbstractC5843b.C5849f) {
                AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
                if (abstractC5443k42 == null) {
                    return null;
                }
                abstractC5443k42.mo32551Ec();
                return null;
            } else {
                AbstractC5443k4 abstractC5443k43 = (AbstractC5443k4) this.f57683a;
                if (abstractC5443k43 == null) {
                    return null;
                }
                abstractC5443k43.mo32353a(C2752R.string.ConversationSwitchSmsDisabled);
                return null;
            }
        }
        return null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: a4 */
    public void mo33334a4(Uri uri) {
        s1.z.c.l.e(uri, "uri");
        mo32625dc(DraftMode.VCARD, C25225a.m3962T1(new DraftUri(uri, UriTypeHint.VCARD, false)), s1.u.s.a, null, false, -1L, 0);
    }

    /* renamed from: ak */
    public final boolean m33333ak(int i) {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            if (this.f18186Q.mo13823j() && this.f18186Q.mo13830c()) {
                return false;
            }
            if (abstractC5443k4.mo32451k("android.permission.READ_EXTERNAL_STORAGE") || abstractC5443k4.mo32451k("android.permission.WRITE_EXTERNAL_STORAGE")) {
                abstractC5443k4.mo32501S3();
                return true;
            }
            abstractC5443k4.mo32449k4(i);
            return true;
        }
        return false;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: b1 */
    public void mo33332b1(Uri uri, String str, Runnable runnable) {
        s1.z.c.l.e(uri, "inputContentInfo");
        s1.z.c.l.e(runnable, "releaseCallback");
        long mo14088d = this.f18191V.mo14088d(2);
        if (str != null) {
            s1.z.c.l.e(str, "contentType");
            boolean z = true;
            if (!r.n("tenor/gif", str, true)) {
                z = r.n(ContentFormat.IMAGE_GIF, str, true);
            }
            if (z) {
                AbstractC19510i0 abstractC19510i0 = ((C5718s3) this.f18218p0).f19171b;
                LinkedHashMap m8655X = C22128a.m8655X("ImGifSelect", "type");
                C22128a.m8681O0("ImGifSelect", C22128a.m8652Y("source", AnalyticsConstants.NAME, "3rdParty", "value", m8655X, "source", "3rdParty"), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19510i0);
            }
        }
        this.f18208k0.mo11854a().mo14127g(C25225a.m3962T1(new C4907a0(uri, str, null, null, null, null, null, null, null, null, null, null, 4092)), mo14088d).mo11830e(this.f18177D.mo11845d(), new C5316c(runnable));
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: b7 */
    public void mo33331b7(long j, long j2, int i) {
        this.f18179J.mo30537z(this.f18210l0.mo32868G().getContext(), j, j2, i).mo11828g();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: b8 */
    public void mo33330b8() {
        Draft draft;
        Draft draft2 = this.f18196d;
        if (draft2 == null || !draft2.m35060c()) {
            return;
        }
        Draft draft3 = this.f18196d;
        if (draft3 != null) {
            Draft.C4194b m35061b = draft3.m35061b();
            m35061b.f13299p = -1L;
            m35061b.f13300q = 3;
            m35061b.f13296m = 3;
            draft = m35061b.m35055c();
        } else {
            draft = null;
        }
        this.f18196d = draft;
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        mo33360Qa(abstractC5443k4 != null ? abstractC5443k4.mo32549El() : false);
        ((AbstractC5276f4.AbstractC5277a) this.f18178E.get()).mo33446Ph(this.f18196d);
    }

    /* renamed from: bk */
    public final void m33329bk(boolean z) {
        AbstractC5443k4 abstractC5443k4;
        Draft draft;
        Draft draft2 = this.f18196d;
        if (draft2 == null || (abstractC5443k4 = (AbstractC5443k4) this.f57683a) == null) {
            return;
        }
        boolean z2 = this.f18198f == SendType.SMS || this.f18199g.f22024c != 2;
        if (m33367Oj()) {
            Draft.C4194b m35061b = draft2.m35061b();
            m35061b.f13288e = m33369Nj();
            m35061b.f13289f = !z2;
            m35061b.m35051g(this.f18182M.mo32829Ti());
            m35061b.f13298o = m33372Mj();
            draft = m35061b.m35055c();
            s1.z.c.l.d(draft, "draft.buildUpon()\n      …\n                .build()");
        } else {
            Draft.C4194b m35061b2 = draft2.m35061b();
            m35061b2.m35052f();
            m35061b2.f13298o = m33372Mj();
            draft = m35061b2.m35055c();
            s1.z.c.l.d(draft, "draft.buildUpon()\n      …\n                .build()");
        }
        AbstractC5854d abstractC5854d = this.f18200g0;
        BinaryEntity entity = this.f18230v0.getEntity();
        List m3962T1 = entity != null ? C25225a.m3962T1(entity) : null;
        if (m3962T1 == null) {
            m3962T1 = s1.u.s.a;
        }
        List<k<Draft, Collection<BinaryEntity>>> m25999Y = C10480a.m25999Y(draft, m3962T1);
        String str = this.f18180K.f23291e;
        s1.z.c.l.d(str, "multiSimHelper.selectedSimToken");
        AbstractC5843b mo32322c = abstractC5854d.mo32322c(m25999Y, str, !z2, this.f18201h, this.f18183N.mo31092c3());
        this.f18230v0.m33058a();
        if (mo32322c instanceof AbstractC5843b.C5847d) {
            abstractC5443k4.mo32234j2("conversation-sendSms");
        } else if (mo32322c instanceof AbstractC5843b.C5846c) {
            m33340Xj(this, false, false, 3);
        } else if (mo32322c instanceof AbstractC5843b.C5844a) {
            m33344Wj((AbstractC5843b.C5844a) mo32322c);
        } else if (mo32322c instanceof AbstractC5843b.C5850g) {
            abstractC5443k4.mo32568Ae();
        } else if (mo32322c instanceof AbstractC5843b.C5845b) {
            abstractC5443k4.mo32453j1();
        } else if (mo32322c instanceof AbstractC5843b.C5849f) {
            abstractC5443k4.mo32551Ec();
        }
        if (!(mo32322c instanceof AbstractC5843b.C5848e)) {
            return;
        }
        boolean z3 = false;
        if (z2) {
            Participant[] participantArr = draft.f13270e;
            s1.z.c.l.d(participantArr, "draft.participants");
            z3 = false;
            if (!C6405h.m31299e(participantArr)) {
                z3 = true;
            }
        }
        if (z3 && z) {
            abstractC5443k4.mo32394zm();
            this.f18183N.mo31113Z(true);
            return;
        }
        m33378Kj(true);
        m33303lk("", true);
        this.f18182M.mo32832E6();
        mo33330b8();
        C10480a.m25868y2(this.f18200g0, (AbstractC5843b.C5848e) mo32322c, true, draft.m35058e() ? "reply" : m33375Lj(), 0L, 8, null).mo11830e(this.f18177D.mo11845d(), new C5401j4(new C5322i(this)));
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32329h1();
        }
        this.f18181L.mo32596Kj();
        this.f18230v0.m33057c();
        this.f18234x0.mo33191c();
        m33322ek();
        super.mo9806c();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: c0 */
    public void mo33328c0() {
        ((AbstractC5276f4.AbstractC5277a) this.f18178E.get()).mo33445c0();
    }

    @Override // com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker.AbstractC4171c
    /* renamed from: c9 */
    public void mo33327c9() {
        AbstractC5443k4 abstractC5443k4;
        if (((AbstractC5443k4) this.f57683a) == null || m33333ak(208) || (abstractC5443k4 = (AbstractC5443k4) this.f57683a) == null) {
            return;
        }
        abstractC5443k4.mo32481Y2();
    }

    /* renamed from: ck */
    public final boolean m33326ck() {
        Draft draft = this.f18196d;
        boolean z = false;
        if (draft != null) {
            z = false;
            if (!m33367Oj()) {
                z = false;
                if (draft.m35059d()) {
                    z = false;
                    if (!draft.m35058e()) {
                        z = false;
                        if (mo33353Se()) {
                            z = false;
                            if (!mo33325d1()) {
                                z = false;
                                if (!m33351Sj()) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: d1 */
    public boolean mo33325d1() {
        return this.f18210l0.mo32861d1() && this.f18193X.m10998G().isEnabled();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5776u5.AbstractC5777a
    /* renamed from: dc */
    public void mo32625dc(DraftMode draftMode, List<DraftUri> list, List<? extends BinaryEntity> list2, String str, boolean z, long j, int i) {
        CharSequence mo32525Lw;
        s1.z.c.l.e(draftMode, AnalyticsConstants.MODE);
        s1.z.c.l.e(list, "attachmentUris");
        s1.z.c.l.e(list2, "entities");
        Draft draft = this.f18196d;
        if (draft != null) {
            Draft.C4194b m35061b = draft.m35061b();
            if (str == null) {
                AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
                str = (abstractC5443k4 == null || (mo32525Lw = abstractC5443k4.mo32525Lw()) == null) ? null : mo32525Lw.toString();
            }
            if (str == null) {
                str = "";
            }
            m35061b.f13288e = str;
            m35061b.m35054d();
            m35061b.m35057a(list2);
            m35061b.m35051g(this.f18182M.mo32829Ti());
            m35061b.f13298o = m33372Mj();
            m35061b.f13299p = j;
            m35061b.f13300q = i;
            Draft m35055c = m35061b.m35055c();
            s1.z.c.l.d(m35055c, "draft?.buildUpon()\n     …d()\n            ?: return");
            mo33390C4();
            this.f18230v0.m33058a();
            AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
            if (abstractC5443k42 != null) {
                abstractC5443k42.mo32332J0();
            }
            AbstractC5443k4 abstractC5443k43 = (AbstractC5443k4) this.f57683a;
            if (abstractC5443k43 == null) {
                return;
            }
            List d0 = i.d0(new Draft[]{m35055c});
            boolean mo33353Se = mo33353Se();
            String str2 = this.f18180K.f23291e;
            s1.z.c.l.d(str2, "multiSimHelper.selectedSimToken");
            abstractC5443k43.mo32505R4(new DraftArguments(draftMode, d0, list, mo33353Se, str2, z));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: df */
    public boolean mo33324df() {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            if (!abstractC5443k4.mo32406vf()) {
                return abstractC5443k4.mo32542H4();
            }
            abstractC5443k4.mo32472b2();
            return true;
        }
        return false;
    }

    /* renamed from: dk */
    public final void m33323dk(boolean z) {
        if (this.f18183N.mo31162P0()) {
            return;
        }
        if (z) {
            p1 p1Var = this.f18233x;
            if (C12864a2.m22540r(p1Var != null ? Boolean.valueOf(p1Var.b()) : null)) {
                return;
            }
        }
        this.f18233x = s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5323j(z, null), 3, (Object) null);
    }

    /* renamed from: ek */
    public final void m33322ek() {
        C6651y1 c6651y1 = this.f18217p;
        if (c6651y1 != null) {
            this.f18220q0.mo30680c(c6651y1);
        }
        this.f18217p = null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: f6 */
    public boolean mo33321f6() {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        boolean z = false;
        if (abstractC5443k4 != null) {
            z = false;
            if (!this.f18210l0.mo32869F()) {
                z = false;
                if (!this.f18211m) {
                    Draft draft = this.f18196d;
                    z = false;
                    if (!(draft != null ? draft.m35058e() : false)) {
                        z = false;
                        if (!m33367Oj()) {
                            z = false;
                            if (!abstractC5443k4.mo32565Au()) {
                                z = false;
                                if (!this.f18219q) {
                                    z = false;
                                    if (!this.f18210l0.mo32873B()) {
                                        z = false;
                                        if (this.f18210l0.mo32868G() != ConversationMode.SCHEDULE) {
                                            z = false;
                                            if (!this.f18210l0.mo32861d1()) {
                                                z = false;
                                                if (!this.f18236z) {
                                                    z = false;
                                                    if (!this.f18174A) {
                                                        z = true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: fk */
    public final void m33320fk(boolean z) {
        m33311jk();
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32425q7(!z);
        }
        AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k42 != null) {
            abstractC5443k42.mo32488V7(z);
        }
        AbstractC5443k4 abstractC5443k43 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k43 != null) {
            abstractC5443k43.mo32482Xt(!z);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: gf */
    public void mo33319gf(boolean z) {
        if (!z || !this.f18187R.mo13794c()) {
            return;
        }
        m33329bk(false);
    }

    /* renamed from: gk */
    public final void m33318gk() {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32430pb(!((this.f18219q || abstractC5443k4.mo32565Au() || abstractC5443k4.mo32566As()) && abstractC5443k4.mo32553Dr()));
        }
    }

    @Override // com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker.AbstractC4171c
    /* renamed from: h4 */
    public boolean mo33317h4() {
        return this.f18186Q.mo13823j() && this.f18186Q.mo13830c();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: hb */
    public void mo33316hb() {
        this.f18201h = true;
        m33329bk(true ^ this.f18183N.mo31209F3());
    }

    /* renamed from: hk */
    public void m33315hk(int i) {
        int ordinal = SendType.values()[i].ordinal();
        Switch r5 = ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? mo33353Se() ? Switch.CHAT : Switch.SMS : Switch.URGENT_MESSAGE : Switch.CHAT : Switch.SMS;
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32517Ni(r5);
        }
        if (this.f18210l0.mo32868G() == ConversationMode.SCHEDULE) {
            AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
            if (abstractC5443k42 != null) {
                abstractC5443k42.mo32510Pt();
            }
            AbstractC5443k4 abstractC5443k43 = (AbstractC5443k4) this.f57683a;
            if (abstractC5443k43 != null) {
                abstractC5443k43.mo32504R8();
            }
        }
        AbstractC5443k4 abstractC5443k44 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k44 != null) {
            abstractC5443k44.mo32562B9(mo33353Se());
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: i */
    public void mo33314i(Message message, String str) {
        s1.z.c.l.e(message, "message");
        s1.z.c.l.e(str, "action");
        Draft draft = this.f18196d;
        if (draft != null) {
            Draft.C4194b m35061b = draft.m35061b();
            m35061b.m35052f();
            m35061b.m35054d();
            m35061b.f13288e = str;
            m35061b.f13292i = message.f13380a;
            m35061b.f13293j = new ReplySnippet(message);
            m35061b.f13298o = 0;
            Message m35062a = m35061b.m35055c().m35062a("-1", "customReply");
            s1.z.c.l.d(m35062a, "draft.buildUpon()\n      …icsContexts.CUSTOM_REPLY)");
            this.f18179J.mo30560b(m35062a, draft.f13270e, false, false).mo11830e(this.f18177D.mo11845d(), new C5320g(message));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004f, code lost:
        if (r3.f18210l0.mo32850q() == 1) goto L19;
     */
    /* renamed from: ik */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33313ik() {
        /*
            r3 = this;
            r0 = r3
            com.truecaller.messaging.conversation.SendType r0 = r0.f18198f
            r4 = r0
            com.truecaller.messaging.conversation.SendType r0 = com.truecaller.messaging.conversation.SendType.URGENT_MESSAGE
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r4
            r1 = r5
            if (r0 == r1) goto L55
            r0 = r3
            boolean r0 = r0.m33347Uj()
            if (r0 == 0) goto L1a
            goto L55
        L1a:
            r0 = r3
            com.truecaller.messaging.data.types.Draft r0 = r0.f18196d
            if (r0 != 0) goto L24
            goto L55
        L24:
            r0 = r3
            boolean r0 = r0.m33351Sj()
            if (r0 == 0) goto L2e
            goto L55
        L2e:
            r0 = r3
            com.truecaller.messaging.data.types.Draft r0 = r0.f18196d
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L3f
            r0 = r4
            com.truecaller.messaging.data.types.ReplySnippet r0 = r0.f13278m
            r4 = r0
            goto L41
        L3f:
            r0 = 0
            r4 = r0
        L41:
            r0 = r4
            if (r0 != 0) goto L55
            r0 = r3
            e.a.a.c.n5 r0 = r0.f18210l0
            int r0 = r0.mo32850q()
            r1 = 1
            if (r0 != r1) goto L55
            goto L57
        L55:
            r0 = 0
            r6 = r0
        L57:
            r0 = r3
            PV r0 = r0.f57683a
            e.a.a.c.k4 r0 = (p193e.p194a.p195a.p200c.AbstractC5443k4) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L6a
            r0 = r4
            r1 = r6
            r0.mo32421rd(r1)
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5313g4.m33313ik():void");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: j4 */
    public void mo33312j4(DraftMode draftMode, boolean z, List<? extends Uri> list) {
        s1.z.c.l.e(draftMode, AnalyticsConstants.MODE);
        s1.z.c.l.e(list, "uriList");
        List z2 = i.z(list);
        if (z) {
            ArrayList arrayList = (ArrayList) z2;
            if (arrayList.isEmpty()) {
                return;
            }
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(z2, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(new DraftUri((Uri) it.next(), UriTypeHint.UNKNOWN, false));
            }
            mo32625dc(draftMode, arrayList2, s1.u.s.a, null, false, -1L, 0);
        }
    }

    /* renamed from: jk */
    public void m33311jk() {
        Boolean bool;
        Participant[] participantArr;
        Participant participant;
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            C6113f mo32849r = this.f18210l0.mo32849r();
            abstractC5443k4.mo32529Kq((mo32849r != null ? mo32849r.f20302a : 0) > 0 && !m33367Oj() && !m33351Sj());
            if (!mo33321f6()) {
                abstractC5443k4.mo32397xz(false);
                return;
            }
            if (this.f18213n != null || this.f18211m) {
                abstractC5443k4.mo32397xz(m33346Vj());
            } else {
                Draft draft = this.f18196d;
                if (draft != null && (participantArr = draft.f13270e) != null && (participant = (Participant) C25225a.m3830v0(participantArr)) != null) {
                    this.f18206j0.mo24615i(participant, new C5324k(abstractC5443k4));
                }
            }
            C6113f c6113f = this.f18197e;
            if (c6113f != null) {
                boolean z = false;
                if (c6113f.f20303b > 0) {
                    z = true;
                }
                bool = Boolean.valueOf(z);
            } else {
                bool = null;
            }
            abstractC5443k4.mo32497T7(C12864a2.m22540r(bool));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0085, code lost:
        if (p193e.p194a.p437c.p578p.C10480a.m25989a1(r0) == false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0093  */
    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33310k(java.lang.CharSequence r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5313g4.mo33310k(java.lang.CharSequence, boolean):void");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: kh */
    public void mo33309kh(boolean z) {
        this.f18219q = z;
        m33311jk();
        m33318gk();
        this.f18232w0.mo32682r4();
    }

    /* renamed from: kk */
    public final void m33308kk() {
        Participant[] participantArr;
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            if (!mo33353Se()) {
                Draft draft = this.f18196d;
                abstractC5443k4.mo32396yt(((draft == null || (participantArr = draft.f13270e) == null) ? 0 : participantArr.length) > 1 ? 2131886591 : 2131886590);
            } else if (this.f18198f == SendType.URGENT_MESSAGE) {
                abstractC5443k4.mo32396yt(C2752R.string.ConversationSendUrgentMessageHint);
            } else {
                abstractC5443k4.mo32396yt(C2752R.string.ConversationMessageIMHint);
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: l */
    public void mo33307l() {
        this.f18230v0.m33054l();
    }

    @Override // com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker.AbstractC4171c
    /* renamed from: l4 */
    public void mo33306l4() {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null && !m33333ak(204)) {
            abstractC5443k4.mo32518N0();
        }
        ((C5718s3) this.f18218p0).m32769b("gallery");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: le */
    public void mo33305le() {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32488V7(false);
        }
        m33322ek();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: lh */
    public void mo33304lh() {
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            SendType sendType = SendType.SCHEDULE_MESSAGE;
            abstractC5443k4.mo32564Az(C25225a.m3962T1(new C6060f0(4, this.f18184O.mo31456r(), this.f18184O.mo31457d(), this.f18184O.mo31459H(0), C2752R.string.schedule_message)));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0178, code lost:
        if ((!((r0 == null || (r0 = r0.f13267b) == null) ? r7.f18235y : r0.f13188C) && (r0 == null || (r0 = r0.f13270e) == null || (r0 = (com.truecaller.data.entity.messaging.Participant) p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3830v0(r0)) == null || r0.f11569b != 3)) == false) goto L61;
     */
    /* renamed from: lk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33303lk(java.lang.CharSequence r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 527
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5313g4.m33303lk(java.lang.CharSequence, boolean):void");
    }

    /* renamed from: mk */
    public final void m33302mk() {
        int i;
        this.f18231w = false;
        if (m33347Uj()) {
            i = 2131232582;
        } else if (m33351Sj()) {
            i = 2131232406;
        } else {
            this.f18231w = true;
            i = this.f18184O.mo31460B(this.f18199g.f22024c);
        }
        if (this.f18231w) {
            m33323dk(true);
        } else {
            AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
            if (abstractC5443k4 != null) {
                abstractC5443k4.mo32560Bu(false);
            }
        }
        AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k42 != null) {
            abstractC5443k42.mo32470bw(i, this.f18184O.mo31459H(this.f18199g.f22024c));
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    public void onActivityResult(int i, int i2, Intent intent) {
        Message message;
        if (i2 != -1) {
            return;
        }
        if (i != 209) {
            if (i != 210 || (message = this.f18229v) == null) {
                return;
            }
            mo33391C2(message);
            return;
        }
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 == null) {
            return;
        }
        abstractC5443k4.mo32402w4();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        AbstractC5443k4 abstractC5443k4;
        AbstractC5443k4 abstractC5443k42;
        AbstractC5443k4 abstractC5443k43;
        AbstractC5443k4 abstractC5443k44;
        AbstractC5443k4 abstractC5443k45;
        Message message;
        s1.z.c.l.e(strArr, "permissions");
        s1.z.c.l.e(iArr, "grantResults");
        if (i == 200) {
            if (!m33348Tj("android.permission.READ_SMS", strArr, iArr)) {
                return;
            }
            m33329bk(!this.f18183N.mo31209F3());
        } else if (i == 204) {
            if (!m33348Tj("android.permission.READ_EXTERNAL_STORAGE", strArr, iArr) || (abstractC5443k4 = (AbstractC5443k4) this.f57683a) == null) {
                return;
            }
            abstractC5443k4.mo32518N0();
        } else {
            switch (i) {
                case 206:
                    if (!m33348Tj("android.permission.READ_EXTERNAL_STORAGE", strArr, iArr) || (abstractC5443k42 = (AbstractC5443k4) this.f57683a) == null) {
                        return;
                    }
                    abstractC5443k42.mo32464fA(this.f18183N.mo31006r());
                    return;
                case 207:
                    if (!m33361Pj() || (abstractC5443k43 = (AbstractC5443k4) this.f57683a) == null) {
                        return;
                    }
                    abstractC5443k43.mo32516O9(m33347Uj());
                    return;
                case 208:
                    if (!m33348Tj("android.permission.READ_EXTERNAL_STORAGE", strArr, iArr) || (abstractC5443k44 = (AbstractC5443k4) this.f57683a) == null) {
                        return;
                    }
                    abstractC5443k44.mo32481Y2();
                    return;
                case 209:
                    if (!m33348Tj("android.permission.READ_SMS", strArr, iArr) || (abstractC5443k45 = (AbstractC5443k4) this.f57683a) == null) {
                        return;
                    }
                    abstractC5443k45.mo32402w4();
                    return;
                case 210:
                    if (!m33348Tj("android.permission.READ_SMS", strArr, iArr) || (message = this.f18229v) == null) {
                        return;
                    }
                    mo33391C2(message);
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x02ac, code lost:
        if ((r0 != null && r0.f13283r == 129) == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b8, code lost:
        if (r13 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0145, code lost:
        if (r13 != null) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x041e  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0264 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x026a A[LOOP:0: B:66:0x01c7->B:93:0x026a, LOOP_END] */
    /* JADX WARN: Type inference failed for: r0v261, types: [long] */
    /* JADX WARN: Type inference failed for: r0v263, types: [long] */
    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo33301p(com.truecaller.messaging.data.types.Draft r11) {
        /*
            Method dump skipped, instructions count: 1287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5313g4.mo33301p(com.truecaller.messaging.data.types.Draft):void");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: t */
    public void mo33300t() {
        this.f18183N.mo31134U3(true);
        m33329bk(!this.f18183N.mo31209F3());
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: ti */
    public void mo33299ti(Switch r5) {
        s1.z.c.l.e(r5, "onSelected");
        int ordinal = r5.ordinal();
        if (ordinal == 1 || ordinal == 2) {
            SendType sendType = SendType.SMS;
            m33337Yj(1, "ShortcutButton");
        } else if (ordinal != 3) {
            SendType sendType2 = SendType.IM;
            m33337Yj(2, "ShortcutButton");
        } else {
            if (!this.f18183N.mo31068g3()) {
                AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
                if (abstractC5443k4 != null) {
                    abstractC5443k4.mo32405vh(false);
                }
                AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
                if (abstractC5443k42 != null) {
                    abstractC5443k42.mo32447kk();
                }
                this.f18183N.mo31168O();
            }
            SendType sendType3 = SendType.URGENT_MESSAGE;
            m33337Yj(3, "ShortcutButton");
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: u0 */
    public void mo33298u0(int i) {
        AbstractC5443k4 abstractC5443k4;
        AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k42 != null) {
            abstractC5443k42.mo32472b2();
        }
        if (SendType.values()[i] != SendType.SCHEDULE_MESSAGE || !m33367Oj() || m33335Zj() == null || (abstractC5443k4 = (AbstractC5443k4) this.f57683a) == null) {
            return;
        }
        abstractC5443k4.mo32402w4();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: vh */
    public void mo33297vh(Uri uri) {
        s1.z.c.l.e(uri, "uri");
        m33383Ij(uri);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: vi */
    public void mo33296vi(boolean z, C19010a c19010a) {
        AbstractC5443k4 abstractC5443k4;
        if (!z || c19010a == null || (abstractC5443k4 = (AbstractC5443k4) this.f57683a) == null) {
            return;
        }
        if (!mo33353Se()) {
            String m33369Nj = m33369Nj();
            Objects.requireNonNull(m33369Nj, "null cannot be cast to non-null type kotlin.CharSequence");
            abstractC5443k4.mo32502Ri(x.j(x.f(i.h(i.T(new String[]{v.g0(m33369Nj).toString(), this.f18188S.mo31317w(c19010a, true)})), C5318e.f18243b), "\n\n", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (l) null, 62));
            return;
        }
        Draft draft = this.f18196d;
        if (draft == null) {
            return;
        }
        s1.z.c.l.d(this.f18208k0.mo11854a().mo14132b(c19010a.f53131b, c19010a.f53132c, this.f18188S.mo31317w(c19010a, false)).mo11829f(new C5317d(draft)), "mediaHelper.tell().locat…ts(false) }\n            }");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: w */
    public void mo33295w() {
        this.f18183N.mo31134U3(false);
        m33329bk(!this.f18183N.mo31209F3());
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: y5 */
    public void mo33294y5(Message message) {
        s1.z.c.l.e(message, "message");
        AssertionUtil.isTrue(message.f13390k == 2, new String[0]);
        AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k4 != null) {
            abstractC5443k4.mo32570Ab(false, true);
        }
        Draft draft = null;
        if (!mo33353Se()) {
            m33380Jj(2, false, false, null);
        }
        AbstractC5443k4 abstractC5443k42 = (AbstractC5443k4) this.f57683a;
        if (abstractC5443k42 != null) {
            abstractC5443k42.mo32423qh();
        }
        Draft draft2 = this.f18196d;
        if (draft2 != null) {
            Draft.C4194b m35061b = draft2.m35061b();
            m35061b.f13292i = message.f13380a;
            m35061b.f13293j = new ReplySnippet(message);
            draft = m35061b.m35055c();
        }
        this.f18196d = draft;
        m33313ik();
    }

    @Override // com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker.AbstractC4171c
    /* renamed from: y6 */
    public void mo33293y6(Uri uri, int i) {
        s1.z.c.l.e(uri, "itemUri");
        mo32625dc(DraftMode.GALLERY, C25225a.m3962T1(new DraftUri(uri, UriTypeHint.UNKNOWN, false)), s1.u.s.a, null, false, -1L, 0);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: yj */
    public void mo33292yj() {
        Draft draft = this.f18196d;
        if (draft != null) {
            Draft.C4194b m35061b = draft.m35061b();
            C5532f c5532f = this.f18207k;
            if (c5532f == null) {
                s1.z.c.l.l("defaultPokeableEmoji");
                throw null;
            }
            m35061b.f13288e = c5532f.f18711a;
            m35061b.m35054d();
            m35061b.f13298o = m33372Mj();
            Message m35062a = m35061b.m35055c().m35062a("-1", m33375Lj());
            s1.z.c.l.d(m35062a, "draft.buildUpon()\n      …N, getAnalyticsContext())");
            AbstractC5687r3 abstractC5687r3 = this.f18218p0;
            C5532f c5532f2 = this.f18207k;
            if (c5532f2 == null) {
                s1.z.c.l.l("defaultPokeableEmoji");
                throw null;
            }
            C5718s3 c5718s3 = (C5718s3) abstractC5687r3;
            Objects.requireNonNull(c5718s3);
            s1.z.c.l.e(c5532f2, "emoji");
            s1.z.c.l.e(draft, "draft");
            AbstractC7290a abstractC7290a = c5718s3.f19172c;
            String str = draft.f13274i;
            Participant[] participantArr = draft.f13270e;
            s1.z.c.l.d(participantArr, "draft.participants");
            BinaryEntity[] binaryEntityArr = draft.f13272g;
            s1.z.c.l.d(binaryEntityArr, "draft.media");
            abstractC7290a.mo29839i(str, "conversation", 2, participantArr, binaryEntityArr, draft.f13273h);
            AbstractC19510i0 abstractC19510i0 = c5718s3.f19171b;
            LinkedHashMap m8655X = C22128a.m8655X("ImEmojiPoke", "type");
            LinkedHashMap m8652Y = C22128a.m8652Y("action", AnalyticsConstants.NAME, "sent", "value", m8655X, "action", "sent");
            String str2 = c5532f2.f18713c;
            C17697p3.C17699b m8560v1 = C22128a.m8560v1("emoji", AnalyticsConstants.NAME, str2, "value", m8655X, "emoji", str2, "ImEmojiPoke", m8652Y);
            m8560v1.m15848d(m8655X);
            C17697p3 build = m8560v1.build();
            s1.z.c.l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19510i0.mo13225a(build);
            AbstractC19510i0 abstractC19510i02 = c5718s3.f19171b;
            String str3 = draft.f13274i;
            s1.z.c.l.d(str3, "draft.analyticsId");
            Participant[] participantArr2 = draft.f13270e;
            s1.z.c.l.d(participantArr2, "draft.participants");
            abstractC19510i02.mo13209q("UserInput", str3, participantArr2, true, null);
            this.f18179J.mo30560b(m35062a, draft.f13270e, false, false).mo11828g();
            AbstractC5276f4.AbstractC5277a abstractC5277a = (AbstractC5276f4.AbstractC5277a) this.f18178E.get();
            C5532f c5532f3 = this.f18207k;
            if (c5532f3 == null) {
                s1.z.c.l.l("defaultPokeableEmoji");
                throw null;
            }
            abstractC5277a.mo33444x7(c5532f3);
            AbstractC5443k4 abstractC5443k4 = (AbstractC5443k4) this.f57683a;
            if (abstractC5443k4 != null) {
                abstractC5443k4.mo32570Ab(false, true);
            }
            this.f18204i0.mo13282c("ab_test_poke_emoji_17105_converted");
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5276f4
    /* renamed from: z1 */
    public void mo33291z1() {
        ((AbstractC5276f4.AbstractC5277a) this.f18178E.get()).mo33443z1();
    }
}
