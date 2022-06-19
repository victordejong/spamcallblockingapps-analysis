package p193e.p194a;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.os.SystemClock;
import com.truecaller.log.AssertionUtil;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19044j;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p847h3.p848b.AbstractC14900a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.m;
/* renamed from: e.a.i0 */
/* loaded from: classes4-dex2jar.jar:e/a/i0.class */
public final class ClipboardManager$OnPrimaryClipChangedListenerC15254i0 implements ClipboardManager.OnPrimaryClipChangedListener {

    /* renamed from: a */
    public AbstractC15256b f43439a;

    /* renamed from: b */
    public long f43440b;

    /* renamed from: c */
    public String f43441c;

    /* renamed from: d */
    public final i0 f43442d;

    /* renamed from: e */
    public p1 f43443e;

    /* renamed from: f */
    public p1 f43444f;

    /* renamed from: g */
    public final Provider<ClipboardManager> f43445g;

    /* renamed from: h */
    public final a<AbstractC19219a0> f43446h;

    /* renamed from: i */
    public final a<AbstractC19044j> f43447i;

    /* renamed from: j */
    public final a<AbstractC19022f0> f43448j;

    /* renamed from: k */
    public final a<AbstractC14028r> f43449k;

    /* renamed from: l */
    public final a<AbstractC14835j> f43450l;

    /* renamed from: m */
    public final a<AbstractC8621z> f43451m;

    /* renamed from: n */
    public final a<AbstractC19321u> f43452n;

    /* renamed from: o */
    public final a<AbstractC14900a> f43453o;

    /* renamed from: p */
    public final f f43454p;

    /* renamed from: q */
    public final f f43455q;

    /* renamed from: e.a.i0$a */
    /* loaded from: classes6-dex2jar.jar:e/a/i0$a.class */
    public static final class C15255a extends m implements l<ClipboardManager, s> {

        /* renamed from: b */
        public final /* synthetic */ int f43456b;

        /* renamed from: c */
        public final /* synthetic */ Object f43457c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15255a(int i, Object obj) {
            super(1);
            this.f43456b = i;
            this.f43457c = obj;
        }

        /* renamed from: d */
        public final Object m18993d(Object obj) {
            s sVar = s.a;
            int i = this.f43456b;
            if (i == 0) {
                ClipboardManager clipboardManager = (ClipboardManager) obj;
                s1.z.c.l.e(clipboardManager, "$receiver");
                clipboardManager.removePrimaryClipChangedListener((ClipboardManager$OnPrimaryClipChangedListenerC15254i0) this.f43457c);
                return sVar;
            } else if (i != 1) {
                throw null;
            } else {
                ClipboardManager clipboardManager2 = (ClipboardManager) obj;
                s1.z.c.l.e(clipboardManager2, "$receiver");
                clipboardManager2.addPrimaryClipChangedListener((ClipboardManager$OnPrimaryClipChangedListenerC15254i0) this.f43457c);
                return sVar;
            }
        }
    }

    /* renamed from: e.a.i0$b */
    /* loaded from: classes4-dex2jar.jar:e/a/i0$b.class */
    public interface AbstractC15256b {
    }

    @e(c = "com.truecaller.SearchOnCopyHelper$onPrimaryClipChanged$1", f = "SearchOnCopyHelper.kt", l = {121}, m = "invokeSuspend")
    /* renamed from: e.a.i0$c */
    /* loaded from: classes4-dex2jar.jar:e/a/i0$c.class */
    public static final class C15257c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f43458e;

        /* renamed from: g */
        public final /* synthetic */ c0 f43460g;

        /* renamed from: h */
        public final /* synthetic */ boolean f43461h;

        @e(c = "com.truecaller.SearchOnCopyHelper$onPrimaryClipChanged$1$1", f = "SearchOnCopyHelper.kt", l = {122}, m = "invokeSuspend")
        /* renamed from: e.a.i0$c$a */
        /* loaded from: classes4-dex2jar.jar:e/a/i0$c$a.class */
        public static final class C15258a extends i implements p<i0, d<? super k<? extends String, ? extends Boolean>>, Object> {

            /* renamed from: e */
            public int f43462e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15258a(d dVar) {
                super(2, dVar);
                C15257c.this = r5;
            }

