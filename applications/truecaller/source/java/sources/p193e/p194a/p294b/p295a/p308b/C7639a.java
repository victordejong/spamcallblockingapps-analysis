package p193e.p194a.p294b.p295a.p308b;

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
import p193e.p194a.p294b.p355m.C8098r;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR$\u0010\u0016\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Le/a/b/a/b/a;", "Le/m/a/g/e/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/b/a/b/a$b;", "a", "Le/a/b/a/b/a$b;", "getListener", "()Le/a/b/a/b/a$b;", "setListener", "(Le/a/b/a/b/a$b;)V", "listener", "Le/a/b/m/r;", C22021b.f61237c, "Le/a/b/m/r;", "binding", "<init>", "()V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.b.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/b/a.class */
public final class C7639a extends e {

    /* renamed from: a */
    public AbstractC7641b f24010a;

    /* renamed from: b */
    public C8098r f24011b;

    /* renamed from: e.a.b.a.b.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/b/a/b/a$a.class */
    public static final class View$OnClickListenerC7640a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f24012a;

        /* renamed from: b */
        public final /* synthetic */ Object f24013b;

        public View$OnClickListenerC7640a(int i, Object obj) {
            this.f24012a = i;
            this.f24013b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f24012a;
            if (i == 0) {
                AbstractC7641b abstractC7641b = ((C7639a) this.f24013b).f24010a;
                if (abstractC7641b != null) {
                    abstractC7641b.mo29272f0();
                }
                ((C7639a) this.f24013b).dismiss();
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC7641b abstractC7641b2 = ((C7639a) this.f24013b).f24010a;
                if (abstractC7641b2 != null) {
                    abstractC7641b2.mo29271j0();
                }
                ((C7639a) this.f24013b).dismiss();
            }
        }
    }

    /* renamed from: e.a.b.a.b.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/b/a$b.class */
    public interface AbstractC7641b {
        /* renamed from: f0 */
        void mo29272f0();

        /* renamed from: j0 */
        void mo29271j0();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3478R.layout.bottomsheet_edit_cancellation, viewGroup, false);
        int i = C3478R.C3480id.btnCancel;
        MaterialButton findViewById = inflate.findViewById(i);
        if (findViewById != null) {
            i = C3478R.C3480id.btnContinue;
            MaterialButton findViewById2 = inflate.findViewById(i);
            if (findViewById2 != null) {
                i = C3478R.C3480id.tvCancellationMessage;
                TextView textView = (TextView) inflate.findViewById(i);
                if (textView != null) {
                    i = C3478R.C3480id.tvCancellationTitle;
                    TextView textView2 = (TextView) inflate.findViewById(i);
                    if (textView2 != null) {
                        C8098r c8098r = new C8098r((ConstraintLayout) inflate, findViewById, findViewById2, textView, textView2);
                        l.d(c8098r, "BottomsheetEditCancellat…flater, container, false)");
                        this.f24011b = c8098r;
                        if (c8098r != null) {
                            return c8098r.f25078a;
                        }
                        l.l("binding");
                        throw null;
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C7639a.super.onViewCreated(view, bundle);
        C8098r c8098r = this.f24011b;
        if (c8098r == null) {
            l.l("binding");
            throw null;
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            TextView textView = c8098r.f25082e;
            l.d(textView, "tvCancellationTitle");
            textView.setText(arguments.getString("title"));
            TextView textView2 = c8098r.f25081d;
            l.d(textView2, "tvCancellationMessage");
            textView2.setText(arguments.getString("message"));
        }
        C8098r c8098r2 = this.f24011b;
        if (c8098r2 == null) {
            l.l("binding");
            throw null;
        }
        c8098r2.f25079b.setOnClickListener(new View$OnClickListenerC7640a(0, this));
        c8098r2.f25080c.setOnClickListener(new View$OnClickListenerC7640a(1, this));
    }
}
