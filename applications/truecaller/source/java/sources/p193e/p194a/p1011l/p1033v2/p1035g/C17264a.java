package p193e.p194a.p1011l.p1033v2.p1035g;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.premium.C4334R;
import kotlin.Metadata;
import n3.b.a.q;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0014R%\u0010\u001b\u001a\n \u0016*\u0004\u0018\u00010\u00150\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Le/a/l/v2/g/a;", "Ln3/b/a/q;", "Landroidx/fragment/app/FragmentManager;", "manager", "", RemoteMessageConst.Notification.TAG, "Ls1/s;", AnalyticsConstants.SHOW, "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "a", "Ls1/g;", "getOkBtn", "()Landroid/widget/TextView;", "okBtn", "<init>", "()V", "premium_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.v2.g.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/v2/g/a.class */
public final class C17264a extends q {

    /* renamed from: a */
    public final g f48419a = C19286f.m13659t(this, C4334R.C4336id.okTextView);

    /* renamed from: e.a.l.v2.g.a$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/v2/g/a$a.class */
    public static final class View$OnClickListenerC17265a implements View.OnClickListener {
        public View$OnClickListenerC17265a() {
            C17264a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C17264a.this.dismiss();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Window window;
        l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C4334R.layout.dialog_show_reselect_payment_options_disclaimer, viewGroup, false);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C17264a.super.onViewCreated(view, bundle);
        ((TextView) this.f48419a.getValue()).setOnClickListener(new View$OnClickListenerC17265a());
    }

    public void show(FragmentManager fragmentManager, String str) {
        l.e(fragmentManager, "manager");
        if (fragmentManager.f830E || fragmentManager.m42929X()) {
            return;
        }
        C17264a.super.show(fragmentManager, (String) null);
    }
}
