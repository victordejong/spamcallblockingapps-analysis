package p193e.p194a.p294b.p295a.p296a.p297a.p298b;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p294b.p295a.p308b.C7642b;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p354l.C8036l;
import p193e.p194a.p294b.p354l.C8037m;
import p193e.p194a.p294b.p355m.C8100s;
import p193e.p194a.p372b0.p430q.C8612s;
import p193e.p194a.p851h5.AbstractC14967y;
import p193e.p194a.p851h5.C14945l;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.g;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018�� H2\u00020\u0001:\u00021#B\u0007¢\u0006\u0004\bF\u0010GJ-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eJ)\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019R$\u0010!\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001d\u0010'\u001a\u00020\"8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u00107\u001a\u0002008\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001d\u0010=\u001a\u0002088B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\"\u0010E\u001a\u00020>8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006I"}, d2 = {"Le/a/b/a/a/a/b/a;", "Le/a/b/a/b/b;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", "intent", "onActivityResult", "(IILandroid/content/Intent;)V", "Landroid/net/Uri;", "uri", "PA", "(Landroid/net/Uri;)V", "Le/a/b/a/a/a/b/a$f;", "d", "Le/a/b/a/a/a/b/a$f;", "getListener", "()Le/a/b/a/a/a/b/a$f;", "setListener", "(Le/a/b/a/a/a/b/a$f;)V", "listener", "Le/a/b/a/a/a/b/d;", "f", "Ls1/g;", "OA", "()Le/a/b/a/a/a/b/d;", "viewModel", "Le/a/h5/y;", C22021b.f61237c, "Le/a/h5/y;", "getTcPermissionsView", "()Le/a/h5/y;", "setTcPermissionsView", "(Le/a/h5/y;)V", "tcPermissionsView", "Ln3/v/a1$b;", "e", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/b/m/s;", "g", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/b/m/s;", "binding", "Le/a/p5/h0;", AbstractC2405c.f7629a, "Le/a/p5/h0;", "getThemedResourceProvider", "()Le/a/p5/h0;", "setThemedResourceProvider", "(Le/a/p5/h0;)V", "themedResourceProvider", "<init>", "()V", "i", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.a.a.b.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/b/a.class */
public final class C7483a extends C7642b {

