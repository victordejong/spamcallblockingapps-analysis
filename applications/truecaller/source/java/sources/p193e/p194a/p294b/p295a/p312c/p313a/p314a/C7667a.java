package p193e.p194a.p294b.p295a.p312c.p313a.p314a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import e.m.a.g.e.e;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p294b.p355m.C8102t;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R$\u0010\u001a\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Le/a/b/a/c/a/a/a;", "Le/m/a/g/e/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/b/m/t;", C22021b.f61237c, "Le/a/b/m/t;", "binding", "Le/a/b/a/c/a/a/a$b;", "a", "Le/a/b/a/c/a/a/a$b;", "getListener", "()Le/a/b/a/c/a/a/a$b;", "setListener", "(Le/a/b/a/c/a/a/a$b;)V", "listener", "<init>", "()V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.c.a.a.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/a.class */
public final class C7667a extends e {

    /* renamed from: a */
    public AbstractC7669b f24048a;

    /* renamed from: b */
    public C8102t f24049b;

    /* renamed from: e.a.b.a.c.a.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/b/a/c/a/a/a$a.class */
    public static final class View$OnClickListenerC7668a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f24050a;

        /* renamed from: b */
        public final /* synthetic */ Object f24051b;

        public View$OnClickListenerC7668a(int i, Object obj) {
            this.f24050a = i;
            this.f24051b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f24050a;
            if (i == 0) {
                AbstractC7669b abstractC7669b = ((C7667a) this.f24051b).f24048a;
                if (abstractC7669b != null) {
                    abstractC7669b.mo29442b3();
                }
                ((C7667a) this.f24051b).dismiss();
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC7669b abstractC7669b2 = ((C7667a) this.f24051b).f24048a;
                if (abstractC7669b2 != null) {
                    abstractC7669b2.mo29443Z4();
                }
                ((C7667a) this.f24051b).dismiss();
            }
        }
    }

    /* renamed from: e.a.b.a.c.a.a.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/a$b.class */
    public interface AbstractC7669b {
        /* renamed from: Z4 */
        void mo29443Z4();

        /* renamed from: b3 */
        void mo29442b3();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3478R.layout.bottomsheet_location_permission_rationale, viewGroup, false);
        int i = C3478R.C3480id.btnAccept;
        Button button = (Button) inflate.findViewById(i);
        if (button != null) {
            i = C3478R.C3480id.btnDismiss;
            Button button2 = (Button) inflate.findViewById(i);
            if (button2 != null) {
                i = C3478R.C3480id.imageView;
                ImageView imageView = (ImageView) inflate.findViewById(i);
                if (imageView != null) {
                    i = C3478R.C3480id.textView2;
                    TextView textView = (TextView) inflate.findViewById(i);
                    if (textView != null) {
                        i = C3478R.C3480id.textView3;
                        TextView textView2 = (TextView) inflate.findViewById(i);
                        if (textView2 != null) {
                            C8102t c8102t = new C8102t((ConstraintLayout) inflate, button, button2, imageView, textView, textView2);
                            l.d(c8102t, "BottomsheetLocationPermi…flater, container, false)");
                            this.f24049b = c8102t;
                            if (c8102t != null) {
                                return c8102t.f25102a;
                            }
                            l.l("binding");
                            throw null;
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C7667a.super.onViewCreated(view, bundle);
        C8102t c8102t = this.f24049b;
        if (c8102t == null) {
            l.l("binding");
            throw null;
        }
        c8102t.f25104c.setOnClickListener(new View$OnClickListenerC7668a(0, this));
        c8102t.f25103b.setOnClickListener(new View$OnClickListenerC7668a(1, this));
    }
}
