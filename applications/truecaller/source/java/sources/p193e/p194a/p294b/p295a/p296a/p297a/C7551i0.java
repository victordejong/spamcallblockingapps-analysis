package p193e.p194a.p294b.p295a.p296a.p297a;

import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.profile.data.dto.businessV2.BusinessProfileRequest;
import e.m.a.g.e.e;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1849n.C26866g;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1060m4.p1061c.p1062i.p1063a.AbstractC18228e;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p294b.p295a.p296a.p306d.C7633b;
import p193e.p194a.p294b.p295a.p324g.C7805e;
import p193e.p194a.p294b.p355m.AbstractC8092o;
import s1.f0.v;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b+\u0010,J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001d\u0010*\u001a\u00020%8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)¨\u0006-"}, d2 = {"Le/a/b/a/a/a/i0;", "Le/m/a/g/e/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/m4/c/i/a/e;", C22021b.f61237c, "Le/a/m4/c/i/a/e;", "getBizProfileRefreshNotifier", "()Le/a/m4/c/i/a/e;", "setBizProfileRefreshNotifier", "(Le/a/m4/c/i/a/e;)V", "bizProfileRefreshNotifier", "Le/a/b/m/o;", "d", "Le/a/b/m/o;", "binding", "Ln3/v/a1$b;", "a", "Ln3/v/a1$b;", "getViewModelFactory", "()Ln3/v/a1$b;", "setViewModelFactory", "(Ln3/v/a1$b;)V", "viewModelFactory", "Le/a/b/a/a/d/b;", AbstractC2405c.f7629a, "Ls1/g;", "PA", "()Le/a/b/a/a/d/b;", "bizProfileViewModel", "<init>", "()V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.a.a.i0 */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/i0.class */
public final class C7551i0 extends e {
    @Inject

    /* renamed from: a */
    public C26986a1.AbstractC26987b f23860a;
    @Inject

    /* renamed from: b */
    public AbstractC18228e f23861b;

    /* renamed from: c */
    public final g f23862c;

    /* renamed from: d */
    public AbstractC8092o f23863d;

    /* renamed from: e.a.b.a.a.a.i0$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/i0$a.class */
    public static final class C7552a extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ a f23864b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7552a(a aVar) {
            super(0);
            this.f23864b = aVar;
        }

        public Object invoke() {
            C26993b1 viewModelStore = ((AbstractC26996c1) this.f23864b.invoke()).getViewModelStore();
            l.d(viewModelStore, "ownerProducer().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: e.a.b.a.a.a.i0$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/i0$b.class */
    public static final class C7553b extends m implements a<AbstractC26996c1> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7553b() {
            super(0);
            C7551i0.this = r4;
        }

        public Object invoke() {
            n3.r.a.l requireActivity = C7551i0.this.requireActivity();
            l.d(requireActivity, "requireActivity()");
            return requireActivity;
        }
    }

    /* renamed from: e.a.b.a.a.a.i0$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/i0$c.class */
    public static final class C7554c extends m implements a<C26986a1.AbstractC26987b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7554c() {
            super(0);
            C7551i0.this = r4;
        }

        public Object invoke() {
            C26986a1.AbstractC26987b abstractC26987b = C7551i0.this.f23860a;
            if (abstractC26987b != null) {
                return abstractC26987b;
            }
            l.l("viewModelFactory");
            throw null;
        }
    }

    /* renamed from: e.a.b.a.a.a.i0$d */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/i0$d.class */
    public static final class C7555d extends m implements s1.z.b.l<Editable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7555d() {
            super(1);
            C7551i0.this = r4;
        }

        /* renamed from: d */
        public Object m29522d(Object obj) {
            Editable editable = (Editable) obj;
            TextInputLayout textInputLayout = C7551i0.m29524OA(C7551i0.this).f25048d;
            l.d(textInputLayout, "binding.ttlName");
            textInputLayout.setError(null);
            return s.a;
        }
    }

    /* renamed from: e.a.b.a.a.a.i0$e */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/i0$e.class */
    public static final class View$OnClickListenerC7556e implements View.OnClickListener {
        public View$OnClickListenerC7556e() {
            C7551i0.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            String obj;
            C7633b m29523PA = C7551i0.this.m29523PA();
            TextInputEditText textInputEditText = C7551i0.m29524OA(C7551i0.this).f25046b;
            l.d(textInputEditText, "binding.etName");
            Editable text = textInputEditText.getText();
            m29523PA.m29465e(new BusinessProfileRequest((text == null || (obj = text.toString()) == null) ? null : v.g0(obj).toString(), null, null, null, null, null, null, null, null, null, null, null, null, null, 16382, null));
        }
    }

    public C7551i0() {
        C7553b c7553b = new C7553b();
        this.f23862c = MediaSessionCompat.m43278P(this, d0.a(C7633b.class), new C7552a(c7553b), new C7554c());
    }

    /* renamed from: OA */
    public static final /* synthetic */ AbstractC8092o m29524OA(C7551i0 c7551i0) {
        AbstractC8092o abstractC8092o = c7551i0.f23863d;
        if (abstractC8092o != null) {
            return abstractC8092o;
        }
        l.l("binding");
        throw null;
    }

    /* renamed from: PA */
    public final C7633b m29523PA() {
        return (C7633b) this.f23862c.getValue();
    }

    public void onCreate(Bundle bundle) {
        C7551i0.super.onCreate(bundle);
        setStyle(2, C3478R.style.StyleX_FormBottomSheetDialogTheme);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        n3.r.a.l requireActivity = requireActivity();
        l.d(requireActivity, "requireActivity()");
        C7805e c7805e = (C7805e) C18334g0.m15219l(requireActivity);
        this.f23860a = (C26986a1.AbstractC26987b) c7805e.f24270K.get();
        AbstractC18228e mo12428c6 = c7805e.f24294e.mo12428c6();
        Objects.requireNonNull(mo12428c6, "Cannot return null from a non-@Nullable component method");
        this.f23861b = mo12428c6;
        AbstractC8092o m1251b = C26866g.m1251b(layoutInflater, C3478R.layout.bottomsheet_biz_name, viewGroup, false);
        m1251b.setLifecycleOwner(this);
        l.d(m1251b, "DataBindingUtil.inflate<…NameBSDFragment\n        }");
        AbstractC8092o abstractC8092o = m1251b;
        this.f23863d = abstractC8092o;
        if (abstractC8092o == null) {
            l.l("binding");
            throw null;
        }
        abstractC8092o.mo28909a(m29523PA());
        AbstractC8092o abstractC8092o2 = this.f23863d;
        if (abstractC8092o2 != null) {
            return abstractC8092o2.getRoot();
        }
        l.l("binding");
        throw null;
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C7551i0.super.onViewCreated(view, bundle);
        AbstractC8092o abstractC8092o = this.f23863d;
        String str = null;
        if (abstractC8092o == null) {
            l.l("binding");
            throw null;
        }
        TextInputEditText textInputEditText = abstractC8092o.f25046b;
        Bundle arguments = getArguments();
        if (arguments != null) {
            str = arguments.getString("biz_name", "");
        }
        textInputEditText.append(str);
        C19286f.m13679Y(textInputEditText, true, 0L, 2);
        C19291g.m13542j(textInputEditText, new C7555d());
        abstractC8092o.f25045a.setOnClickListener(new View$OnClickListenerC7556e());
        m29523PA().f23996m.m42867f(getViewLifecycleOwner(), new C7558j0(this));
    }
}
