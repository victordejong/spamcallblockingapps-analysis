package p193e.p194a.p1399z.p1400a.p1401a;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.C2080R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.personalsafety.C4318R;
import e.m.a.g.e.d;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import o3.c.b;
import p1727n3.p1849n.AbstractC26863d;
import p1727n3.p1849n.C26866g;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1399z.C21828b;
import p193e.p194a.p1399z.C21829c;
import p193e.p194a.p1399z.C21830d;
import p193e.p194a.p1399z.C21837h;
import p193e.p194a.p1399z.C21838i;
import p193e.p194a.p1399z.C21839j;
import p193e.p194a.p1399z.C21840k;
import p193e.p194a.p1399z.p1400a.p1402b.AbstractC21826b;
import p193e.p194a.p1399z.p1400a.p1402b.AbstractC21827c;
import p193e.p194a.p1399z.p1403l.AbstractC21841a;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p437c.p578p.C10480a;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b3\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\nJ\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0018\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u001a\u0010\u0016J\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0013H\u0016¢\u0006\u0004\b \u0010\u0016J\u000f\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\nR\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00060\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001d\u0010*\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u00064"}, d2 = {"Le/a/z/a/a/a;", "Le/a/z/a/a/b;", "Le/a/z/l/a;", "Le/a/z/a/b/c;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onDestroyView", "()V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", "", "title", "setTitle", "(I)V", "desc", "kp", "text", "Fu", "", "link", "j3", "(Ljava/lang/String;)V", "id", "H3", "ps", "Lkotlin/Function0;", AbstractC2405c.f7629a, "Ls1/z/b/a;", "onDismiss", "d", "Ls1/g;", "getSource", "()Ljava/lang/String;", "source", "Le/a/z/a/b/b;", C22021b.f61237c, "Le/a/z/a/b/b;", "getPresenter", "()Le/a/z/a/b/b;", "setPresenter", "(Le/a/z/a/b/b;)V", "presenter", "<init>", "personal-safety_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.z.a.a.a */
/* loaded from: classes11-dex2jar.jar:e/a/z/a/a/a.class */
public final class C21819a extends AbstractC21824b<AbstractC21841a> implements AbstractC21827c {
    @Inject

    /* renamed from: b */
    public AbstractC21826b f60682b;

    /* renamed from: c */
    public a<s> f60683c = C21822c.f60688b;

    /* renamed from: d */
    public final g f60684d = C25225a.m3978P1(new C21823d());

    /* renamed from: e.a.z.a.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/z/a/a/a$a.class */
    public static final class View$OnClickListenerC21820a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f60685a;

        /* renamed from: b */
        public final /* synthetic */ Object f60686b;

