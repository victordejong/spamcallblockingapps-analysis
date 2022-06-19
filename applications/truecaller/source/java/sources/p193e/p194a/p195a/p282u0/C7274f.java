package p193e.p194a.p195a.p282u0;

import android.database.Cursor;
import android.graphics.drawable.Drawable;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Message;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.C19103t;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19851d0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p437c.p548h.AbstractC10257g;
import p193e.p194a.p437c.p548h.p551m.AbstractC10267d;
import p193e.p194a.p437c.p548h.p551m.C10264a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import s1.f0.r;
import s1.f0.w;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
import s1.z.c.m;
import w3.b.a.b;
/* renamed from: e.a.a.u0.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/u0/f.class */
public final class C7274f implements AbstractC10257g {

    /* renamed from: a */
    public final a<AbstractC19854f<AbstractC6233m>> f23227a;

    /* renamed from: b */
    public final a<AbstractC6248w> f23228b;

    /* renamed from: c */
    public final a<AbstractC6394b> f23229c;

    /* renamed from: d */
    public final a<AbstractC19510i0> f23230d;

    @e(c = "com.truecaller.messaging.insights.MessageFetcherImpl", f = "MessageFetcherImpl.kt", l = {58}, m = "fetchConversationInfoSync")
    /* renamed from: e.a.a.u0.f$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/u0/f$a.class */
    public static final class C7275a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23231d;

        /* renamed from: e */
        public int f23232e;

        /* renamed from: g */
        public Object f23234g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7275a(d dVar) {
            super(dVar);
            C7274f.this = r4;
        }

