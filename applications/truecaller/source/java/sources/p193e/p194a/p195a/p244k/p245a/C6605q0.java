package p193e.p194a.p195a.p244k.p245a;

import android.content.ContentResolver;
import com.truecaller.C2752R;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.api.services.messenger.p138v1.models.Peer;
import com.truecaller.api.services.messenger.p138v1.models.UserTypingKind;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import com.truecaller.api.services.messenger.p138v1.models.input.InputUserTypingKind;
import com.truecaller.data.entity.messaging.Participant;
import io.agora.rtc.Constants;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p241i1.C6405h;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p291a3.AbstractC7419a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p837h0.AbstractC14840m;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.q0 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/q0.class */
public final class C6605q0 implements AbstractC6601p0 {

    /* renamed from: d */
    public final long f21806d;

    /* renamed from: f */
    public final long f21808f;

    /* renamed from: h */
    public final f f21810h;

    /* renamed from: i */
    public final f f21811i;

    /* renamed from: j */
    public final AbstractC19222c f21812j;

    /* renamed from: k */
    public final AbstractC6625s1 f21813k;

    /* renamed from: l */
    public final AbstractC19223c0 f21814l;

    /* renamed from: m */
    public final ContentResolver f21815m;

    /* renamed from: n */
    public final AbstractC6489q f21816n;

    /* renamed from: o */
    public final AbstractC6392i0 f21817o;

    /* renamed from: p */
    public final C6556g f21818p;

    /* renamed from: q */
    public final AbstractC14840m f21819q;

    /* renamed from: r */
    public final AbstractC7419a f21820r;

    /* renamed from: a */
    public final Map<String, Long> f21803a = new LinkedHashMap();

    /* renamed from: b */
    public final Set<AbstractC6598o0> f21804b = new LinkedHashSet();

    /* renamed from: c */
    public final Map<String, Map<String, C6507a2>> f21805c = new LinkedHashMap();

    /* renamed from: e */
    public final long f21807e = TimeUnit.MINUTES.toMillis(5);

    /* renamed from: g */
    public final long f21809g = 500;

    @e(c = "com.truecaller.messaging.transport.im.ImTypingManagerImpl$handleTypeAction$2", f = "ImTypingManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.a.q0$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/q0$a.class */
    public static final class C6606a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ InputPeer f21822f;

        /* renamed from: g */
        public final /* synthetic */ boolean f21823g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6606a(InputPeer inputPeer, boolean z, d dVar) {
            super(2, dVar);
            C6605q0.this = r5;
            this.f21822f = inputPeer;
            this.f21823g = z;
        }

        /* renamed from: i */
        public final d<s> m30669i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6606a(this.f21822f, this.f21823g, dVar);
        }

