package p193e.p194a.p195a.p200c.p205g;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import com.truecaller.messaging.data.types.ImInviteGroupInfo;
import com.truecaller.messaging.data.types.ImInviteUserInfo;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.a.c.g.g */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/g/g.class */
public final class C5297g extends AbstractC5295e {

    /* renamed from: d */
    public String f18126d;

    /* renamed from: e */
    public p1 f18127e;

    /* renamed from: f */
    public p1 f18128f;

    /* renamed from: g */
    public final ContentObserver f18129g;

    /* renamed from: h */
    public final f f18130h;

    /* renamed from: i */
    public final f f18131i;

    /* renamed from: j */
    public final String f18132j;

    /* renamed from: k */
    public final AbstractC6448d f18133k;

    /* renamed from: l */
    public final Handler f18134l;

    /* renamed from: m */
    public final ContentResolver f18135m;

    /* renamed from: n */
    public final AbstractC19233h0 f18136n;

    /* renamed from: o */
    public final AbstractC6392i0 f18137o;

    /* renamed from: e.a.a.c.g.g$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/g$a.class */
    public static final class C5298a extends ContentObserver {

        @e(c = "com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInvitePresenter$groupObserver$1$onChange$1", f = "GroupInvitePresenter.kt", l = {47}, m = "invokeSuspend")
        /* renamed from: e.a.a.c.g.g$a$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/g$a$a.class */
        public static final class C5299a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f18139e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5299a(d dVar) {
                super(2, dVar);
                C5298a.this = r5;
            }

            /* renamed from: i */
            public final d<s> m33425i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5299a(dVar);
            }