        /* renamed from: s */
        public final Object m29865s(Object obj) {
            this.f23231d = obj;
            this.f23232e |= Integer.MIN_VALUE;
            return C7274f.this.mo26520d(0L, this);
        }
    }

    /* renamed from: e.a.a.u0.f$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/u0/f$b.class */
    public static final class C7276b extends m implements s1.z.b.a<C10264a> {

        /* renamed from: b */
        public final /* synthetic */ Cursor f23235b;

        /* renamed from: c */
        public final /* synthetic */ C7274f f23236c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7276b(Cursor cursor, C7274f c7274f) {
            super(0);
            this.f23235b = cursor;
            this.f23236c = c7274f;
        }

        public final C10264a invoke() {
            C10264a c10264a = null;
            if (this.f23235b.moveToNext()) {
                Message message = ((AbstractC6149q) this.f23235b).getMessage();
                l.d(message, "message");
                Object obj = this.f23236c.f23229c.get();
                l.d(obj, "messageUtil.get()");
                AbstractC6394b abstractC6394b = (AbstractC6394b) obj;
                l.e(message, "$this$toImportantMessageUiModel");
                l.e(abstractC6394b, "utils");
                Participant participant = message.f13382c;
                l.d(participant, "participant");
                int m14107f = C19103t.m14107f(participant.f11585r, participant.f11588u);
                long j = message.f13380a;
                String m26066H0 = C10480a.m26066H0(message);
                Participant participant2 = message.f13382c;
                String valueOf = String.valueOf(C12864a2.m22593A(participant2.f11582o, participant2.f11580m, true));
                String mo31314z = abstractC6394b.mo31314z(message);
                boolean m25865z1 = C10480a.m25865z1(message);
                long j2 = message.f13381b;
                Drawable mo31325o = abstractC6394b.mo31325o(message);
                int i = message.f13390k;
                AbstractC10267d.C10268a c10268a = i != 0 ? i != 1 ? i != 2 ? null : new AbstractC10267d.C10268a(null, 1) : new AbstractC10267d.C10269b(null, 1) : new AbstractC10267d.C10270c(null, 1);
                String s1 = n.s1(C10480a.m26066H0(message), false);
                String str = null;
                if (s1 != null) {
                    Character m0 = w.m0(s1, 0);
                    str = null;
                    if (m0 != null) {
                        char charValue = m0.charValue();
                        str = null;
                        if (Character.isLetter(charValue)) {
                            str = String.valueOf(charValue);
                        }
                    }
                }
                String str2 = message.f13382c.f11572e;
                l.d(str2, "participant.normalizedAddress");
                b bVar = message.f13384e;
                l.d(bVar, "this.date");
                c10264a = new C10264a(j, m26066H0, valueOf, j2, mo31314z, m25865z1, mo31325o, c10268a, str, m14107f, str2, bVar, C10480a.m25899s1(message));
            } else {
                this.f23235b.close();
            }
            return c10264a;
        }
    }

    @e(c = "com.truecaller.messaging.insights.MessageFetcherImpl", f = "MessageFetcherImpl.kt", l = {33}, m = "fetchImpMessageCursorAsync")
    /* renamed from: e.a.a.u0.f$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/u0/f$c.class */
    public static final class C7277c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23237d;

        /* renamed from: e */
        public int f23238e;

        /* renamed from: g */
        public Object f23240g;

        /* renamed from: h */
        public Object f23241h;

        /* renamed from: i */
        public Object f23242i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7277c(d dVar) {
            super(dVar);
            C7274f.this = r4;
        }

        /* renamed from: s */
        public final Object m29864s(Object obj) {
            this.f23237d = obj;
            this.f23238e |= Integer.MIN_VALUE;
            return C7274f.this.mo26523a(null, null, null, this);
        }
    }

    @e(c = "com.truecaller.messaging.insights.MessageFetcherImpl", f = "MessageFetcherImpl.kt", l = {29}, m = "fetchMessage")
    /* renamed from: e.a.a.u0.f$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/u0/f$d.class */
    public static final class C7278d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23243d;

        /* renamed from: e */
        public int f23244e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7278d(d dVar) {
            super(dVar);
            C7274f.this = r4;
        }

        /* renamed from: s */
        public final Object m29863s(Object obj) {
            this.f23243d = obj;
            this.f23244e |= Integer.MIN_VALUE;
            return C7274f.this.mo26521c(0L, this);
        }
    }

    /* renamed from: e.a.a.u0.f$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/u0/f$e.class */
    public static final class C7279e<R> implements AbstractC19851d0<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ s1.z.b.l f23247b;

        /* renamed from: c */
        public final /* synthetic */ boolean f23248c;

        /* renamed from: d */
        public final /* synthetic */ List f23249d;

        /* renamed from: e */
        public final /* synthetic */ List f23250e;

        /* renamed from: f */
        public final /* synthetic */ s1.z.b.a f23251f;

        public C7279e(s1.z.b.l lVar, boolean z, List list, List list2, s1.z.b.a aVar) {
            C7274f.this = r4;
            this.f23247b = lVar;
            this.f23248c = z;
            this.f23249d = list;
            this.f23250e = list2;
            this.f23251f = aVar;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(Boolean bool) {
            Boolean bool2 = bool;
            if (bool2 == null) {
                s1.z.b.a aVar = this.f23251f;
                if (aVar == null) {
                    return;
                }
                s sVar = (s) aVar.invoke();
                return;
            }
            s1.z.b.l lVar = this.f23247b;
            l.d(bool2, "it");
            lVar.d(bool2);
            AbstractC19510i0 abstractC19510i0 = (AbstractC19510i0) C7274f.this.f23230d.get();
            boolean z = this.f23248c;
            C7274f c7274f = C7274f.this;
            List<String> list = this.f23249d;
            Objects.requireNonNull(c7274f);
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (String str : list) {
                int i = 1;
                if (r.n(str, "im", true)) {
                    i = 2;
                } else if (r.n(str, TokenResponseDto.METHOD_SMS, true)) {
                    i = 0;
                } else if (!r.n(str, "mms", true)) {
                    i = 3;
                }
                arrayList.add(Integer.valueOf(i));
            }
            abstractC19510i0.mo13206t(z, arrayList, this.f23250e.size(), "important", null);
        }
    }

    @Inject
    public C7274f(a<AbstractC19854f<AbstractC6233m>> aVar, a<AbstractC6248w> aVar2, a<AbstractC6394b> aVar3, a<AbstractC19510i0> aVar4) {
        l.e(aVar, "messagesStorageRef");
        l.e(aVar2, "readMessageStorage");
        l.e(aVar3, "messageUtil");
        l.e(aVar4, "messageAnalytics");
        this.f23227a = aVar;
        this.f23228b = aVar2;
        this.f23229c = aVar3;
        this.f23230d = aVar4;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f0  */
    @Override // p193e.p194a.p437c.p548h.AbstractC10257g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26523a(java.lang.Long r7, s1.z.b.l<? super s1.e0.k<p193e.p194a.p437c.p548h.p551m.C10264a>, s1.s> r8, s1.z.b.a<s1.s> r9, s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p282u0.C7274f.mo26523a(java.lang.Long, s1.z.b.l, s1.z.b.a, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p548h.AbstractC10257g
    /* renamed from: b */
    public Object mo26522b(boolean z, List<Long> list, List<String> list2, s1.z.b.l<? super Boolean, s> lVar, s1.z.b.a<s> aVar, d<? super s> dVar) {
        if (!list.isEmpty()) {
            ((AbstractC6233m) ((AbstractC19854f) this.f23227a.get()).mo11854a()).mo31668n(i.U0(list), z).mo11829f(new C7279e(lVar, z, list2, list, aVar));
        }
        return s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a4  */
    @Override // p193e.p194a.p437c.p548h.AbstractC10257g
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26521c(long r6, s1.w.d<? super p193e.p194a.p437c.p548h.p551m.C10266c> r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p195a.p282u0.C7274f.C7278d
            if (r0 == 0) goto L2c
            r0 = r8
            e.a.a.u0.f$d r0 = (p193e.p194a.p195a.p282u0.C7274f.C7278d) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f23244e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2c
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f23244e = r1
            r0 = r9
            r8 = r0
            goto L36
        L2c:
            e.a.a.u0.f$d r0 = new e.a.a.u0.f$d
            r1 = r0
            r2 = r5
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L36:
            r0 = r8
            java.lang.Object r0 = r0.f23243d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f23244e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L67
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L5d
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r8 = r0
            goto L97
        L5d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L67:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            o3.a<e.a.a.g.w> r0 = r0.f23228b
            java.lang.Object r0 = r0.get()
            e.a.a.g.w r0 = (p193e.p194a.p195a.p231g.AbstractC6248w) r0
            r9 = r0
            r0 = r8
            r1 = 1
            r0.f23244e = r1
            r0 = r9
            r1 = r6
            r2 = r8
            java.lang.Object r0 = r0.mo31579D(r1, r2)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            r1 = r11
            if (r0 != r1) goto L97
            r0 = r11
            return r0
        L97:
            r0 = r8
            com.truecaller.messaging.data.types.Message r0 = (com.truecaller.messaging.data.types.Message) r0
            r9 = r0
            r0 = 0
            r8 = r0
            r0 = r9
            if (r0 == 0) goto Lab
            r0 = r9
            r1 = 0
            e.a.c.h.m.c r0 = p193e.p194a.p437c.p578p.C10480a.m25977c3(r0, r1)
            r8 = r0
        Lab:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p282u0.C7274f.mo26521c(long, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b4  */
    @Override // p193e.p194a.p437c.p548h.AbstractC10257g
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26520d(long r8, s1.w.d<? super p193e.p194a.p437c.p548h.p551m.C10265b> r10) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p282u0.C7274f.mo26520d(long, s1.w.d):java.lang.Object");
    }
}
