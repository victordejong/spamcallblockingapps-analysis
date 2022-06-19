package p193e.p194a.p294b.p295a.p325h.p328c;

import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.google.android.material.textfield.TextInputEditText;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import n3.n.j;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1849n.AbstractC26868i;
import p1727n3.p1849n.C26866g;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p295a.p308b.C7639a;
import p193e.p194a.p294b.p295a.p324g.C7801a;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p354l.C8037m;
import p193e.p194a.p294b.p355m.AbstractC8078k0;
import s1.g;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b;\u0010\u0017J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ-\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J)\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u001d\u0010%\u001a\u00020 8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R(\u0010.\u001a\u00020&8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b'\u0010(\u0012\u0004\b-\u0010\u0017\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b8\u00109¨\u0006<"}, d2 = {"Le/a/b/a/h/c/a;", "Landroidx/fragment/app/Fragment;", "Landroid/view/View$OnClickListener;", "Le/a/b/a/b/a$b;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "v", "onClick", "(Landroid/view/View;)V", "f0", "()V", "j0", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "Le/a/b/a/h/c/l;", AbstractC2405c.f7629a, "Ls1/g;", "QA", "()Le/a/b/a/h/c/l;", "viewModel", "Le/a/u3/g;", "a", "Le/a/u3/g;", "getFeaturesRegistry", "()Le/a/u3/g;", "setFeaturesRegistry", "(Le/a/u3/g;)V", "getFeaturesRegistry$annotations", "featuresRegistry", "Le/a/b/a/g/a;", C22021b.f61237c, "Le/a/b/a/g/a;", "getViewModelFactory", "()Le/a/b/a/g/a;", "setViewModelFactory", "(Le/a/b/a/g/a;)V", "viewModelFactory", "Le/a/b/m/k0;", "d", "Le/a/b/m/k0;", "binding", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.h.c.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/h/c/a.class */
public final class View$OnClickListenerC7819a extends Fragment implements View.OnClickListener, C7639a.AbstractC7641b {

    /* renamed from: e */
    public static final String f24338e = View$OnClickListenerC7819a.class.getSimpleName();

    /* renamed from: f */
    public static final View$OnClickListenerC7819a f24339f = null;
    @Inject

    /* renamed from: a */
    public C20592g f24340a;
    @Inject

    /* renamed from: b */
    public C7801a f24341b;

    /* renamed from: c */
    public final g f24342c = MediaSessionCompat.m43278P(this, d0.a(C7832l.class), new C7820a(this), new C7821b());

    /* renamed from: d */
    public AbstractC8078k0 f24343d;

    /* renamed from: e.a.b.a.h.c.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/h/c/a$a.class */
    public static final class C7820a extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f24344b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7820a(Fragment fragment) {
            super(0);
            this.f24344b = fragment;
        }

        public Object invoke() {
            return C22128a.m8612i1(this.f24344b, "requireActivity()", "requireActivity().viewModelStore");
        }
    }

    /* renamed from: e.a.b.a.h.c.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/h/c/a$b.class */
    public static final class C7821b extends m implements a<C26986a1.AbstractC26987b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7821b() {
            super(0);
            View$OnClickListenerC7819a.this = r4;
        }

        public Object invoke() {
            C7801a c7801a = View$OnClickListenerC7819a.this.f24341b;
            if (c7801a != null) {
                return c7801a;
            }
            l.l("viewModelFactory");
            throw null;
        }
    }

    /* renamed from: OA */
    public static final /* synthetic */ AbstractC8078k0 m29275OA(View$OnClickListenerC7819a view$OnClickListenerC7819a) {
        AbstractC8078k0 abstractC8078k0 = view$OnClickListenerC7819a.f24343d;
        if (abstractC8078k0 != null) {
            return abstractC8078k0;
        }
        l.l("binding");
        throw null;
    }

    /* renamed from: PA */
    public static final String m29274PA(View$OnClickListenerC7819a view$OnClickListenerC7819a, AbstractC26868i abstractC26868i) {
        Objects.requireNonNull(view$OnClickListenerC7819a);
        String str = null;
        if (abstractC26868i != null) {
            str = null;
            if (abstractC26868i instanceof j) {
                Object obj = ((j) abstractC26868i).a;
                str = null;
                if (obj != null) {
                    str = obj.toString();
                }
            }
        }
        return str;
    }

    /* renamed from: QA */
    public final C7832l m29273QA() {
        return (C7832l) this.f24342c.getValue();
    }

    @Override // p193e.p194a.p294b.p295a.p308b.C7639a.AbstractC7641b
    /* renamed from: f0 */
    public void mo29272f0() {
    }

    @Override // p193e.p194a.p294b.p295a.p308b.C7639a.AbstractC7641b
    /* renamed from: j0 */
    public void mo29271j0() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.setResult(0);
        }
        n3.r.a.l activity2 = getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
        if (r8 != null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r6, int r7, android.content.Intent r8) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            p193e.p194a.p294b.p295a.p325h.p328c.View$OnClickListenerC7819a.super.onActivityResult(r1, r2, r3)
            r0 = r6
            r1 = 10001(0x2711, float:1.4014E-41)
            if (r0 == r1) goto L11
            goto L79
        L11:
            r0 = r7
            r1 = -1
            if (r0 != r1) goto L79
            r0 = r5
            e.a.b.a.h.c.l r0 = r0.m29273QA()
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L2d
            r0 = r8
            java.lang.String r1 = "selected_location"
            android.os.Parcelable r0 = r0.getParcelableExtra(r1)
            com.truecaller.placepicker.data.GeocodedPlace r0 = (com.truecaller.placepicker.data.GeocodedPlace) r0
            r8 = r0
            goto L2f
        L2d:
            r0 = 0
            r8 = r0
        L2f:
            r0 = r9
            r1 = r8
            r0.f24356b = r1
            r0 = r8
            if (r0 == 0) goto L4b
            r0 = r8
            java.lang.String r0 = r0.f14187h
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L4b
            r0 = r9
            r1 = r10
            r0.m29264g(r1)
        L4b:
            r0 = r9
            n3.n.j<java.lang.String> r0 = r0.f24357c
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L62
            r0 = r8
            java.lang.String r0 = r0.f14181b
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L62
            goto L65
        L62:
            java.lang.String r0 = ""
            r8 = r0
        L65:
            r0 = r8
            r1 = r9
            java.lang.Object r1 = r1.a
            if (r0 == r1) goto L79
            r0 = r9
            r1 = r8
            r0.a = r1
            r0 = r9
            r0.notifyChange()
        L79:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p295a.p325h.p328c.View$OnClickListenerC7819a.onActivityResult(int, int, android.content.Intent):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x013c, code lost:
        if (r26 != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01ab, code lost:
        if (r0.length() == 0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02f5, code lost:
        if (r20 != null) goto L101;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [double] */
    /* JADX WARN: Type inference failed for: r0v43, types: [double] */
    /* JADX WARN: Type inference failed for: r0v64, types: [double] */
    /* JADX WARN: Type inference failed for: r0v67, types: [double] */
    /* JADX WARN: Type inference failed for: r3v1, types: [double] */
    /* JADX WARN: Type inference failed for: r3v4, types: [double] */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r20) {
        /*
            Method dump skipped, instructions count: 867
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p295a.p325h.p328c.View$OnClickListenerC7819a.onClick(android.view.View):void");
    }

    public void onCreate(Bundle bundle) {
        View$OnClickListenerC7819a.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            C7805e c7805e = (C7805e) C18334g0.m15219l(activity);
            C20592g mo12343i5 = c7805e.f24288b.mo12343i5();
            Objects.requireNonNull(mo12343i5, "Cannot return null from a non-@Nullable component method");
            this.f24340a = mo12343i5;
            this.f24341b = (C7801a) c7805e.f24270K.get();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        AbstractC8078k0 m1251b = C26866g.m1251b(layoutInflater, C3478R.layout.fragment_edit_biz_address, viewGroup, false);
        l.d(m1251b, "DataBindingUtil.inflate(…ddress, container, false)");
        AbstractC8078k0 abstractC8078k0 = m1251b;
        this.f24343d = abstractC8078k0;
        if (abstractC8078k0 == null) {
            l.l("binding");
            throw null;
        }
        abstractC8078k0.mo28912b(m29273QA());
        AbstractC8078k0 abstractC8078k02 = this.f24343d;
        if (abstractC8078k02 == null) {
            l.l("binding");
            throw null;
        }
        abstractC8078k02.mo28913a(this);
        AbstractC8078k0 abstractC8078k03 = this.f24343d;
        if (abstractC8078k03 != null) {
            return abstractC8078k03.getRoot();
        }
        l.l("binding");
        throw null;
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        View$OnClickListenerC7819a.super.onViewCreated(view, bundle);
        AbstractC8078k0 abstractC8078k0 = this.f24343d;
        if (abstractC8078k0 == null) {
            l.l("binding");
            throw null;
        }
        Toolbar toolbar = abstractC8078k0.f24964e;
        l.d(toolbar, "editBizAddressToolbar");
        toolbar.setTitle("");
        h activity = getActivity();
        Objects.requireNonNull(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar = activity;
        hVar.setSupportActionBar(abstractC8078k0.f24964e);
        AbstractC25393a supportActionBar = hVar.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        AbstractC25393a supportActionBar2 = hVar.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.mo3548s(C3478R.C3479drawable.biz_toolbar_close);
        }
        abstractC8078k0.f24964e.setNavigationOnClickListener(new View$OnClickListenerC7822b(this));
        AbstractC8078k0 abstractC8078k02 = this.f24343d;
        if (abstractC8078k02 == null) {
            l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = abstractC8078k02.f24968i;
        l.d(textInputEditText, "etPincode");
        C19291g.m13542j(textInputEditText, new C27627z2(0, abstractC8078k02));
        TextInputEditText textInputEditText2 = abstractC8078k02.f24965f;
        l.d(textInputEditText2, "etBuildingName");
        C19291g.m13542j(textInputEditText2, new C27627z2(1, abstractC8078k02));
        TextInputEditText textInputEditText3 = abstractC8078k02.f24966g;
        l.d(textInputEditText3, "etCity");
        C19291g.m13542j(textInputEditText3, new C27627z2(2, abstractC8078k02));
        TextInputEditText textInputEditText4 = abstractC8078k02.f24969j;
        l.d(textInputEditText4, "etState");
        C19291g.m13542j(textInputEditText4, new C27627z2(3, abstractC8078k02));
        m29273QA().f24368n.m42867f(getViewLifecycleOwner(), new C7827g(this));
        m29273QA().f24358d.addOnPropertyChangedCallback(new C7823c(this));
        m29273QA().f24359e.addOnPropertyChangedCallback(new C7824d(this));
        m29273QA().f24360f.addOnPropertyChangedCallback(new C7825e(this));
        m29273QA().f24361g.addOnPropertyChangedCallback(new C7826f(this));
        m29273QA().f24370p.m42867f(getViewLifecycleOwner(), new C8037m(new C7828h(this)));
        m29273QA().f24372r.m42867f(getViewLifecycleOwner(), new C8037m(new C7829i(this)));
        m29273QA().f24374t.m42867f(getViewLifecycleOwner(), new C8037m(new C7830j(this)));
    }
}