        public View$OnClickListenerC21820a(int i, Object obj) {
            this.f60685a = i;
            this.f60686b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f60685a;
            if (i == 0) {
                AbstractC21826b abstractC21826b = ((C21819a) this.f60686b).f60682b;
                if (abstractC21826b != null) {
                    abstractC21826b.mo9028j7();
                } else {
                    l.l("presenter");
                    throw null;
                }
            } else if (i != 1) {
                throw null;
            } else {
                C21819a c21819a = (C21819a) this.f60686b;
                AbstractC21826b abstractC21826b2 = c21819a.f60682b;
                if (abstractC21826b2 != null) {
                    abstractC21826b2.mo9027lb((String) c21819a.f60684d.getValue());
                } else {
                    l.l("presenter");
                    throw null;
                }
            }
        }
    }

    /* renamed from: e.a.z.a.a.a$b */
    /* loaded from: classes11-dex2jar.jar:e/a/z/a/a/a$b.class */
    public static final class DialogInterface$OnShowListenerC21821b implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public static final DialogInterface$OnShowListenerC21821b f60687a = new DialogInterface$OnShowListenerC21821b();

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            try {
                if (dialogInterface == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
                }
                FrameLayout frameLayout = (FrameLayout) ((d) dialogInterface).findViewById(C2080R.C2082id.design_bottom_sheet);
                if (frameLayout == null) {
                    return;
                }
                BottomSheetBehavior H = BottomSheetBehavior.H(frameLayout);
                H.L(frameLayout.getHeight());
                H.M(3);
                H.K(true);
            } catch (Exception e) {
                C10480a.m26061I1(new AssertionError("Bottom sheet unavailable"));
            }
        }
    }

    /* renamed from: e.a.z.a.a.a$c */
    /* loaded from: classes11-dex2jar.jar:e/a/z/a/a/a$c.class */
    public static final class C21822c extends m implements a<s> {

        /* renamed from: b */
        public static final C21822c f60688b = new C21822c();

        public C21822c() {
            super(0);
        }

        public Object invoke() {
            return s.a;
        }
    }

    /* renamed from: e.a.z.a.a.a$d */
    /* loaded from: classes11-dex2jar.jar:e/a/z/a/a/a$d.class */
    public static final class C21823d extends m implements a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21823d() {
            super(0);
            C21819a.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
            if (r4 != null) goto L7;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object invoke() {
            /*
                r3 = this;
                r0 = r3
                e.a.z.a.a.a r0 = p193e.p194a.p1399z.p1400a.p1401a.C21819a.this
                android.os.Bundle r0 = r0.getArguments()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L1a
                r0 = r4
                java.lang.String r1 = "arg_source"
                java.lang.String r0 = r0.getString(r1)
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L1a
                goto L1d
            L1a:
                java.lang.String r0 = "side_menu"
                r4 = r0
            L1d:
                r0 = r4
                java.lang.String r1 = "arguments?.getString(ARG…AwarenessSource.SIDE_MENU"
                s1.z.c.l.d(r0, r1)
                r0 = r4
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1399z.p1400a.p1401a.C21819a.C21823d.invoke():java.lang.Object");
        }
    }

    @Override // p193e.p194a.p1399z.p1400a.p1402b.AbstractC21827c
    /* renamed from: Fu */
    public void mo9026Fu(int i) {
        AbstractC21841a abstractC21841a = this.f60690a;
        if (abstractC21841a != null) {
            abstractC21841a.mo9008e(getText(i));
        }
    }

    @Override // p193e.p194a.p1399z.p1400a.p1402b.AbstractC21827c
    /* renamed from: H3 */
    public void mo9025H3(int i) {
        AbstractC21841a abstractC21841a = this.f60690a;
        if (abstractC21841a != null) {
            abstractC21841a.mo9011b(Integer.valueOf(i));
        }
    }

    @Override // p193e.p194a.p1399z.p1400a.p1401a.AbstractC21824b
    /* renamed from: OA */
    public AbstractC21841a mo9030OA(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        l.e(layoutInflater, "inflater");
        int i = AbstractC21841a.f60712k;
        AbstractC26863d abstractC26863d = C26866g.f75137a;
        AbstractC21841a inflateInternal = ViewDataBinding.inflateInternal(layoutInflater, C4318R.layout.bottomsheet_personal_safety_awareness, viewGroup, false, (Object) null);
        l.d(inflateInternal, "PersonalSafetyAwarenessS…flater, container, false)");
        return inflateInternal;
    }

    @Override // p193e.p194a.p1399z.p1400a.p1402b.AbstractC21827c
    /* renamed from: j3 */
    public void mo9024j3(String str) {
        l.e(str, "link");
        Context context = getContext();
        if (context != null) {
            C8613t.m28203i(context, str);
        }
    }

    @Override // p193e.p194a.p1399z.p1400a.p1402b.AbstractC21827c
    /* renamed from: kp */
    public void mo9023kp(int i) {
        AbstractC21841a abstractC21841a = this.f60690a;
        if (abstractC21841a != null) {
            abstractC21841a.mo9012a(getText(i));
        }
    }

    public void onCreate(Bundle bundle) {
        C21819a.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            l.e(activity, "$this$buildPersonalSafetyComponent");
            Context applicationContext = activity.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
            AbstractC8412c m28549N = ((AbstractApplicationC8442a) applicationContext).m28549N();
            l.d(m28549N, "(this.applicationContext…licationBase).commonGraph");
            C25225a.m3846s(m28549N, AbstractC8412c.class);
            C21828b c21828b = new C21828b(m28549N);
            C21840k c21840k = new C21840k(c21828b);
            Object obj = b.c;
            if (!(c21840k instanceof b)) {
                c21840k = new b(c21840k);
            }
            C21839j c21839j = new C21839j(c21828b, c21840k);
            if (!(c21839j instanceof b)) {
                c21839j = new b(c21839j);
            }
            C21838i c21838i = new C21838i(b.b(new C21837h(c21828b, c21839j, new C21830d(m28549N), new C21829c(m28549N))));
            if (!(c21838i instanceof b)) {
                c21838i = new b(c21838i);
            }
            this.f60682b = (AbstractC21826b) c21838i.get();
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        d dVar = new d(requireContext(), C4318R.style.PersonalSafetyBottomSheetDialog);
        dVar.setOnShowListener(DialogInterface$OnShowListenerC21821b.f60687a);
        return dVar;
    }

    public void onDestroy() {
        C21819a.super.onDestroy();
        this.f60683c.invoke();
    }

    public void onDestroyView() {
        C21819a.super.onDestroyView();
        AbstractC21826b abstractC21826b = this.f60682b;
        if (abstractC21826b != null) {
            abstractC21826b.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C21819a.super.onViewCreated(view, bundle);
        AbstractC21826b abstractC21826b = this.f60682b;
        if (abstractC21826b == null) {
            l.l("presenter");
            throw null;
        }
        abstractC21826b.mo9029Y0(this);
        AbstractC21841a abstractC21841a = this.f60690a;
        if (abstractC21841a != null) {
            abstractC21841a.mo9010c(new View$OnClickListenerC21820a(0, this));
        }
        AbstractC21841a abstractC21841a2 = this.f60690a;
        if (abstractC21841a2 == null) {
            return;
        }
        abstractC21841a2.mo9009d(new View$OnClickListenerC21820a(1, this));
    }

    @Override // p193e.p194a.p1399z.p1400a.p1402b.AbstractC21827c
    /* renamed from: ps */
    public void mo9022ps() {
        dismissAllowingStateLoss();
    }

    @Override // p193e.p194a.p1399z.p1400a.p1402b.AbstractC21827c
    public void setTitle(int i) {
        AbstractC21841a abstractC21841a = this.f60690a;
        if (abstractC21841a != null) {
            abstractC21841a.mo9007f(getText(i));
        }
    }
}
