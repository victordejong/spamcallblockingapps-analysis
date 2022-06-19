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
import e.m.a.g.e.e;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\u0018��2\u00020\u0001:\u0001\"B\u0007¢\u0006\u0004\b%\u0010&J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ+\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R%\u0010\u001a\u001a\n \u0015*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR%\u0010!\u001a\n \u0015*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u0017\u001a\u0004\b \u0010\u0019R%\u0010$\u001a\n \u0015*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0017\u001a\u0004\b#\u0010\u0019¨\u0006'"}, d2 = {"Le/a/p/a/d;", "Le/m/a/g/e/e;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "kotlin.jvm.PlatformType", AbstractC2405c.f7629a, "Ls1/g;", "getTakePhoto", "()Landroid/view/View;", "takePhoto", "Le/a/p/a/d$b;", "d", "Le/a/p/a/d$b;", "listener", "a", "getRemovePhoto", "removePhoto", C22021b.f61237c, "getSelectFromGallery", "selectFromGallery", "<init>", "()V", "editprofile_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.p.a.d */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/d.class */
public final class C19150d extends e {

    /* renamed from: a */
    public final g f53430a = C19286f.m13659t(this, C3890R.C3892id.removePhoto);

    /* renamed from: b */
    public final g f53431b = C19286f.m13659t(this, C3890R.C3892id.selectFromGallery);

    /* renamed from: c */
    public final g f53432c = C19286f.m13659t(this, C3890R.C3892id.takePhoto);

    /* renamed from: d */
    public AbstractC19152b f53433d;

    /* renamed from: e.a.p.a.d$a */
    /* loaded from: classes3-dex2jar.jar:e/a/p/a/d$a.class */
    public static final class View$OnClickListenerC19151a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f53434a;

        /* renamed from: b */
        public final /* synthetic */ Object f53435b;

        public View$OnClickListenerC19151a(int i, Object obj) {
            this.f53434a = i;
            this.f53435b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f53434a;
            if (i == 0) {
                Dialog dialog = ((C19150d) this.f53435b).getDialog();
                if (dialog != null) {
                    dialog.dismiss();
                }
                AbstractC19152b abstractC19152b = ((C19150d) this.f53435b).f53433d;
                if (abstractC19152b == null) {
                    return;
                }
                abstractC19152b.mo13956Jr();
            } else if (i == 1) {
                Dialog dialog2 = ((C19150d) this.f53435b).getDialog();
                if (dialog2 != null) {
                    dialog2.dismiss();
                }
                AbstractC19152b abstractC19152b2 = ((C19150d) this.f53435b).f53433d;
                if (abstractC19152b2 == null) {
                    return;
                }
                abstractC19152b2.mo13955Pg();
            } else if (i != 2) {
                throw null;
            } else {
                Dialog dialog3 = ((C19150d) this.f53435b).getDialog();
                if (dialog3 != null) {
                    dialog3.dismiss();
                }
                AbstractC19152b abstractC19152b3 = ((C19150d) this.f53435b).f53433d;
                if (abstractC19152b3 == null) {
                    return;
                }
                abstractC19152b3.mo13954ti();
            }
        }
    }

    /* renamed from: e.a.p.a.d$b */
    /* loaded from: classes9-dex2jar.jar:e/a/p/a/d$b.class */
    public interface AbstractC19152b {
        /* renamed from: Jr */
        void mo13956Jr();

        /* renamed from: Pg */
        void mo13955Pg();

        /* renamed from: ti */
        void mo13954ti();
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C19150d.super.onAttach(context);
        if (this.f53433d != null || !(getParentFragment() instanceof AbstractC19152b)) {
            StringBuilder m8728C = C22128a.m8728C("parent fragment should implement ");
            m8728C.append(AbstractC19152b.class.getSimpleName());
            throw new IllegalStateException(m8728C.toString());
        }
        AbstractC19152b parentFragment = getParentFragment();
        Objects.requireNonNull(parentFragment, "null cannot be cast to non-null type com.truecaller.editprofile.ui.AddPhotoBottomSheet.Listener");
        this.f53433d = parentFragment;
    }

    public void onCreate(Bundle bundle) {
        C19150d.super.onCreate(bundle);
        setStyle(2, C3890R.style.StyleX_TransparentBottomSheetDialogTheme);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3890R.layout.bottom_sheet_add_photo, viewGroup, false);
        l.d(inflate, "inflater.inflate(R.layou…_photo, container, false)");
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C19150d.super.onViewCreated(view, bundle);
        ((View) this.f53432c.getValue()).setOnClickListener(new View$OnClickListenerC19151a(0, this));
        ((View) this.f53431b.getValue()).setOnClickListener(new View$OnClickListenerC19151a(1, this));
        ((View) this.f53430a.getValue()).setOnClickListener(new View$OnClickListenerC19151a(2, this));
    }
}
