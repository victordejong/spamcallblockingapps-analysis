package com.truecaller.acs.p130qa;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.C2752R;
import com.truecaller.data.entity.SearchWarning;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18143a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p294b.p336i.AbstractC7919c;
import p193e.p194a.p773g.p784i.C14266a;
import p193e.p194a.p947k.AbstractC16111h;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.t0;
import q3.a.y2.q;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b6\u0010\u0012J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\u0007\u001a\u00020\u0004H\u0082@ø\u0001��¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\t\u001a\u00020\u0004H\u0082@ø\u0001��¢\u0006\u0004\b\t\u0010\bJ\u001b\u0010\f\u001a\n \u000b*\u0004\u0018\u00010\n0\nH\u0082@ø\u0001��¢\u0006\u0004\b\f\u0010\bJ\u001b\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0082@ø\u0001��¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0013\u0010\u0014\u001a\u00020\r*\u00020\rH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u001d\u0010\u001e\u001a\u00020\u00198F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010 R\u001d\u0010'\u001a\u00020#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u001b\u001a\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010*R\u001d\u00100\u001a\u00020,8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b-\u0010\u001b\u001a\u0004\b.\u0010/R\u001d\u00105\u001a\u0002018B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010\u001b\u001a\u0004\b3\u00104\u0082\u0002\u0004\n\u0002\b\u0019¨\u00067"}, d2 = {"Lcom/truecaller/acs/qa/AcsQaActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "va", "(Ls1/w/d;)Ljava/lang/Object;", "wa", "Lcom/truecaller/data/entity/HistoryEvent;", "kotlin.jvm.PlatformType", "qa", "", "phoneNumber", "pa", "(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;", "onDestroy", "()V", "sa", "ta", "(Ljava/lang/String;)Ljava/lang/String;", "Lq3/a/p1;", "ua", "(Ljava/lang/String;)Lq3/a/p1;", "Le/a/p5/c;", AbstractC2405c.f7629a, "Ls1/g;", "getClock", "()Le/a/p5/c;", "clock", C22021b.f61237c, "Ljava/lang/String;", "loremIpsum", "e", "Lcom/truecaller/data/entity/SearchWarning;", "f", "getSearchWarning", "()Lcom/truecaller/data/entity/SearchWarning;", "searchWarning", "Le/a/m3/a;", "g", "Le/a/m3/a;", "binding", "Le/a/b/i/c;", "d", "getBizMonCallMeBackManager", "()Le/a/b/i/c;", "bizMonCallMeBackManager", "Le/a/j2;", "a", "ra", "()Le/a/j2;", "trueGraph", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.acs.qa.AcsQaActivity */
/* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity.class */
public final class AcsQaActivity extends h {

    /* renamed from: h */
    public static final /* synthetic */ int f9669h = 0;

    /* renamed from: a */
    public final g f9670a = C25225a.m3978P1(new C2797k());

    /* renamed from: b */
    public final String f9671b = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \n        |quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse \n        |cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est \n        |laborum.";

    /* renamed from: c */
    public final g f9672c = C25225a.m3978P1(new C2788d());

    /* renamed from: d */
    public final g f9673d = C25225a.m3978P1(new C2786b());

    /* renamed from: e */
    public String f9674e = "+46735358210";

    /* renamed from: f */
    public final g f9675f = C25225a.m3978P1(C2794h.f9702b);

    /* renamed from: g */
    public C18143a f9676g;

    @e(c = "com.truecaller.acs.qa.AcsQaActivity", f = "AcsQaActivity.kt", l = {256}, m = "addIncomingVideoId")
    /* renamed from: com.truecaller.acs.qa.AcsQaActivity$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$a.class */
    public static final class C2785a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f9677d;

        /* renamed from: e */
        public int f9678e;

        /* renamed from: g */
        public Object f9680g;

        /* renamed from: h */
        public Object f9681h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2785a(d dVar) {
            super(dVar);
            AcsQaActivity.this = r4;
        }