        /* renamed from: k */
        public final Object m30668k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6605q0 c6605q0 = C6605q0.this;
            InputPeer inputPeer = this.f21822f;
            boolean z = this.f21823g;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            C6605q0.m30674i(c6605q0, inputPeer, z, InputUserTypingKind.TYPING);
            return sVar;
        }

        /* renamed from: s */
        public final Object m30667s(Object obj) {
            C25225a.m3932a3(obj);
            C6605q0.m30674i(C6605q0.this, this.f21822f, this.f21823g, InputUserTypingKind.TYPING);
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.transport.im.ImTypingManagerImpl$onMessageSentEvent$1", f = "ImTypingManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.a.q0$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/q0$b.class */
    public static final class C6607b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Event.MessageSent f21825f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6607b(Event.MessageSent messageSent, d dVar) {
            super(2, dVar);
            C6605q0.this = r5;
            this.f21825f = messageSent;
        }

        /* renamed from: i */
        public final d<s> m30666i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6607b(this.f21825f, dVar);
        }

        /* renamed from: k */
        public final Object m30665k(Object obj, Object obj2) {
            C6507a2 remove;
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6605q0 c6605q0 = C6605q0.this;
            Event.MessageSent messageSent = this.f21825f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            Peer.User sender = messageSent.getSender();
            l.d(sender, "event.sender");
            String id = sender.getId();
            l.d(id, "event.sender.id");
            Peer recipient = messageSent.getRecipient();
            l.d(recipient, "event.recipient");
            String m25875x0 = C10480a.m25875x0(recipient);
            Map<String, C6507a2> map = c6605q0.f21805c.get(m25875x0);
            if (map != null && (remove = map.remove(id)) != null) {
                s1.a.a.a.v0.f.d.T(remove.f21547c, (CancellationException) null, 1, (Object) null);
                C6605q0.m30675h(c6605q0, id, m25875x0, map);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m30664s(Object obj) {
            C6507a2 remove;
            s sVar = s.a;
            C25225a.m3932a3(obj);
            Peer.User sender = this.f21825f.getSender();
            l.d(sender, "event.sender");
            String id = sender.getId();
            l.d(id, "event.sender.id");
            Peer recipient = this.f21825f.getRecipient();
            l.d(recipient, "event.recipient");
            String m25875x0 = C10480a.m25875x0(recipient);
            Map<String, C6507a2> map = C6605q0.this.f21805c.get(m25875x0);
            if (map != null && (remove = map.remove(id)) != null) {
                s1.a.a.a.v0.f.d.T(remove.f21547c, (CancellationException) null, 1, (Object) null);
                C6605q0.m30675h(C6605q0.this, id, m25875x0, map);
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.messaging.transport.im.ImTypingManagerImpl$onUserTypingEvent$1", f = "ImTypingManager.kt", l = {145}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.a.q0$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/q0$c.class */
    public static final class C6608c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f21826e;

        /* renamed from: f */
        public Object f21827f;

        /* renamed from: g */
        public Object f21828g;

        /* renamed from: h */
        public Object f21829h;

        /* renamed from: i */
        public int f21830i;

        /* renamed from: k */
        public final /* synthetic */ Event.UserTyping f21832k;

        @e(c = "com.truecaller.messaging.transport.im.ImTypingManagerImpl$onUserTypingEvent$1$1", f = "ImTypingManager.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.k.a.q0$c$a */
        /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/q0$c$a.class */
        public static final class C6609a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f21833e;

            /* renamed from: g */
            public final /* synthetic */ String f21835g;

            /* renamed from: h */
            public final /* synthetic */ String f21836h;

            /* renamed from: i */
            public final /* synthetic */ String f21837i;

            @e(c = "com.truecaller.messaging.transport.im.ImTypingManagerImpl$onUserTypingEvent$1$1$expiryJob$1", f = "ImTypingManager.kt", l = {Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED}, m = "invokeSuspend")
            /* renamed from: e.a.a.k.a.q0$c$a$a */
            /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/q0$c$a$a.class */
            public static final class C6610a extends i implements p<i0, d<? super s>, Object> {

                /* renamed from: e */
                public int f21838e;

                /* renamed from: g */
                public final /* synthetic */ Map f21840g;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C6610a(Map map, d dVar) {
                    super(2, dVar);
                    C6609a.this = r5;
                    this.f21840g = map;
                }

                /* renamed from: i */
                public final d<s> m30657i(Object obj, d<?> dVar) {
                    l.e(dVar, "completion");
                    return new C6610a(this.f21840g, dVar);
                }

                /* renamed from: k */
                public final Object m30656k(Object obj, Object obj2) {
                    d dVar = (d) obj2;
                    l.e(dVar, "completion");
                    return new C6610a(this.f21840g, dVar).m30655s(s.a);
                }

                /* renamed from: s */
                public final Object m30655s(Object obj) {
                    a aVar = a.a;
                    int i = this.f21838e;
                    if (i == 0) {
                        C25225a.m3932a3(obj);
                        long j = C6605q0.this.f21806d;
                        long millis = TimeUnit.SECONDS.toMillis(1L);
                        this.f21838e = 1;
                        if (s1.a.a.a.v0.f.d.D0(millis + j, this) == aVar) {
                            return aVar;
                        }
                    } else if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        C25225a.m3932a3(obj);
                    }
                    this.f21840g.remove(C6609a.this.f21836h);
                    C6609a c6609a = C6609a.this;
                    C6605q0.m30675h(C6605q0.this, c6609a.f21836h, c6609a.f21835g, this.f21840g);
                    return s.a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C6609a(String str, String str2, String str3, d dVar) {
                super(2, dVar);
                C6608c.this = r5;
                this.f21835g = str;
                this.f21836h = str2;
                this.f21837i = str3;
            }

            /* renamed from: i */
            public final d<s> m30660i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C6609a c6609a = new C6609a(this.f21835g, this.f21836h, this.f21837i, dVar);
                c6609a.f21833e = obj;
                return c6609a;
            }

            /* renamed from: k */
            public final Object m30659k(Object obj, Object obj2) {
                C6609a m30660i = m30660i(obj, (d) obj2);
                s sVar = s.a;
                m30660i.m30658s(sVar);
                return sVar;
            }

            /* renamed from: s */
            public final Object m30658s(Object obj) {
                p1 p1Var;
                C25225a.m3932a3(obj);
                i0 i0Var = (i0) this.f21833e;
                Map<String, Map<String, C6507a2>> map = C6605q0.this.f21805c;
                String str = this.f21835g;
                Map<String, C6507a2> map2 = map.get(str);
                LinkedHashMap linkedHashMap = map2;
                if (map2 == null) {
                    linkedHashMap = new LinkedHashMap();
                    map.put(str, linkedHashMap);
                }
                Map<String, C6507a2> map3 = linkedHashMap;
                C6507a2 c6507a2 = map3.get(this.f21836h);
                if (c6507a2 != null && (p1Var = c6507a2.f21547c) != null) {
                    s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
                }
                n0 H = s1.a.a.a.v0.f.d.H(i0Var, C6605q0.this.f21810h, (j0) null, new C6610a(map3, null), 2, (Object) null);
                String str2 = this.f21836h;
                String str3 = this.f21837i;
                UserTypingKind kind = C6608c.this.f21832k.getKind();
                l.d(kind, "event.kind");
                map3.put(str2, new C6507a2(str3, kind, H));
                C6605q0.m30675h(C6605q0.this, this.f21836h, this.f21835g, map3);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6608c(Event.UserTyping userTyping, d dVar) {
            super(2, dVar);
            C6605q0.this = r5;
            this.f21832k = userTyping;
        }

        /* renamed from: i */
        public final d<s> m30663i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C6608c c6608c = new C6608c(this.f21832k, dVar);
            c6608c.f21826e = obj;
            return c6608c;
        }

        /* renamed from: k */
        public final Object m30662k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C6608c c6608c = new C6608c(this.f21832k, dVar);
            c6608c.f21826e = obj;
            return c6608c.m30661s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x00d4, code lost:
            if (r12 != null) goto L24;
         */
        /* JADX WARN: Finally extract failed */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m30661s(java.lang.Object r12) {
            /*
                Method dump skipped, instructions count: 425
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6605q0.C6608c.m30661s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.messaging.transport.im.ImTypingManagerImpl$startContinuousTyping$job$1", f = "ImTypingManager.kt", l = {124}, m = "invokeSuspend")
    /* renamed from: e.a.a.k.a.q0$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/q0$d.class */
    public static final class C6611d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public long f21841e;

        /* renamed from: f */
        public int f21842f;

        /* renamed from: h */
        public final /* synthetic */ InputPeer f21844h;

        /* renamed from: i */
        public final /* synthetic */ boolean f21845i;

        /* renamed from: j */
        public final /* synthetic */ InputUserTypingKind f21846j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6611d(InputPeer inputPeer, boolean z, InputUserTypingKind inputUserTypingKind, d dVar) {
            super(2, dVar);
            C6605q0.this = r5;
            this.f21844h = inputPeer;
            this.f21845i = z;
            this.f21846j = inputUserTypingKind;
        }

        /* renamed from: i */
        public final d<s> m30654i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C6611d(this.f21844h, this.f21845i, this.f21846j, dVar);
        }

        /* renamed from: k */
        public final Object m30653k(Object obj, Object obj2) {
            return m30654i(obj, (d) obj2).m30652s(s.a);
        }

        /* JADX WARN: Type inference failed for: r0v27, types: [long] */
        /* JADX WARN: Type inference failed for: r0v31, types: [long] */
        /* renamed from: s */
        public final Object m30652s(Object obj) {
            char c;
            a aVar = a.a;
            int i = this.f21842f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                c = C6605q0.this.f21812j.mo13821a() + C6605q0.this.f21807e;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c = this.f21841e;
                C25225a.m3932a3(obj);
            }
            while (C6605q0.this.f21812j.mo13821a() < c) {
                C6605q0.m30674i(C6605q0.this, this.f21844h, this.f21845i, this.f21846j);
                C6605q0 c6605q0 = C6605q0.this;
                long max = Math.max(c6605q0.f21808f, c6605q0.f21806d - c6605q0.f21809g);
                this.f21841e = c;
                this.f21842f = 1;
                if (s1.a.a.a.v0.f.d.D0(max, this) == aVar) {
                    return aVar;
                }
            }
            return s.a;
        }
    }

    @Inject
    public C6605q0(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC19222c abstractC19222c, AbstractC6625s1 abstractC6625s1, AbstractC19223c0 abstractC19223c0, ContentResolver contentResolver, AbstractC6489q abstractC6489q, AbstractC6392i0 abstractC6392i0, C6556g c6556g, AbstractC14840m abstractC14840m, AbstractC7419a abstractC7419a) {
        l.e(fVar, "uiCoroutineContext");
        l.e(fVar2, "asyncCoroutineContext");
        l.e(abstractC19222c, "clock");
        l.e(abstractC6625s1, "messengerStubManager");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6489q, "imGroupUtil");
        l.e(abstractC6392i0, "messageSettings");
        l.e(c6556g, "hiddenNumberHelper");
        l.e(abstractC14840m, "filterSettings");
        l.e(abstractC7419a, "blockManager");
        this.f21810h = fVar;
        this.f21811i = fVar2;
        this.f21812j = abstractC19222c;
        this.f21813k = abstractC6625s1;
        this.f21814l = abstractC19223c0;
        this.f21815m = contentResolver;
        this.f21816n = abstractC6489q;
        this.f21817o = abstractC6392i0;
        this.f21818p = c6556g;
        this.f21819q = abstractC14840m;
        this.f21820r = abstractC7419a;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.f21806d = timeUnit.toMillis(abstractC6392i0.mo31019o4());
        this.f21808f = timeUnit.toMillis(1L);
    }

    /* renamed from: h */
    public static final void m30675h(C6605q0 c6605q0, String str, String str2, Map map) {
        if (str2 != null) {
            for (AbstractC6598o0 abstractC6598o0 : c6605q0.f21804b) {
                abstractC6598o0.mo30687Yh(str2, c6605q0.m30672k(map));
            }
            return;
        }
        for (AbstractC6598o0 abstractC6598o02 : c6605q0.f21804b) {
            C6507a2 c6507a2 = (C6507a2) map.get(str);
            abstractC6598o02.mo30688G6(str, c6605q0.m30671l(c6507a2 != null ? c6507a2.f21546b : null));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00b2 A[Catch: RuntimeException -> 0x00b9, TRY_ENTER, TryCatch #0 {RuntimeException -> 0x00b9, blocks: (B:11:0x005f, B:13:0x00b2), top: B:16:0x005f }] */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m30674i(p193e.p194a.p195a.p244k.p245a.C6605q0 r5, com.truecaller.api.services.messenger.p138v1.models.input.InputPeer r6, boolean r7, com.truecaller.api.services.messenger.p138v1.models.input.InputUserTypingKind r8) {
        /*
            r0 = r5
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r6
            com.truecaller.api.services.messenger.v1.models.input.InputPeer$TypeCase r0 = r0.getTypeCase()
            com.truecaller.api.services.messenger.v1.models.input.InputPeer$TypeCase r1 = com.truecaller.api.services.messenger.p138v1.models.input.InputPeer.TypeCase.USER
            if (r0 != r1) goto L5d
            r0 = r5
            e.a.a.k.a.g r0 = r0.f21818p
            r9 = r0
            r0 = r6
            com.truecaller.api.services.messenger.v1.models.input.InputPeer$User r0 = r0.getUser()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "inputPeer.user"
            s1.z.c.l.d(r0, r1)
            r0 = r10
            java.lang.String r0 = r0.getId()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "inputPeer.user.id"
            s1.z.c.l.d(r0, r1)
            r0 = r9
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r10
            java.lang.String r1 = "imId"
            s1.z.c.l.e(r0, r1)
            r0 = r9
            r1 = r10
            com.truecaller.messaging.data.types.Conversation r0 = r0.m30771a(r1)
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L4e
            goto L54
        L4e:
            r0 = r9
            boolean r0 = r0.f13188C
            r7 = r0
        L54:
            r0 = r7
            if (r0 == 0) goto L5d
            r0 = 1
            r7 = r0
            goto L5f
        L5d:
            r0 = 0
            r7 = r0
        L5f:
            com.truecaller.api.services.messenger.v1.SendUserTyping$Request$a r0 = com.truecaller.api.services.messenger.p138v1.SendUserTyping.Request.newBuilder()     // Catch: java.lang.RuntimeException -> Lb9
            r9 = r0
            r0 = r9
            r0.copyOnWrite()     // Catch: java.lang.RuntimeException -> Lb9
            r0 = r9
            com.google.protobuf.GeneratedMessageLite r0 = r0.instance     // Catch: java.lang.RuntimeException -> Lb9
            com.truecaller.api.services.messenger.v1.SendUserTyping$Request r0 = (com.truecaller.api.services.messenger.p138v1.SendUserTyping.Request) r0     // Catch: java.lang.RuntimeException -> Lb9
            r1 = r6
            com.truecaller.api.services.messenger.p138v1.SendUserTyping.Request.access$100(r0, r1)     // Catch: java.lang.RuntimeException -> Lb9
            r0 = r9
            r0.copyOnWrite()     // Catch: java.lang.RuntimeException -> Lb9
            r0 = r9
            com.google.protobuf.GeneratedMessageLite r0 = r0.instance     // Catch: java.lang.RuntimeException -> Lb9
            com.truecaller.api.services.messenger.v1.SendUserTyping$Request r0 = (com.truecaller.api.services.messenger.p138v1.SendUserTyping.Request) r0     // Catch: java.lang.RuntimeException -> Lb9
            r1 = r7
            com.truecaller.api.services.messenger.p138v1.SendUserTyping.Request.access$700(r0, r1)     // Catch: java.lang.RuntimeException -> Lb9
            r0 = r9
            r0.copyOnWrite()     // Catch: java.lang.RuntimeException -> Lb9
            r0 = r9
            com.google.protobuf.GeneratedMessageLite r0 = r0.instance     // Catch: java.lang.RuntimeException -> Lb9
            com.truecaller.api.services.messenger.v1.SendUserTyping$Request r0 = (com.truecaller.api.services.messenger.p138v1.SendUserTyping.Request) r0     // Catch: java.lang.RuntimeException -> Lb9
            r1 = r8
            com.truecaller.api.services.messenger.p138v1.SendUserTyping.Request.access$500(r0, r1)     // Catch: java.lang.RuntimeException -> Lb9
            r0 = r9
            com.google.protobuf.GeneratedMessageLite r0 = r0.build()     // Catch: java.lang.RuntimeException -> Lb9
            com.truecaller.api.services.messenger.v1.SendUserTyping$Request r0 = (com.truecaller.api.services.messenger.p138v1.SendUserTyping.Request) r0     // Catch: java.lang.RuntimeException -> Lb9
            r6 = r0
            r0 = r5
            e.a.a.k.a.s1 r0 = r0.f21813k     // Catch: java.lang.RuntimeException -> Lb9
            r1 = 0
            r2 = 1
            r3 = 0
            p3.a.q1.c r0 = p193e.p194a.p437c.p578p.C10480a.m25940k0(r0, r1, r2, r3)     // Catch: java.lang.RuntimeException -> Lb9
            e.a.t2.a.e.a.b$a r0 = (p193e.p194a.p1238t2.p1239a.p1248e.p1249a.C20458b.C20459a) r0     // Catch: java.lang.RuntimeException -> Lb9
            r5 = r0
            r0 = r5
            if (r0 == 0) goto Lb8
            r0 = r5
            r1 = r6
            com.truecaller.api.services.messenger.v1.SendUserTyping$Response r0 = r0.m11105t(r1)     // Catch: java.lang.RuntimeException -> Lb9
        Lb8:
            return
        Lb9:
            r5 = move-exception
            goto Lb8
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6605q0.m30674i(e.a.a.k.a.q0, com.truecaller.api.services.messenger.v1.models.input.InputPeer, boolean, com.truecaller.api.services.messenger.v1.models.input.InputUserTypingKind):void");
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6601p0
    /* renamed from: a */
    public void mo30682a(Event.UserTyping userTyping) {
        l.e(userTyping, "event");
        if (!m30670m()) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(h1.a, this.f21811i, (j0) null, new C6608c(userTyping, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6601p0
    /* renamed from: b */
    public void mo30681b(Participant participant, boolean z) {
        l.e(participant, "participant");
        if (!m30670m()) {
            return;
        }
        if (participant.f11569b != 4 && participant.m35449k(this.f21819q.mo19547u())) {
            return;
        }
        Long l = this.f21803a.get(participant.f11572e);
        if (l != null) {
            if (this.f21812j.mo13819c() - l.longValue() < this.f21806d) {
                return;
            }
        }
        InputPeer m31297g = C6405h.m31297g(participant);
        if (m31297g == null) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(h1.a, this.f21811i, (j0) null, new C6606a(m31297g, z, null), 2, (Object) null);
        Map<String, Long> map = this.f21803a;
        String str = participant.f11572e;
        l.d(str, "participant.normalizedAddress");
        map.put(str, Long.valueOf(this.f21812j.mo13819c()));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6601p0
    /* renamed from: c */
    public void mo30680c(C6651y1 c6651y1) {
        l.e(c6651y1, "handle");
        p1 p1Var = c6651y1.f21932a;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6601p0
    /* renamed from: d */
    public C6651y1 mo30679d(Participant participant, boolean z, InputUserTypingKind inputUserTypingKind) {
        l.e(participant, "participant");
        l.e(inputUserTypingKind, "kind");
        InputPeer m31297g = C6405h.m31297g(participant);
        return (!m30670m() || m31297g == null) ? new C6651y1(null) : new C6651y1(s1.a.a.a.v0.f.d.w2(h1.a, this.f21811i, (j0) null, new C6611d(m31297g, z, inputUserTypingKind, null), 2, (Object) null));
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6601p0
    /* renamed from: e */
    public void mo30678e(AbstractC6598o0 abstractC6598o0) {
        l.e(abstractC6598o0, "listener");
        this.f21804b.add(abstractC6598o0);
        for (Map.Entry<String, Map<String, C6507a2>> entry : this.f21805c.entrySet()) {
            String key = entry.getKey();
            Map<String, C6507a2> value = entry.getValue();
            if (key == null) {
                for (Map.Entry<String, C6507a2> entry2 : value.entrySet()) {
                    abstractC6598o0.mo30688G6(entry2.getKey(), m30671l(entry2.getValue().f21546b));
                }
            } else {
                abstractC6598o0.mo30687Yh(key, m30672k(value));
            }
        }
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6601p0
    /* renamed from: f */
    public void mo30677f(AbstractC6598o0 abstractC6598o0) {
        l.e(abstractC6598o0, "listener");
        this.f21804b.remove(abstractC6598o0);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6601p0
    /* renamed from: g */
    public void mo30676g(Event.MessageSent messageSent) {
        l.e(messageSent, "event");
        if (!m30670m()) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(h1.a, this.f21810h, (j0) null, new C6607b(messageSent, null), 2, (Object) null);
    }

    /* renamed from: j */
    public final int m30673j(UserTypingKind userTypingKind) {
        int i;
        if (userTypingKind != null) {
            int ordinal = userTypingKind.ordinal();
            if (ordinal == 0) {
                i = 2130970271;
            } else if (ordinal == 5) {
                i = 2130970273;
            }
            return i;
        }
        i = 2130970272;
        return i;
    }

    /* renamed from: k */
    public final C6654z1 m30672k(Map<String, C6507a2> map) {
        int i;
        if (map.isEmpty()) {
            return null;
        }
        if (map.size() > 1) {
            String mo13768b = this.f21814l.mo13768b(C2752R.string.ImTypingMultiple, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri….string.ImTypingMultiple)");
            return new C6654z1(C2752R.attr.tcx_typingIndicator, mo13768b);
        }
        C6507a2 c6507a2 = (C6507a2) s1.u.i.A(map.values());
        int m30673j = m30673j(c6507a2.f21546b);
        switch (c6507a2.f21546b.ordinal()) {
            case 0:
                i = 2131886870;
                break;
            case 1:
                i = 2131886865;
                break;
            case 2:
                i = 2131886880;
                break;
            case 3:
                i = 2131886861;
                break;
            case 4:
                i = 2131886876;
                break;
            case 5:
                i = 2131886855;
                break;
            case 6:
                i = 2131886867;
                break;
            case 7:
                i = 2131886859;
                break;
            case 8:
                i = 2131886874;
                break;
            case 9:
                i = 2131886857;
                break;
            case 10:
                i = 2131886872;
                break;
            case 11:
                i = 2131886863;
                break;
            case 12:
                i = 2131886878;
                break;
            case 13:
                return null;
            default:
                throw new s1.i();
        }
        String mo13768b2 = this.f21814l.mo13768b(i, c6507a2.f21545a);
        l.d(mo13768b2, "resourceProvider.getStri…, typingParticipant.name)");
        return new C6654z1(m30673j, mo13768b2);
    }

    /* renamed from: l */
    public final C6654z1 m30671l(UserTypingKind userTypingKind) {
        int i;
        int m30673j = m30673j(userTypingKind);
        if (userTypingKind == null) {
            return null;
        }
        switch (userTypingKind.ordinal()) {
            case 0:
                i = 2131886868;
                break;
            case 1:
                i = 2131886864;
                break;
            case 2:
                i = 2131886879;
                break;
            case 3:
                i = 2131886860;
                break;
            case 4:
                i = 2131886875;
                break;
            case 5:
                i = 2131886854;
                break;
            case 6:
                i = 2131886866;
                break;
            case 7:
                i = 2131886858;
                break;
            case 8:
                i = 2131886873;
                break;
            case 9:
                i = 2131886856;
                break;
            case 10:
                i = 2131886871;
                break;
            case 11:
                i = 2131886862;
                break;
            case 12:
                i = 2131886877;
                break;
            case 13:
                return null;
            default:
                throw new s1.i();
        }
        String mo13768b = this.f21814l.mo13768b(i, new Object[0]);
        l.d(mo13768b, "resourceProvider.getString(it)");
        return new C6654z1(m30673j, mo13768b);
    }

    /* renamed from: m */
    public final boolean m30670m() {
        return this.f21817o.mo31200H2();
    }
}