    /* renamed from: h */
    public static final /* synthetic */ l[] f23750h = {C22128a.m8621g0(C7483a.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/BottomsheetImagePickerBinding;", 0)};

    /* renamed from: i */
    public static final C7488e f23751i = new C7488e(null);
    @Inject

    /* renamed from: b */
    public AbstractC14967y f23752b;
    @Inject

    /* renamed from: c */
    public AbstractC19233h0 f23753c;

    /* renamed from: d */
    public AbstractC7489f f23754d;
    @Inject

    /* renamed from: e */
    public C26986a1.AbstractC26987b f23755e;

    /* renamed from: f */
    public final g f23756f = MediaSessionCompat.m43278P(this, d0.a(C7493d.class), new C7487d(new C7486c(this)), new C7490g());

    /* renamed from: g */
    public final ViewBindingProperty f23757g = new C19350a(new C7485b());

    /* renamed from: e.a.b.a.a.a.b.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/b/a/a/a/b/a$a.class */
    public static final class View$OnClickListenerC7484a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f23758a;

        /* renamed from: b */
        public final /* synthetic */ Object f23759b;

        public View$OnClickListenerC7484a(int i, Object obj) {
            this.f23758a = i;
            this.f23759b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f23758a;
            if (i == 0) {
                C7483a c7483a = (C7483a) this.f23759b;
                l[] lVarArr = C7483a.f23750h;
                C7493d m29562OA = c7483a.m29562OA();
                if (m29562OA.f23771c.mo13825h("android.permission.CAMERA")) {
                    m29562OA.f23769a.mo1001j(new C8036l<>(new C14945l(true, false, 2)));
                } else {
                    d.w2(MediaSessionCompat.m43315C0(m29562OA), (f) null, (j0) null, new C7491b(m29562OA, null), 3, (Object) null);
                }
            } else if (i != 1) {
                throw null;
            } else {
                C7483a c7483a2 = (C7483a) this.f23759b;
                l[] lVarArr2 = C7483a.f23750h;
                C7493d m29562OA2 = c7483a2.m29562OA();
                if (m29562OA2.f23771c.mo13825h("android.permission.READ_EXTERNAL_STORAGE")) {
                    m29562OA2.f23770b.mo1001j(new C8036l<>(new C14945l(true, false, 2)));
                } else {
                    d.w2(MediaSessionCompat.m43315C0(m29562OA2), (f) null, (j0) null, new C7492c(m29562OA2, null), 3, (Object) null);
                }
            }
        }
    }

    /* renamed from: e.a.b.a.a.a.b.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/b/a$b.class */
    public static final class C7485b extends m implements s1.z.b.l<C7483a, C8100s> {
        public C7485b() {
            super(1);
        }

        /* renamed from: d */
        public Object m29560d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3478R.C3480id.btnCamera;
            AppCompatButton appCompatButton = (AppCompatButton) requireView.findViewById(i);
            if (appCompatButton != null) {
                i = C3478R.C3480id.btnGallery;
                AppCompatButton appCompatButton2 = (AppCompatButton) requireView.findViewById(i);
                if (appCompatButton2 != null) {
                    return new C8100s((ConstraintLayout) requireView, appCompatButton, appCompatButton2);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.b.a.a.a.b.a$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/b/a$c.class */
    public static final class C7486c extends m implements a<Fragment> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f23760b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7486c(Fragment fragment) {
            super(0);
            this.f23760b = fragment;
        }

        public Object invoke() {
            return this.f23760b;
        }
    }

    /* renamed from: e.a.b.a.a.a.b.a$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/b/a$d.class */
    public static final class C7487d extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ a f23761b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7487d(a aVar) {
            super(0);
            this.f23761b = aVar;
        }

        public Object invoke() {
            C26993b1 viewModelStore = ((AbstractC26996c1) this.f23761b.invoke()).getViewModelStore();
            s1.z.c.l.d(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: e.a.b.a.a.a.b.a$e */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/b/a$e.class */
    public static final class C7488e {
        public C7488e(s1.z.c.f fVar) {
        }
    }

    /* renamed from: e.a.b.a.a.a.b.a$f */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/b/a$f.class */
    public interface AbstractC7489f {
        /* renamed from: F7 */
        void mo29521F7(Uri uri, int i);
    }

    /* renamed from: e.a.b.a.a.a.b.a$g */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/b/a$g.class */
    public static final class C7490g extends m implements a<C26986a1.AbstractC26987b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7490g() {
            super(0);
            C7483a.this = r4;
        }

        public Object invoke() {
            C26986a1.AbstractC26987b abstractC26987b = C7483a.this.f23755e;
            if (abstractC26987b != null) {
                return abstractC26987b;
            }
            s1.z.c.l.l("viewModelFactory");
            throw null;
        }
    }

    /* renamed from: OA */
    public final C7493d m29562OA() {
        return (C7493d) this.f23756f.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
        if (r6 != null) goto L16;
     */
    /* renamed from: PA */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m29561PA(android.net.Uri r5) {
        /*
            r4 = this;
            r0 = r4
            android.os.Bundle r0 = r0.getArguments()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L19
            r0 = r6
            java.lang.String r1 = "key_image_type"
            int r0 = r0.getInt(r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r8 = r0
            goto L1c
        L19:
            r0 = 0
            r8 = r0
        L1c:
            r0 = r5
            if (r0 == 0) goto L52
            r0 = r7
            r6 = r0
            r0 = r8
            if (r0 == 0) goto L4b
            r0 = r8
            int r0 = r0.intValue()
            r0 = r4
            e.a.b.a.a.a.b.a$f r0 = r0.f23754d
            r9 = r0
            r0 = r7
            r6 = r0
            r0 = r9
            if (r0 == 0) goto L4b
            r0 = r9
            r1 = r5
            r2 = r8
            int r2 = r2.intValue()
            r0.mo29521F7(r1, r2)
            s1.s r0 = s1.s.a
            r6 = r0
        L4b:
            r0 = r6
            if (r0 == 0) goto L52
            goto L64
        L52:
            r0 = r4
            android.content.Context r0 = r0.getContext()
            r1 = r4
            int r2 = com.truecaller.bizmon.C3478R.string.SelectAvatarError
            java.lang.String r1 = r1.getString(r2)
            r2 = 0
            android.widget.Toast r0 = android.widget.Toast.makeText(r0, r1, r2)
            r0.show()
        L64:
            r0 = r4
            r0.dismiss()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p295a.p296a.p297a.p298b.C7483a.m29561PA(android.net.Uri):void");
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        Uri uri;
        Uri data;
        if (i2 != -1) {
            C7483a.super.onActivityResult(i, i2, intent);
        } else if (i == 17) {
            Uri m28215g = C8612s.m28215g(requireActivity());
            if (m28215g == null) {
                return;
            }
            m29561PA(m28215g);
        } else if (i != 34) {
            C7483a.super.onActivityResult(i, i2, intent);
        } else {
            if (intent == null || (data = intent.getData()) == null) {
                uri = null;
            } else {
                Context requireContext = requireContext();
                s1.z.c.l.d(requireContext, "requireContext()");
                Uri m28215g2 = C8612s.m28215g(requireContext());
                s1.z.c.l.d(m28215g2, "ImageUtils.getTempCaptureUri(requireContext())");
                uri = C19286f.m13675d(data, requireContext, m28215g2);
            }
            m29561PA(uri);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        C7805e c7805e = (C7805e) C18334g0.m15219l(requireActivity);
        AbstractC14967y mo12672K = c7805e.f24292d.mo12672K();
        Objects.requireNonNull(mo12672K, "Cannot return null from a non-@Nullable component method");
        this.f23752b = mo12672K;
        this.f23753c = (AbstractC19233h0) c7805e.f24262C.get();
        this.f23755e = (C26986a1.AbstractC26987b) c7805e.f24270K.get();
        return layoutInflater.inflate(C3478R.layout.bottomsheet_image_picker, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C7483a.super.onViewCreated(view, bundle);
        C8100s c8100s = (C8100s) this.f23757g.m34468b(this, f23750h[0]);
        AppCompatButton appCompatButton = c8100s.f25094a;
        s1.z.c.l.d(appCompatButton, "btnCamera");
        AbstractC19233h0 abstractC19233h0 = this.f23753c;
        if (abstractC19233h0 == null) {
            s1.z.c.l.l("themedResourceProvider");
            throw null;
        }
        int i = C3478R.C3479drawable.ic_biz_camera;
        int i2 = C3478R.attr.tcx_brandBackgroundBlue;
        Drawable mo13764f = abstractC19233h0.mo13764f(i, i2);
        s1.z.c.l.d(mo13764f, "themedResourceProvider.g….tcx_brandBackgroundBlue)");
        appCompatButton.setCompoundDrawablesRelativeWithIntrinsicBounds(mo13764f, (Drawable) null, (Drawable) null, (Drawable) null);
        AppCompatButton appCompatButton2 = c8100s.f25095b;
        s1.z.c.l.d(appCompatButton2, "btnGallery");
        AbstractC19233h0 abstractC19233h02 = this.f23753c;
        if (abstractC19233h02 == null) {
            s1.z.c.l.l("themedResourceProvider");
            throw null;
        }
        Drawable mo13764f2 = abstractC19233h02.mo13764f(C3478R.C3479drawable.ic_biz_gallery, i2);
        s1.z.c.l.d(mo13764f2, "themedResourceProvider.g….tcx_brandBackgroundBlue)");
        appCompatButton2.setCompoundDrawablesRelativeWithIntrinsicBounds(mo13764f2, (Drawable) null, (Drawable) null, (Drawable) null);
        c8100s.f25094a.setOnClickListener(new View$OnClickListenerC7484a(0, this));
        c8100s.f25095b.setOnClickListener(new View$OnClickListenerC7484a(1, this));
        m29562OA().f23769a.m42867f(getViewLifecycleOwner(), new C8037m(new C25348l2(0, this)));
        m29562OA().f23770b.m42867f(getViewLifecycleOwner(), new C8037m(new C25348l2(1, this)));
    }
}