        /* renamed from: s */
        public final Object m36020s(Object obj) {
            this.f9677d = obj;
            this.f9678e |= Integer.MIN_VALUE;
            return AcsQaActivity.this.m36028pa(null, this);
        }
    }

    /* renamed from: com.truecaller.acs.qa.AcsQaActivity$b */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$b.class */
    public static final class C2786b extends m implements a<AbstractC7919c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2786b() {
            super(0);
            AcsQaActivity.this = r4;
        }

        public Object invoke() {
            AcsQaActivity acsQaActivity = AcsQaActivity.this;
            int i = AcsQaActivity.f9669h;
            return acsQaActivity.m36026ra().mo12590Q2();
        }
    }

    @e(c = "com.truecaller.acs.qa.AcsQaActivity", f = "AcsQaActivity.kt", l = {170}, m = "buildHistoryEvent")
    /* renamed from: com.truecaller.acs.qa.AcsQaActivity$c */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$c.class */
    public static final class C2787c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f9683d;

        /* renamed from: e */
        public int f9684e;

        /* renamed from: g */
        public Object f9686g;

        /* renamed from: h */
        public Object f9687h;

        /* renamed from: i */
        public Object f9688i;

        /* renamed from: j */
        public Object f9689j;

        /* renamed from: k */
        public Object f9690k;

        /* renamed from: l */
        public Object f9691l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2787c(d dVar) {
            super(dVar);
            AcsQaActivity.this = r4;
        }

        /* renamed from: s */
        public final Object m36019s(Object obj) {
            this.f9683d = obj;
            this.f9684e |= Integer.MIN_VALUE;
            return AcsQaActivity.this.m36027qa(this);
        }
    }

    /* renamed from: com.truecaller.acs.qa.AcsQaActivity$d */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$d.class */
    public static final class C2788d extends m implements a<AbstractC19222c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2788d() {
            super(0);
            AcsQaActivity.this = r4;
        }

        public Object invoke() {
            AcsQaActivity acsQaActivity = AcsQaActivity.this;
            int i = AcsQaActivity.f9669h;
            AbstractC19222c mo11637k = acsQaActivity.m36026ra().mo11637k();
            l.d(mo11637k, "trueGraph.clock()");
            return mo11637k;
        }
    }

    /* renamed from: com.truecaller.acs.qa.AcsQaActivity$e */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$e.class */
    public static final class View$OnClickListenerC2789e implements View.OnClickListener {

        @e(c = "com.truecaller.acs.qa.AcsQaActivity$onCreate$1$1", f = "AcsQaActivity.kt", l = {75}, m = "invokeSuspend")
        /* renamed from: com.truecaller.acs.qa.AcsQaActivity$e$a */
        /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$e$a.class */
        public static final class C2790a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f9694e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C2790a(d dVar) {
                super(2, dVar);
                View$OnClickListenerC2789e.this = r5;
            }

            /* renamed from: i */
            public final d<s> m36018i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C2790a(dVar);
            }

            /* renamed from: k */
            public final Object m36017k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C2790a(dVar).m36016s(s.a);
            }

            /* renamed from: s */
            public final Object m36016s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f9694e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    AcsQaActivity acsQaActivity = AcsQaActivity.this;
                    this.f9694e = 1;
                    if (acsQaActivity.m36022va(this) == aVar) {
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

        public View$OnClickListenerC2789e() {
            AcsQaActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            h1 h1Var = h1.a;
            t0 t0Var = t0.a;
            s1.a.a.a.v0.f.d.w2(h1Var, q.c, (j0) null, new C2790a(null), 2, (Object) null);
        }
    }

    /* renamed from: com.truecaller.acs.qa.AcsQaActivity$f */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$f.class */
    public static final class View$OnClickListenerC2791f implements View.OnClickListener {

        @e(c = "com.truecaller.acs.qa.AcsQaActivity$onCreate$2$1", f = "AcsQaActivity.kt", l = {80}, m = "invokeSuspend")
        /* renamed from: com.truecaller.acs.qa.AcsQaActivity$f$a */
        /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$f$a.class */
        public static final class C2792a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f9697e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C2792a(d dVar) {
                super(2, dVar);
                View$OnClickListenerC2791f.this = r5;
            }

            /* renamed from: i */
            public final d<s> m36015i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C2792a(dVar);
            }

            /* renamed from: k */
            public final Object m36014k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C2792a(dVar).m36013s(s.a);
            }

            /* renamed from: s */
            public final Object m36013s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f9697e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    AcsQaActivity acsQaActivity = AcsQaActivity.this;
                    this.f9697e = 1;
                    if (acsQaActivity.m36021wa(this) == aVar) {
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

        public View$OnClickListenerC2791f() {
            AcsQaActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            h1 h1Var = h1.a;
            t0 t0Var = t0.a;
            s1.a.a.a.v0.f.d.w2(h1Var, q.c, (j0) null, new C2792a(null), 2, (Object) null);
        }
    }

    @e(c = "com.truecaller.acs.qa.AcsQaActivity$removeIncomingVideo$1", f = "AcsQaActivity.kt", l = {276}, m = "invokeSuspend")
    /* renamed from: com.truecaller.acs.qa.AcsQaActivity$g */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$g.class */
    public static final class C2793g extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f9699e;

        /* renamed from: g */
        public final /* synthetic */ String f9701g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2793g(String str, d dVar) {
            super(2, dVar);
            AcsQaActivity.this = r5;
            this.f9701g = str;
        }

        /* renamed from: i */
        public final d<s> m36012i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C2793g(this.f9701g, dVar);
        }

        /* renamed from: k */
        public final Object m36011k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C2793g(this.f9701g, dVar).m36010s(s.a);
        }

        /* renamed from: s */
        public final Object m36010s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f9699e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AcsQaActivity acsQaActivity = AcsQaActivity.this;
                int i2 = AcsQaActivity.f9669h;
                AbstractC16111h mo12134y = acsQaActivity.m36026ra().mo12134y();
                String str = this.f9701g;
                this.f9699e = 1;
                if (mo12134y.mo17828r(str, this) == aVar) {
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

    /* renamed from: com.truecaller.acs.qa.AcsQaActivity$h */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$h.class */
    public static final class C2794h extends m implements a<SearchWarning> {

        /* renamed from: b */
        public static final C2794h f9702b = new C2794h();

        public C2794h() {
            super(0);
        }

        public Object invoke() {
            SearchWarning searchWarning = new SearchWarning();
            searchWarning.setId("2147483647");
            return searchWarning;
        }
    }

    @e(c = "com.truecaller.acs.qa.AcsQaActivity", f = "AcsQaActivity.kt", l = {87}, m = "showAcsPopup")
    /* renamed from: com.truecaller.acs.qa.AcsQaActivity$i */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$i.class */
    public static final class C2795i extends c {

        /* renamed from: d */
        public /* synthetic */ Object f9703d;

        /* renamed from: e */
        public int f9704e;

        /* renamed from: g */
        public Object f9706g;

        /* renamed from: h */
        public Object f9707h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2795i(d dVar) {
            super(dVar);
            AcsQaActivity.this = r4;
        }

        /* renamed from: s */
        public final Object m36009s(Object obj) {
            this.f9703d = obj;
            this.f9704e |= Integer.MIN_VALUE;
            return AcsQaActivity.this.m36022va(this);
        }
    }

    @e(c = "com.truecaller.acs.qa.AcsQaActivity", f = "AcsQaActivity.kt", l = {116}, m = "showAcsScreen")
    /* renamed from: com.truecaller.acs.qa.AcsQaActivity$j */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$j.class */
    public static final class C2796j extends c {

        /* renamed from: d */
        public /* synthetic */ Object f9708d;

        /* renamed from: e */
        public int f9709e;

        /* renamed from: g */
        public Object f9711g;

        /* renamed from: h */
        public Object f9712h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2796j(d dVar) {
            super(dVar);
            AcsQaActivity.this = r4;
        }

        /* renamed from: s */
        public final Object m36008s(Object obj) {
            this.f9708d = obj;
            this.f9709e |= Integer.MIN_VALUE;
            return AcsQaActivity.this.m36021wa(this);
        }
    }

    /* renamed from: com.truecaller.acs.qa.AcsQaActivity$k */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/acs/qa/AcsQaActivity$k.class */
    public static final class C2797k extends m implements a<AbstractC15539j2> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2797k() {
            super(0);
            AcsQaActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.app.Activity, com.truecaller.acs.qa.AcsQaActivity] */
        public Object invoke() {
            Context applicationContext = AcsQaActivity.this.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            return ((AbstractC21187w1) applicationContext).mo10154s();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        AbstractC19230g mo12512W = m36026ra().mo12512W();
        l.d(mo12512W, "trueGraph.deviceInfoHelper()");
        if (!mo12512W.mo13796a() && !mo12512W.mo13788i()) {
            finish();
        }
        C17422k.m16066m0(this, true);
        AcsQaActivity.super.onCreate(bundle);
        View inflate = LayoutInflater.from(this).inflate(C2752R.layout.activity_acs_qa, (ViewGroup) null, false);
        int i = 2131364105;
        SwitchCompat switchCompat = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasAddressSwitch);
        if (switchCompat != null) {
            i = 2131364106;
            SwitchCompat switchCompat2 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasAltNameSwitch);
            if (switchCompat2 != null) {
                i = 2131364107;
                SwitchCompat switchCompat3 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasAvatarSwitch);
                if (switchCompat3 != null) {
                    i = 2131364108;
                    SwitchCompat switchCompat4 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasBizmonCallMeBack);
                    if (switchCompat4 != null) {
                        i = 2131364109;
                        SwitchCompat switchCompat5 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasBizmonLandscapeVideo);
                        if (switchCompat5 != null) {
                            i = 2131364110;
                            SwitchCompat switchCompat6 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasBizmonPortraitVideo);
                            if (switchCompat6 != null) {
                                i = 2131364111;
                                SwitchCompat switchCompat7 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasBizmonVideoWithAudio);
                                if (switchCompat7 != null) {
                                    i = 2131364112;
                                    SwitchCompat switchCompat8 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasCallContext);
                                    if (switchCompat8 != null) {
                                        i = 2131364115;
                                        SwitchCompat switchCompat9 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasJobSwitch);
                                        if (switchCompat9 != null) {
                                            i = 2131364116;
                                            SwitchCompat switchCompat10 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasNameSwitch);
                                            if (switchCompat10 != null) {
                                                i = 2131364118;
                                                SwitchCompat switchCompat11 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasSearchWarnings);
                                                if (switchCompat11 != null) {
                                                    i = 2131364119;
                                                    SwitchCompat switchCompat12 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasSearchWarningsMessage);
                                                    if (switchCompat12 != null) {
                                                        i = 2131364121;
                                                        SwitchCompat switchCompat13 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasSpamReportsSwitch);
                                                        if (switchCompat13 != null) {
                                                            i = 2131364122;
                                                            SwitchCompat switchCompat14 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasTagSwitch);
                                                            if (switchCompat14 != null) {
                                                                i = 2131364123;
                                                                SwitchCompat switchCompat15 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasTransliteratedNameSwitch);
                                                                if (switchCompat15 != null) {
                                                                    i = 2131364124;
                                                                    SwitchCompat switchCompat16 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.hasVideoId);
                                                                    if (switchCompat16 != null) {
                                                                        i = 2131364454;
                                                                        SwitchCompat switchCompat17 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.isBusinessSwitch);
                                                                        if (switchCompat17 != null) {
                                                                            i = 2131364455;
                                                                            SwitchCompat switchCompat18 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.isCredPrivilegeSwitch);
                                                                            if (switchCompat18 != null) {
                                                                                i = 2131364456;
                                                                                SwitchCompat switchCompat19 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.isGoldSwitch);
                                                                                if (switchCompat19 != null) {
                                                                                    i = 2131364457;
                                                                                    SwitchCompat switchCompat20 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.isInPhoneBook);
                                                                                    if (switchCompat20 != null) {
                                                                                        i = 2131364458;
                                                                                        SwitchCompat switchCompat21 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.isIncomingCall);
                                                                                        if (switchCompat21 != null) {
                                                                                            i = 2131364460;
                                                                                            SwitchCompat switchCompat22 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.isOutgoingCall);
                                                                                            if (switchCompat22 != null) {
                                                                                                i = 2131364462;
                                                                                                SwitchCompat switchCompat23 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.isPremiumSwitch);
                                                                                                if (switchCompat23 != null) {
                                                                                                    i = 2131364463;
                                                                                                    SwitchCompat switchCompat24 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.isPrioritySwitch);
                                                                                                    if (switchCompat24 != null) {
                                                                                                        i = 2131364465;
                                                                                                        SwitchCompat switchCompat25 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.isSpamSwitch);
                                                                                                        if (switchCompat25 != null) {
                                                                                                            i = 2131364466;
                                                                                                            SwitchCompat switchCompat26 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.isVerifiedBusinessSwitch);
                                                                                                            if (switchCompat26 != null) {
                                                                                                                i = 2131364467;
                                                                                                                SwitchCompat switchCompat27 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.isVerifiedSwitch);
                                                                                                                if (switchCompat27 != null) {
                                                                                                                    i = 2131365874;
                                                                                                                    SwitchCompat switchCompat28 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.showAd);
                                                                                                                    if (switchCompat28 != null) {
                                                                                                                        i = 2131365883;
                                                                                                                        Button button = (Button) inflate.findViewById(C2752R.C2754id.showFullScreen);
                                                                                                                        if (button != null) {
                                                                                                                            i = 2131365887;
                                                                                                                            Button button2 = (Button) inflate.findViewById(C2752R.C2754id.showPopup);
                                                                                                                            if (button2 != null) {
                                                                                                                                i = 2131365894;
                                                                                                                                SwitchCompat switchCompat29 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.showTimezone);
                                                                                                                                if (switchCompat29 != null) {
                                                                                                                                    i = 2131366145;
                                                                                                                                    TextInputEditText findViewById = inflate.findViewById(C2752R.C2754id.surveyFrequencyEditText);
                                                                                                                                    if (findViewById != null) {
                                                                                                                                        i = 2131366146;
                                                                                                                                        TextInputLayout textInputLayout = (TextInputLayout) inflate.findViewById(C2752R.C2754id.surveyFrequencyTextInputLayout);
                                                                                                                                        if (textInputLayout != null) {
                                                                                                                                            i = 2131366147;
                                                                                                                                            TextInputEditText findViewById2 = inflate.findViewById(C2752R.C2754id.surveyIdEditText);
                                                                                                                                            if (findViewById2 != null) {
                                                                                                                                                i = 2131366148;
                                                                                                                                                TextInputLayout textInputLayout2 = (TextInputLayout) inflate.findViewById(C2752R.C2754id.surveyIdTextInputLayout);
                                                                                                                                                if (textInputLayout2 != null) {
                                                                                                                                                    i = 2131366169;
                                                                                                                                                    ScrollView scrollView = (ScrollView) inflate.findViewById(C2752R.C2754id.switchContainer);
                                                                                                                                                    if (scrollView != null) {
                                                                                                                                                        i = 2131366725;
                                                                                                                                                        SwitchCompat switchCompat30 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.useLongText);
                                                                                                                                                        if (switchCompat30 != null) {
                                                                                                                                                            C18143a c18143a = new C18143a((LinearLayout) inflate, switchCompat, switchCompat2, switchCompat3, switchCompat4, switchCompat5, switchCompat6, switchCompat7, switchCompat8, switchCompat9, switchCompat10, switchCompat11, switchCompat12, switchCompat13, switchCompat14, switchCompat15, switchCompat16, switchCompat17, switchCompat18, switchCompat19, switchCompat20, switchCompat21, switchCompat22, switchCompat23, switchCompat24, switchCompat25, switchCompat26, switchCompat27, switchCompat28, button, button2, switchCompat29, findViewById, textInputLayout, findViewById2, textInputLayout2, scrollView, switchCompat30);
                                                                                                                                                            l.d(c18143a, "ActivityAcsQaBinding.inf…ayoutInflater.from(this))");
                                                                                                                                                            this.f9676g = c18143a;
                                                                                                                                                            setContentView(c18143a.f51062a);
                                                                                                                                                            C18143a c18143a2 = this.f9676g;
                                                                                                                                                            if (c18143a2 == null) {
                                                                                                                                                                l.l("binding");
                                                                                                                                                                throw null;
                                                                                                                                                            }
                                                                                                                                                            c18143a2.f51057D.setOnClickListener(new View$OnClickListenerC2789e());
                                                                                                                                                            C18143a c18143a3 = this.f9676g;
                                                                                                                                                            if (c18143a3 != null) {
                                                                                                                                                                c18143a3.f51056C.setOnClickListener(new View$OnClickListenerC2791f());
                                                                                                                                                                return;
                                                                                                                                                            } else {
                                                                                                                                                                l.l("binding");
                                                                                                                                                                throw null;
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDestroy() {
        AcsQaActivity.super.onDestroy();
        m36023ua(this.f9674e);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    /* renamed from: pa */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m36028pa(java.lang.String r17, s1.w.d<? super s1.s> r18) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.acs.p130qa.AcsQaActivity.m36028pa(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x08c9  */
    /* JADX WARN: Type inference failed for: r0v450, types: [long] */
    /* JADX WARN: Type inference failed for: r0v458 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* renamed from: qa */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m36027qa(s1.w.d<? super com.truecaller.data.entity.HistoryEvent> r12) {
        /*
            Method dump skipped, instructions count: 2385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.acs.p130qa.AcsQaActivity.m36027qa(s1.w.d):java.lang.Object");
    }

    /* renamed from: ra */
    public final AbstractC15539j2 m36026ra() {
        return (AbstractC15539j2) this.f9670a.getValue();
    }

    /* renamed from: sa */
    public final void m36025sa() {
        C18143a c18143a = this.f9676g;
        if (c18143a == null) {
            l.l("binding");
            throw null;
        }
        SwitchCompat switchCompat = c18143a.f51073l;
        l.d(switchCompat, "binding.hasSearchWarnings");
        if (!switchCompat.isChecked()) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(h1.a, (f) null, (j0) null, new C14266a(this, null), 3, (Object) null);
    }

    /* renamed from: ta */
    public final String m36024ta(String str) {
        C18143a c18143a = this.f9676g;
        if (c18143a == null) {
            l.l("binding");
            throw null;
        }
        SwitchCompat switchCompat = c18143a.f51061L;
        l.d(switchCompat, "binding.useLongText");
        if (switchCompat.isChecked()) {
            str = this.f9671b;
        }
        return str;
    }

    /* renamed from: ua */
    public final p1 m36023ua(String str) {
        return s1.a.a.a.v0.f.d.w2(h1.a, t0.d, (j0) null, new C2793g(str, null), 2, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.content.Context] */
    /* renamed from: va */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m36022va(s1.w.d<? super s1.s> r7) {
        /*
            r6 = this;
            r0 = r7
            boolean r0 = r0 instanceof com.truecaller.acs.p130qa.AcsQaActivity.C2795i
            if (r0 == 0) goto L27
            r0 = r7
            com.truecaller.acs.qa.AcsQaActivity$i r0 = (com.truecaller.acs.p130qa.AcsQaActivity.C2795i) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f9704e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f9704e = r1
            r0 = r8
            r7 = r0
            goto L31
        L27:
            com.truecaller.acs.qa.AcsQaActivity$i r0 = new com.truecaller.acs.qa.AcsQaActivity$i
            r1 = r0
            r2 = r6
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L31:
            r0 = r7
            java.lang.Object r0 = r0.f9703d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r7
            int r0 = r0.f9704e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L71
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L66
            r0 = r7
            java.lang.Object r0 = r0.f9707h
            android.content.Context r0 = (android.content.Context) r0
            r11 = r0
            r0 = r7
            java.lang.Object r0 = r0.f9706g
            com.truecaller.acs.ui.popup.AfterCallPopupActivity$b r0 = (com.truecaller.acs.p131ui.popup.AfterCallPopupActivity.C2800b) r0
            r8 = r0
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r11
            r7 = r0
            goto La0
        L66:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L71:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            r0.m36025sa()
            com.truecaller.acs.ui.popup.AfterCallPopupActivity$b r0 = com.truecaller.acs.p131ui.popup.AfterCallPopupActivity.f9723g
            r8 = r0
            r0 = r7
            r1 = r8
            r0.f9706g = r1
            r0 = r7
            r1 = r6
            r0.f9707h = r1
            r0 = r7
            r1 = 1
            r0.f9704e = r1
            r0 = r6
            r1 = r7
            java.lang.Object r0 = r0.m36027qa(r1)
            r10 = r0
            r0 = r10
            r1 = r11
            if (r0 != r1) goto L9e
            r0 = r11
            return r0
        L9e:
            r0 = r6
            r7 = r0
        La0:
            r0 = r10
            java.lang.String r1 = "buildHistoryEvent()"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            r1 = r7
            r2 = r10
            com.truecaller.data.entity.HistoryEvent r2 = (com.truecaller.data.entity.HistoryEvent) r2
            r3 = 0
            r4 = 0
            r0.m35997b(r1, r2, r3, r4)
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.acs.p130qa.AcsQaActivity.m36022va(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.content.Context] */
    /* renamed from: wa */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m36021wa(s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 195
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.acs.p130qa.AcsQaActivity.m36021wa(s1.w.d):java.lang.Object");
    }
}