            /* renamed from: i */
            public final d<s> m18989i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                return new C15258a(dVar);
            }

            /* renamed from: k */
            public final Object m18988k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                return new C15258a(dVar).m18987s(s.a);
            }

            /* renamed from: s */
            public final Object m18987s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f43462e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    this.f43462e = 1;
                    Object mo19473i = ((AbstractC14900a) ClipboardManager$OnPrimaryClipChangedListenerC15254i0.this.f43453o.get()).mo19473i((String) C15257c.this.f43460g.a, this);
                    obj = mo19473i;
                    if (mo19473i == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15257c(c0 c0Var, boolean z, d dVar) {
            super(2, dVar);
            ClipboardManager$OnPrimaryClipChangedListenerC15254i0.this = r5;
            this.f43460g = c0Var;
            this.f43461h = z;
        }

        /* renamed from: i */
        public final d<s> m18992i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15257c(this.f43460g, this.f43461h, dVar);
        }

        /* renamed from: k */
        public final Object m18991k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15257c(this.f43460g, this.f43461h, dVar).m18990s(s.a);
        }

        /* renamed from: s */
        public final Object m18990s(Object obj) {
            s sVar = s.a;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43458e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f fVar = ClipboardManager$OnPrimaryClipChangedListenerC15254i0.this.f43455q;
                C15258a c15258a = new C15258a(null);
                this.f43458e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c15258a, this);
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
            if (kVar != null) {
                String str = (String) kVar.a;
                boolean booleanValue = ((Boolean) kVar.b).booleanValue();
                ((AbstractC14900a) ClipboardManager$OnPrimaryClipChangedListenerC15254i0.this.f43453o.get()).mo19480b(str);
                ((AbstractC14900a) ClipboardManager$OnPrimaryClipChangedListenerC15254i0.this.f43453o.get()).mo19476f(this.f43461h);
                ClipboardManager$OnPrimaryClipChangedListenerC15254i0 clipboardManager$OnPrimaryClipChangedListenerC15254i0 = ClipboardManager$OnPrimaryClipChangedListenerC15254i0.this;
                boolean z2 = this.f43461h;
                Objects.requireNonNull(clipboardManager$OnPrimaryClipChangedListenerC15254i0);
                if (booleanValue && !z2 && ((!s1.z.c.l.a(str, clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43441c)) || SystemClock.elapsedRealtime() > clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43440b + 500)) {
                    if (!((AbstractC14900a) clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43453o.get()).mo19478d() || !((AbstractC19219a0) clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43446h.get()).mo13825h("android.permission.READ_PHONE_STATE") || !((AbstractC19219a0) clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43446h.get()).mo13822k() || !((AbstractC19321u) clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43452n.get()).mo13429d() || !((AbstractC19022f0) clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43448j.get()).mo14245a()) {
                        z = false;
                    }
                    if (z) {
                        clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43440b = SystemClock.elapsedRealtime();
                        clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43441c = str;
                        p1 p1Var = clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43443e;
                        if (p1Var != null) {
                            p1Var.d(new CancellationException("Next search requested"));
                        }
                        clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43443e = s1.a.a.a.v0.f.d.w2(h1.a, clipboardManager$OnPrimaryClipChangedListenerC15254i0.f43454p, (j0) null, new C7417a2(clipboardManager$OnPrimaryClipChangedListenerC15254i0, str, null), 2, (Object) null);
                    }
                }
            }
            return sVar;
        }
    }

    /* renamed from: e.a.i0$d */
    /* loaded from: classes4-dex2jar.jar:e/a/i0$d.class */
    public static final class C15259d extends m implements l<ClipboardManager, String> {

        /* renamed from: b */
        public static final C15259d f43464b = new C15259d();

        public C15259d() {
            super(1);
        }

        /* renamed from: d */
        public Object m18986d(Object obj) {
            ClipDescription description;
            ClipboardManager clipboardManager = (ClipboardManager) obj;
            s1.z.c.l.e(clipboardManager, "$receiver");
            ClipData primaryClip = clipboardManager.getPrimaryClip();
            String str = null;
            if (primaryClip != null) {
                s1.z.c.l.d(primaryClip, "it");
                s1.z.c.l.d(primaryClip.getDescription(), "it.description");
                boolean z = true;
                if (!(!s1.z.c.l.a(description.getLabel(), "com.truecaller.OTP")) || primaryClip.getItemCount() <= 0) {
                    z = false;
                }
                if (!z) {
                    primaryClip = null;
                }
                str = null;
                if (primaryClip != null) {
                    ClipData.Item itemAt = primaryClip.getItemAt(0);
                    str = null;
                    if (itemAt != null) {
                        CharSequence text = itemAt.getText();
                        str = null;
                        if (text != null) {
                            str = text.toString();
                        }
                    }
                }
            }
            return str;
        }
    }

    @Inject
    public ClipboardManager$OnPrimaryClipChangedListenerC15254i0(Provider<ClipboardManager> provider, a<AbstractC19219a0> aVar, a<AbstractC19044j> aVar2, a<AbstractC19022f0> aVar3, a<AbstractC14028r> aVar4, a<AbstractC14835j> aVar5, a<AbstractC8621z> aVar6, a<AbstractC19321u> aVar7, a<AbstractC14900a> aVar8, @Named("UI") f fVar, @Named("IO") f fVar2) {
        s1.z.c.l.e(provider, "clipboardManager");
        s1.z.c.l.e(aVar, "permissionUtil");
        s1.z.c.l.e(aVar2, "appListener");
        s1.z.c.l.e(aVar3, "deviceManager");
        s1.z.c.l.e(aVar4, "searchManager");
        s1.z.c.l.e(aVar5, "filterManager");
        s1.z.c.l.e(aVar6, "phoneNumberHelper");
        s1.z.c.l.e(aVar7, "networkUtil");
        s1.z.c.l.e(aVar8, "clipboardDataManager");
        s1.z.c.l.e(fVar, "uiCoroutineContext");
        s1.z.c.l.e(fVar2, "asyncCoroutineContext");
        this.f43445g = provider;
        this.f43446h = aVar;
        this.f43447i = aVar2;
        this.f43448j = aVar3;
        this.f43449k = aVar4;
        this.f43450l = aVar5;
        this.f43451m = aVar6;
        this.f43452n = aVar7;
        this.f43453o = aVar8;
        this.f43454p = fVar;
        this.f43455q = fVar2;
        this.f43442d = s1.a.a.a.v0.f.d.h(fVar.plus(s1.a.a.a.v0.f.d.n((p1) null, 1)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final <T> T m18995a(ClipboardManager clipboardManager, l<? super ClipboardManager, ? extends T> lVar) {
        T t;
        try {
            t = lVar.d(clipboardManager);
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            t = null;
        }
        return t;
    }

    /* renamed from: b */
    public final void m18994b(AbstractC15256b abstractC15256b) {
        this.f43439a = abstractC15256b;
        Object obj = this.f43445g.get();
        s1.z.c.l.d(obj, "clipboardManager.get()");
        m18995a((ClipboardManager) obj, new C15255a(0, this));
        p1 p1Var = this.f43443e;
        if (p1Var != null) {
            p1Var.d(new CancellationException("SearchOnCopyHelper destroyed"));
        }
        if (abstractC15256b != null) {
            Object obj2 = this.f43445g.get();
            s1.z.c.l.d(obj2, "clipboardManager.get()");
            m18995a((ClipboardManager) obj2, new C15255a(1, this));
        }
    }

    @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
    public void onPrimaryClipChanged() {
        Object obj = this.f43447i.get();
        s1.z.c.l.d(obj, "appListener.get()");
        boolean mo14186b = ((AbstractC19044j) obj).mo14186b();
        c0 c0Var = new c0();
        Object obj2 = this.f43445g.get();
        s1.z.c.l.d(obj2, "clipboardManager.get()");
        String str = (String) m18995a((ClipboardManager) obj2, C15259d.f43464b);
        if (str != null) {
            c0Var.a = str;
            p1 p1Var = this.f43444f;
            if (p1Var != null) {
                s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
            }
            this.f43444f = s1.a.a.a.v0.f.d.w2(this.f43442d, (f) null, (j0) null, new C15257c(c0Var, mo14186b, null), 3, (Object) null);
        }
    }
}
