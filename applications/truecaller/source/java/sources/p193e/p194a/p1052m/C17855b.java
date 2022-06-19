package p193e.p194a.p1052m;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import kotlin.Metadata;
import n3.r.a.k;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1059m3.C18186t;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b'\u0010(J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001d\u0010\u001e\u001a\u00020\u00198B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR$\u0010&\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006)"}, d2 = {"Le/a/m/b;", "Ln3/r/a/k;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", C22021b.f61237c, "Z", "getDataDownloadSupported", "()Z", "setDataDownloadSupported", "(Z)V", "dataDownloadSupported", "Le/a/m3/t;", AbstractC2405c.f7629a, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/m3/t;", "binding", "Le/a/m/a0;", "a", "Le/a/m/a0;", "getListener", "()Le/a/m/a0;", "setListener", "(Le/a/m/a0;)V", "listener", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.m.b */
/* loaded from: classes7-dex2jar.jar:e/a/m/b.class */
public final class C17855b extends k {

    /* renamed from: d */
    public static final /* synthetic */ l[] f50829d = {C22128a.m8621g0(C17855b.class, "binding", "getBinding()Lcom/truecaller/databinding/DialogConsentMoreInfoBinding;", 0)};

    /* renamed from: a */
    public AbstractC17854a0 f50830a;

    /* renamed from: b */
    public boolean f50831b;

    /* renamed from: c */
    public final ViewBindingProperty f50832c = new C19350a(new C17857b());

    /* renamed from: e.a.m.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/m/b$a.class */
    public static final class View$OnClickListenerC17856a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f50833a;

        /* renamed from: b */
        public final /* synthetic */ Object f50834b;

        public View$OnClickListenerC17856a(int i, Object obj) {
            this.f50833a = i;
            this.f50834b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f50833a;
            if (i == 0) {
                AbstractC17854a0 abstractC17854a0 = ((C17855b) this.f50834b).f50830a;
                if (abstractC17854a0 != null) {
                    abstractC17854a0.mo15755a();
                }
                ((C17855b) this.f50834b).dismissAllowingStateLoss();
            } else if (i != 1) {
                if (i != 2) {
                    throw null;
                }
                ((C17855b) this.f50834b).dismissAllowingStateLoss();
            } else {
                AbstractC17854a0 abstractC17854a02 = ((C17855b) this.f50834b).f50830a;
                if (abstractC17854a02 != null) {
                    abstractC17854a02.mo15754b();
                }
                ((C17855b) this.f50834b).dismissAllowingStateLoss();
            }
        }
    }

    /* renamed from: e.a.m.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/m/b$b.class */
    public static final class C17857b extends m implements s1.z.b.l<C17855b, C18186t> {
        public C17857b() {
            super(1);
        }

        /* renamed from: d */
        public Object m15753d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362689;
            Button button = (Button) requireView.findViewById(2131362689);
            if (button != null) {
                i = 2131363042;
                Button button2 = (Button) requireView.findViewById(C2752R.C2754id.deactivateButton);
                if (button2 != null) {
                    i = 2131363390;
                    Button button3 = (Button) requireView.findViewById(C2752R.C2754id.downloadDataButton);
                    if (button3 != null) {
                        return new C18186t((LinearLayout) requireView, button, button2, button3);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    public void onCreate(Bundle bundle) {
        C17855b.super.onCreate(bundle);
        setStyle(1, 2131953038);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.dialog_consent_more_info, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C17855b.super.onViewCreated(view, bundle);
        C18186t c18186t = (C18186t) this.f50832c.m34468b(this, f50829d[0]);
        c18186t.f51411b.setOnClickListener(new View$OnClickListenerC17856a(0, this));
        Button button = c18186t.f51412c;
        s1.z.c.l.d(button, "downloadDataButton");
        C19286f.m13683U(button, this.f50831b);
        if (this.f50831b) {
            c18186t.f51412c.setOnClickListener(new View$OnClickListenerC17856a(1, this));
        }
        c18186t.f51410a.setOnClickListener(new View$OnClickListenerC17856a(2, this));
    }
}
