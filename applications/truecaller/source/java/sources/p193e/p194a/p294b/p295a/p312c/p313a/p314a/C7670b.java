package p193e.p194a.p294b.p295a.p312c.p313a.p314a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import e.m.a.g.e.e;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p294b.p355m.C8104u;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR$\u0010\u0016\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Le/a/b/a/c/a/a/b;", "Le/m/a/g/e/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/b/a/c/a/a/b$b;", "a", "Le/a/b/a/c/a/a/b$b;", "getListener", "()Le/a/b/a/c/a/a/b$b;", "setListener", "(Le/a/b/a/c/a/a/b$b;)V", "listener", "Le/a/b/m/u;", C22021b.f61237c, "Le/a/b/m/u;", "binding", "<init>", "()V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.c.a.a.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/b.class */
public final class C7670b extends e {

    /* renamed from: a */
    public AbstractC7672b f24052a;

    /* renamed from: b */
    public C8104u f24053b;

    /* renamed from: e.a.b.a.c.a.a.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/b/a/c/a/a/b$a.class */
    public static final class View$OnClickListenerC7671a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f24054a;

        /* renamed from: b */
        public final /* synthetic */ Object f24055b;

        public View$OnClickListenerC7671a(int i, Object obj) {
            this.f24054a = i;
            this.f24055b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f24054a;
            if (i == 0) {
                AbstractC7672b abstractC7672b = ((C7670b) this.f24055b).f24052a;
                if (abstractC7672b != null) {
                    abstractC7672b.mo29455f0();
                }
                ((C7670b) this.f24055b).dismiss();
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC7672b abstractC7672b2 = ((C7670b) this.f24055b).f24052a;
                if (abstractC7672b2 != null) {
                    abstractC7672b2.mo29454j0();
                }
                ((C7670b) this.f24055b).dismiss();
            }
        }
    }

    /* renamed from: e.a.b.a.c.a.a.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/b$b.class */
    public interface AbstractC7672b {
        /* renamed from: f0 */
        void mo29455f0();

        /* renamed from: j0 */
        void mo29454j0();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3478R.layout.bottomsheet_onboarding_cancellation, viewGroup, false);
        int i = C3478R.C3480id.btnCancel;
        MaterialButton findViewById = inflate.findViewById(i);
        if (findViewById != null) {
            i = C3478R.C3480id.btnContinue;
            MaterialButton findViewById2 = inflate.findViewById(i);
            if (findViewById2 != null) {
                i = C3478R.C3480id.textView5;
                TextView textView = (TextView) inflate.findViewById(i);
                if (textView != null) {
                    C8104u c8104u = new C8104u((ConstraintLayout) inflate, findViewById, findViewById2, textView);
                    l.d(c8104u, "BottomsheetOnboardingCan…flater, container, false)");
                    this.f24053b = c8104u;
                    if (c8104u != null) {
                        return c8104u.f25107a;
                    }
                    l.l("binding");
                    throw null;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C7670b.super.onViewCreated(view, bundle);
        C8104u c8104u = this.f24053b;
        if (c8104u == null) {
            l.l("binding");
            throw null;
        }
        c8104u.f25108b.setOnClickListener(new View$OnClickListenerC7671a(0, this));
        c8104u.f25109c.setOnClickListener(new View$OnClickListenerC7671a(1, this));
    }
}