            /* renamed from: k */
            public final Object m33424k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C5299a(dVar).m33423s(s.a);
            }

            /* renamed from: s */
            public final Object m33423s(Object obj) {
                a aVar = a.a;
                int i = this.f18139e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C5297g c5297g = C5297g.this;
                    String str = c5297g.f18126d;
                    this.f18139e = 1;
                    if (c5297g.m33428Kj(str, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5298a(Handler handler) {
            super(handler);
            C5297g.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            s1.a.a.a.v0.f.d.w2(C5297g.this, (f) null, (j0) null, new C5299a(null), 3, (Object) null);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInvitePresenter$joinGroup$1", f = "GroupInvitePresenter.kt", l = {87, 98, 100}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.g.g$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/g$b.class */
    public static final class C5300b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f18141e;

        /* renamed from: f */
        public int f18142f;

        @e(c = "com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInvitePresenter$joinGroup$1$1", f = "GroupInvitePresenter.kt", l = {84}, m = "invokeSuspend")
        /* renamed from: e.a.a.c.g.g$b$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/g$b$a.class */
        public static final class C5301a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f18144e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5301a(d dVar) {
                super(2, dVar);
                C5300b.this = r5;
            }

            /* renamed from: i */
            public final d<s> m33419i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5301a(dVar);
            }

            /* renamed from: k */
            public final Object m33418k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C5301a(dVar).m33417s(s.a);
            }

            /* renamed from: s */
            public final Object m33417s(Object obj) {
                a aVar = a.a;
                int i = this.f18144e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    this.f18144e = 1;
                    if (s1.a.a.a.v0.f.d.D0(200L, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                AbstractC5296f abstractC5296f = (AbstractC5296f) C5297g.this.f57683a;
                if (abstractC5296f != null) {
                    abstractC5296f.mo33432f(true);
                }
                return s.a;
            }
        }

        @e(c = "com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInvitePresenter$joinGroup$1$2", f = "GroupInvitePresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.c.g.g$b$b */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/g$b$b.class */
        public static final class C5302b extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5302b(d dVar) {
                super(2, dVar);
                C5300b.this = r5;
            }

            /* renamed from: i */
            public final d<s> m33416i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5302b(dVar);
            }

            /* renamed from: k */
            public final Object m33415k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C5300b c5300b = C5300b.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                C5297g c5297g = C5297g.this;
                return c5297g.f18133k.mo30926q(c5297g.f18132j);
            }

            /* renamed from: s */
            public final Object m33414s(Object obj) {
                C25225a.m3932a3(obj);
                C5297g c5297g = C5297g.this;
                return c5297g.f18133k.mo30926q(c5297g.f18132j);
            }
        }

        @e(c = "com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInvitePresenter$joinGroup$1$3$isAlreadyMember$1", f = "GroupInvitePresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.c.g.g$b$c */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/g$b$c.class */
        public static final class C5303c extends i implements p<i0, d<? super Integer>, Object> {

            /* renamed from: e */
            public final /* synthetic */ String f18147e;

            /* renamed from: f */
            public final /* synthetic */ c0 f18148f;

            /* renamed from: g */
            public final /* synthetic */ C5300b f18149g;

            /* renamed from: h */
            public final /* synthetic */ i0 f18150h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5303c(String str, c0 c0Var, d dVar, C5300b c5300b, i0 i0Var) {
                super(2, dVar);
                this.f18147e = str;
                this.f18148f = c0Var;
                this.f18149g = c5300b;
                this.f18150h = i0Var;
            }

            /* renamed from: i */
            public final d<s> m33413i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5303c(this.f18147e, this.f18148f, dVar, this.f18149g, this.f18150h);
            }

            /* renamed from: k */
            public final Object m33412k(Object obj, Object obj2) {
                return m33413i(obj, (d) obj2).m33411s(s.a);
            }

            /* renamed from: s */
            public final Object m33411s(Object obj) {
                C25225a.m3932a3(obj);
                return C5297g.this.f18133k.mo30929n(this.f18147e, (String) this.f18148f.a);
            }
        }

        @e(c = "com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInvitePresenter$joinGroup$1$3$1", f = "GroupInvitePresenter.kt", l = {102}, m = "invokeSuspend")
        /* renamed from: e.a.a.c.g.g$b$d */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/g$b$d.class */
        public static final class C5304d extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f18151e;

            /* renamed from: f */
            public final /* synthetic */ C5300b f18152f;

            /* renamed from: g */
            public final /* synthetic */ i0 f18153g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5304d(d dVar, C5300b c5300b, i0 i0Var) {
                super(2, dVar);
                this.f18152f = c5300b;
                this.f18153g = i0Var;
            }

            /* renamed from: i */
            public final d<s> m33410i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5304d(dVar, this.f18152f, this.f18153g);
            }

            /* renamed from: k */
            public final Object m33409k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C5304d(dVar, this.f18152f, this.f18153g).m33408s(s.a);
            }

            /* renamed from: s */
            public final Object m33408s(Object obj) {
                a aVar = a.a;
                int i = this.f18151e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    this.f18151e = 1;
                    if (s1.a.a.a.v0.f.d.D0(10000L, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                C5297g.this.m33426Mj(true, null);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5300b(d dVar) {
            super(2, dVar);
            C5297g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m33422i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C5300b c5300b = new C5300b(dVar);
            c5300b.f18141e = obj;
            return c5300b;
        }

        /* renamed from: k */
        public final Object m33421k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C5300b c5300b = new C5300b(dVar);
            c5300b.f18141e = obj;
            return c5300b.m33420s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0158  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0161  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0169  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0170  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0178  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m33420s(java.lang.Object r11) {
            /*
                Method dump skipped, instructions count: 442
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p205g.C5297g.C5300b.m33420s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInvitePresenter$loadInviteGroupInfo$1", f = "GroupInvitePresenter.kt", l = {64}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.g.g$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/g$c.class */
    public static final class C5305c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f18154e;

        @e(c = "com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInvitePresenter$loadInviteGroupInfo$1$infoAndResult$1", f = "GroupInvitePresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.c.g.g$c$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/g$c$a.class */
        public static final class C5306a extends i implements p<i0, d<? super k<? extends ImInviteGroupInfo, ? extends String>>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5306a(d dVar) {
                super(2, dVar);
                C5305c.this = r5;
            }

            /* renamed from: i */
            public final d<s> m33404i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5306a(dVar);
            }

            /* renamed from: k */
            public final Object m33403k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C5305c c5305c = C5305c.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                C5297g c5297g = C5297g.this;
                return c5297g.f18133k.mo30938e(c5297g.f18132j);
            }

            /* renamed from: s */
            public final Object m33402s(Object obj) {
                C25225a.m3932a3(obj);
                C5297g c5297g = C5297g.this;
                return c5297g.f18133k.mo30938e(c5297g.f18132j);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5305c(d dVar) {
            super(2, dVar);
            C5297g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m33407i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5305c(dVar);
        }

        /* renamed from: k */
        public final Object m33406k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5305c(dVar).m33405s(s.a);
        }

        /* renamed from: s */
        public final Object m33405s(Object obj) {
            a aVar = a.a;
            int i = this.f18154e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f fVar = C5297g.this.f18130h;
                C5306a c5306a = new C5306a(null);
                this.f18154e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c5306a, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            k kVar = (k) obj;
            C5297g c5297g = C5297g.this;
            AbstractC5296f abstractC5296f = (AbstractC5296f) c5297g.f57683a;
            if (abstractC5296f != null) {
                ImInviteGroupInfo imInviteGroupInfo = (ImInviteGroupInfo) kVar.a;
                if (imInviteGroupInfo != null) {
                    String str = imInviteGroupInfo.f13342c;
                    Uri uri = null;
                    if (str != null) {
                        uri = Uri.parse(str);
                    }
                    abstractC5296f.mo33435S9(uri, C5297g.this.f18132j);
                    abstractC5296f.setTitle(imInviteGroupInfo.f13341b);
                    abstractC5296f.mo33431ja(imInviteGroupInfo.f13343d);
                    List<ImInviteUserInfo> list = imInviteGroupInfo.f13344e;
                    if (list == null) {
                        list = s1.u.s.a;
                    }
                    abstractC5296f.mo33433ce(list, imInviteGroupInfo.f13343d, C5297g.this.f18132j);
                } else {
                    c5297g.m33427Lj((String) kVar.b);
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInvitePresenter", f = "GroupInvitePresenter.kt", l = {112}, m = "openConversationIfExists")
    /* renamed from: e.a.a.c.g.g$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/g$d.class */
    public static final class C5307d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f18157d;

        /* renamed from: e */
        public int f18158e;

        /* renamed from: g */
        public Object f18160g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5307d(d dVar) {
            super(dVar);
            C5297g.this = r4;
        }

        /* renamed from: s */
        public final Object m33401s(Object obj) {
            this.f18157d = obj;
            this.f18158e |= Integer.MIN_VALUE;
            return C5297g.this.m33428Kj(null, this);
        }
    }

    @e(c = "com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInvitePresenter$openConversationIfExists$conversationId$1", f = "GroupInvitePresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.g.g$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/g$e.class */
    public static final class C5308e extends i implements p<i0, d<? super Long>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f18162f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5308e(String str, d dVar) {
            super(2, dVar);
            C5297g.this = r5;
            this.f18162f = str;
        }

        /* renamed from: i */
        public final d<s> m33400i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5308e(this.f18162f, dVar);
        }

        /* renamed from: k */
        public final Object m33399k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C5297g c5297g = C5297g.this;
            String str = this.f18162f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c5297g.f18133k.mo30933j(str);
        }

        /* renamed from: s */
        public final Object m33398s(Object obj) {
            C25225a.m3932a3(obj);
            return C5297g.this.f18133k.mo30933j(this.f18162f);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5297g(@Named("IO") f fVar, @Named("UI") f fVar2, @Named("name_invite_key") String str, AbstractC6448d abstractC6448d, Handler handler, ContentResolver contentResolver, AbstractC19233h0 abstractC19233h0, AbstractC6392i0 abstractC6392i0) {
        super(fVar2);
        l.e(fVar, "ioContext");
        l.e(fVar2, "uiContext");
        l.e(str, "inviteKey");
        l.e(abstractC6448d, "imGroupHelper");
        l.e(handler, "handler");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC6392i0, "settings");
        this.f18130h = fVar;
        this.f18131i = fVar2;
        this.f18132j = str;
        this.f18133k = abstractC6448d;
        this.f18134l = handler;
        this.f18135m = contentResolver;
        this.f18136n = abstractC19233h0;
        this.f18137o = abstractC6392i0;
        this.f18129g = new C5298a(handler);
    }

    @Override // p193e.p194a.p195a.p200c.p205g.AbstractC5295e
    /* renamed from: Ij */
    public void mo33430Ij() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5300b(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p195a.p200c.p205g.AbstractC5295e
    /* renamed from: Jj */
    public void mo33429Jj() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5305c(null), 3, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a5  */
    /* renamed from: Kj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m33428Kj(java.lang.String r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p205g.C5297g.m33428Kj(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00dd, code lost:
        if (r8.equals("crossDc") != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00e9, code lost:
        if (r8.equals("expiredLink") != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ec, code lost:
        r12 = 2131886789;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* renamed from: Lj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33427Lj(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p205g.C5297g.m33427Lj(java.lang.String):void");
    }

    /* renamed from: Mj */
    public final void m33426Mj(boolean z, String str) {
        p1 p1Var = this.f18128f;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        p1 p1Var2 = this.f18127e;
        if (p1Var2 != null) {
            s1.a.a.a.v0.f.d.T(p1Var2, (CancellationException) null, 1, (Object) null);
        }
        AbstractC5296f abstractC5296f = (AbstractC5296f) this.f57683a;
        if (abstractC5296f != null) {
            abstractC5296f.mo33432f(false);
        }
        if (z) {
            m33427Lj(str);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.a.c.g.f, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC5296f) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        this.f18135m.registerContentObserver(C17891a1.C17897f.m15702a(), false, this.f18129g);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f18135m.unregisterContentObserver(this.f18129g);
        super.mo9806c();
    }
}
