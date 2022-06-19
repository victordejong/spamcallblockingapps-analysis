package p193e.p194a.p1080o.p1081a.p1095i;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.contextcall.C3771R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import kotlin.Metadata;
import n3.b.a.q;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1080o.p1102o.C18793f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b��\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0017\u001a\u00020\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Le/a/o/a/i/a;", "Ln3/b/a/q;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "", "getTheme", "()I", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/o/o/f;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/o/o/f;", "binding", "<init>", "()V", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.o.a.i.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/i/a.class */
public final class C18653a extends q {

    /* renamed from: b */
    public static final /* synthetic */ l[] f52475b = {C22128a.m8621g0(C18653a.class, "binding", "getBinding()Lcom/truecaller/contextcall/databinding/ContextCallDialogOnDemandInfoBinding;", 0)};

    /* renamed from: a */
    public final ViewBindingProperty f52476a = new C19350a(new C18654a());

    /* renamed from: e.a.o.a.i.a$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/i/a$a.class */
    public static final class C18654a extends m implements s1.z.b.l<C18653a, C18793f> {
        public C18654a() {
            super(1);
        }

        /* renamed from: d */
        public Object m14664d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            return C18793f.m14464a(fragment.requireView());
        }
    }

    /* renamed from: e.a.o.a.i.a$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/i/a$b.class */
    public static final class View$OnClickListenerC18655b implements View.OnClickListener {
        public View$OnClickListenerC18655b() {
            C18653a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C18653a.this.dismiss();
        }
    }

    public int getTheme() {
        return C3771R.style.StyleX_Dialog_Startup;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C3771R.layout.context_call_dialog_on_demand_info, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C18653a.super.onViewCreated(view, bundle);
        ((C18793f) this.f52476a.m34468b(this, f52475b[0])).f52793b.setOnClickListener(new View$OnClickListenerC18655b());
    }
}
