package p193e.p194a.p1124p.p1125a;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.editprofile.C3890R;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001:\u0001\u0016B\u0007¢\u0006\u0004\b\"\u0010#J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R%\u0010\u001a\u001a\n \u0015*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR%\u0010!\u001a\n \u0015*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u0017\u001a\u0004\b \u0010\u0019¨\u0006$"}, d2 = {"Le/a/p/a/e;", "Ln3/b/a/q;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "kotlin.jvm.PlatformType", C22021b.f61237c, "Ls1/g;", "getConfirmButton", "()Landroid/view/View;", "confirmButton", "Le/a/p/a/e$b;", AbstractC2405c.f7629a, "Le/a/p/a/e$b;", "listener", "a", "getCancelButton", "cancelButton", "<init>", "()V", "editprofile_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.p.a.e */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/e.class */
public final class C19153e extends q {

    /* renamed from: a */
    public final g f53436a = C19286f.m13659t(this, C3890R.C3892id.cancelButton);

    /* renamed from: b */
    public final g f53437b = C19286f.m13659t(this, C3890R.C3892id.confirmButton);

    /* renamed from: c */
    public AbstractC19155b f53438c;

    /* renamed from: e.a.p.a.e$a */
    /* loaded from: classes3-dex2jar.jar:e/a/p/a/e$a.class */
    public static final class View$OnClickListenerC19154a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f53439a;

        /* renamed from: b */
        public final /* synthetic */ Object f53440b;

        public View$OnClickListenerC19154a(int i, Object obj) {
            this.f53439a = i;
            this.f53440b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f53439a;
            if (i == 0) {
                Dialog dialog = ((C19153e) this.f53440b).getDialog();
                if (dialog == null) {
                    return;
                }
                dialog.dismiss();
            } else if (i != 1) {
                throw null;
            } else {
                Dialog dialog2 = ((C19153e) this.f53440b).getDialog();
                if (dialog2 != null) {
                    dialog2.dismiss();
                }
                AbstractC19155b abstractC19155b = ((C19153e) this.f53440b).f53438c;
                if (abstractC19155b == null) {
                    return;
                }
                abstractC19155b.mo13953Kf();
            }
        }
    }

    /* renamed from: e.a.p.a.e$b */
    /* loaded from: classes9-dex2jar.jar:e/a/p/a/e$b.class */
    public interface AbstractC19155b {
        /* renamed from: Kf */
        void mo13953Kf();
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C19153e.super.onAttach(context);
        if (this.f53438c != null || !(getParentFragment() instanceof AbstractC19155b)) {
            StringBuilder m8728C = C22128a.m8728C("parent fragment should implement ");
            m8728C.append(AbstractC19155b.class.getSimpleName());
            throw new IllegalStateException(m8728C.toString());
        }
        AbstractC19155b parentFragment = getParentFragment();
        Objects.requireNonNull(parentFragment, "null cannot be cast to non-null type com.truecaller.editprofile.ui.ConfirmSavingPrivateProfileDialog.Listener");
        this.f53438c = parentFragment;
    }

    public void onCreate(Bundle bundle) {
        C19153e.super.onCreate(bundle);
        setStyle(2, C3890R.style.StyleX_DialogFragment);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C3890R.layout.dialog_confirm_saving_private_profile, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C19153e.super.onViewCreated(view, bundle);
        ((View) this.f53436a.getValue()).setOnClickListener(new View$OnClickListenerC19154a(0, this));
        ((View) this.f53437b.getValue()).setOnClickListener(new View$OnClickListenerC19154a(1, this));
    }
}
