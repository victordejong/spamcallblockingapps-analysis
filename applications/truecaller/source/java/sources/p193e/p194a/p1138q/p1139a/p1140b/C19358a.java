package p193e.p194a.p1138q.p1139a.p1140b;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.contactfeedback.C3744R;
import com.truecaller.contactfeedback.model.Profile;
import com.truecaller.contactfeedback.p158ui.ErrorConstraintLayout;
import com.truecaller.contactfeedback.p158ui.ManualDropdownDismissSpinner;
import com.truecaller.contactfeedback.presentation.addcomment.model.AddCommentRequest;
import e.m.a.g.e.d;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018��2\u00020\u00012\u00020\u0002:\u0001TB\u0007¢\u0006\u0004\bS\u0010\u001bJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\u00052\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ+\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J!\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00142\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u001bJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u001bJ\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b#\u0010\"J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u001fH\u0016¢\u0006\u0004\b%\u0010\"J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u001fH\u0016¢\u0006\u0004\b&\u0010\"J\u0017\u0010(\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u001fH\u0016¢\u0006\u0004\b(\u0010\"J\u001f\u0010*\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010)\u001a\u00020\u001fH\u0002¢\u0006\u0004\b*\u0010+R%\u00102\u001a\n -*\u0004\u0018\u00010,0,8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R%\u00107\u001a\n -*\u0004\u0018\u000103038B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010/\u001a\u0004\b5\u00106R%\u0010<\u001a\n -*\u0004\u0018\u000108088B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010/\u001a\u0004\b:\u0010;R%\u0010?\u001a\n -*\u0004\u0018\u000108088B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u0010/\u001a\u0004\b>\u0010;R\"\u0010G\u001a\u00020@8��@��X\u0081.¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR%\u0010L\u001a\n -*\u0004\u0018\u00010H0H8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u0010/\u001a\u0004\bJ\u0010KR%\u0010O\u001a\n -*\u0004\u0018\u000108088B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bM\u0010/\u001a\u0004\bN\u0010;R%\u0010R\u001a\n -*\u0004\u0018\u000108088B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bP\u0010/\u001a\u0004\bQ\u0010;¨\u0006U"}, d2 = {"Le/a/q/a/b/a;", "Le/m/a/g/e/e;", "Le/a/q/a/b/f;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "Lcom/truecaller/contactfeedback/model/Profile;", "profiles", "Z3", "(Ljava/util/List;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "qj", "()V", "Nk", "onDestroyView", "ew", "", "length", "d2", "(I)V", "Bd", "resId", "k5", "B5", "max", "p3", "colorAttr", "VA", "(II)V", "Lcom/truecaller/contactfeedback/ui/ManualDropdownDismissSpinner;", "kotlin.jvm.PlatformType", "h", "Ls1/g;", "SA", "()Lcom/truecaller/contactfeedback/ui/ManualDropdownDismissSpinner;", "profileNameSpinner", "Landroid/widget/EditText;", "j", "UA", "()Landroid/widget/EditText;", "writeCommentEditText", "Landroid/widget/TextView;", "g", "QA", "()Landroid/widget/TextView;", "commentBoxLabel", "i", "getTextInputCounter", "textInputCounter", "Le/a/q/a/b/e;", "l", "Le/a/q/a/b/e;", "RA", "()Le/a/q/a/b/e;", "setPresenter$contact_feedback_release", "(Le/a/q/a/b/e;)V", "presenter", "Lcom/truecaller/contactfeedback/ui/ErrorConstraintLayout;", "k", "getWriteCommentInputLayout", "()Lcom/truecaller/contactfeedback/ui/ErrorConstraintLayout;", "writeCommentInputLayout", "e", "getCancelCommentButton", "cancelCommentButton", "f", "TA", "submitCommentButton", "<init>", C22021b.f61237c, "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.q.a.b.a */
/* loaded from: classes4-dex2jar.jar:e/a/q/a/b/a.class */
public final class C19358a extends AbstractC19372i implements AbstractC19369f {

    /* renamed from: e */
    public final g f53833e = C19286f.m13659t(this, C3744R.C3746id.cancelCommentButton);

    /* renamed from: f */
    public final g f53834f = C19286f.m13659t(this, C3744R.C3746id.submitCommentButton);

    /* renamed from: g */
    public final g f53835g = C19286f.m13659t(this, C3744R.C3746id.commentBoxLabel);

    /* renamed from: h */
    public final g f53836h = C19286f.m13659t(this, C3744R.C3746id.profileNameSpinner);

    /* renamed from: i */
    public final g f53837i = C19286f.m13659t(this, C3744R.C3746id.textInputCounter);

    /* renamed from: j */
    public final g f53838j = C19286f.m13659t(this, C3744R.C3746id.writeCommentEditText);

    /* renamed from: k */
    public final g f53839k = C19286f.m13659t(this, C3744R.C3746id.writeCommentInputLayout);
    @Inject

    /* renamed from: l */
    public AbstractC19368e f53840l;

    /* renamed from: e.a.q.a.b.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/q/a/b/a$a.class */
    public static final class View$OnClickListenerC19359a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f53841a;

        /* renamed from: b */
        public final /* synthetic */ Object f53842b;

        public View$OnClickListenerC19359a(int i, Object obj) {
            this.f53841a = i;
            this.f53842b = obj;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
            if (s1.f0.r.p(r8) == false) goto L15;
         */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onClick(android.view.View r8) {
            /*
                Method dump skipped, instructions count: 258
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1138q.p1139a.p1140b.C19358a.View$OnClickListenerC19359a.onClick(android.view.View):void");
        }
    }

    /* renamed from: e.a.q.a.b.a$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q/a/b/a$b.class */
    public final class C19360b implements AbstractC19375l {
        public C19360b() {
            C19358a.this = r4;
        }

        @Override // p193e.p194a.p1138q.p1139a.p1140b.AbstractC19375l
        /* renamed from: a */
        public void mo13394a(Profile profile, int i) {
            ((C19363b) C19358a.this.m13414RA()).f53848f = profile;
            C19358a.this.m13413SA().setSelection(i, true);
            C19358a.this.m13413SA().m35609c();
        }
    }

    /* renamed from: e.a.q.a.b.a$c */
    /* loaded from: classes4-dex2jar.jar:e/a/q/a/b/a$c.class */
    public static final class C19361c extends d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19361c(Context context, int i) {
            super(context, i);
            C19358a.this = r5;
        }

        public void onBackPressed() {
            C19358a.this.requireActivity().finish();
        }
    }

    /* renamed from: e.a.q.a.b.a$d */
    /* loaded from: classes4-dex2jar.jar:e/a/q/a/b/a$d.class */
    public static final class C19362d implements TextWatcher {
        public C19362d() {
            C19358a.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:39:0x0136, code lost:
            if (r0 != false) goto L40;
         */
        @Override // android.text.TextWatcher
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onTextChanged(java.lang.CharSequence r6, int r7, int r8, int r9) {
            /*
                Method dump skipped, instructions count: 361
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1138q.p1139a.p1140b.C19358a.C19362d.onTextChanged(java.lang.CharSequence, int, int, int):void");
        }
    }

    @Override // p193e.p194a.p1138q.p1139a.p1140b.AbstractC19369f
    /* renamed from: B5 */
    public void mo13408B5(int i) {
        m13415QA().setTextColor(C19291g.m13612L(requireContext(), C3744R.attr.tcx_textTertiary));
        TextView m13415QA = m13415QA();
        l.d(m13415QA, "commentBoxLabel");
        m13415QA.setText(getResources().getString(i));
        ((ErrorConstraintLayout) this.f53839k.getValue()).setError(false);
    }

    @Override // p193e.p194a.p1138q.p1139a.p1140b.AbstractC19369f
    /* renamed from: Bd */
    public void mo13407Bd(int i) {
        m13410VA(i, C3744R.attr.tcx_brandBackgroundBlue);
    }

    @Override // p193e.p194a.p1138q.p1139a.p1140b.AbstractC19369f
    /* renamed from: Nk */
    public void mo13406Nk() {
        TextView m13412TA = m13412TA();
        l.d(m13412TA, "submitCommentButton");
        m13412TA.setEnabled(true);
    }

    /* renamed from: QA */
    public final TextView m13415QA() {
        return (TextView) this.f53835g.getValue();
    }

    /* renamed from: RA */
    public final AbstractC19368e m13414RA() {
        AbstractC19368e abstractC19368e = this.f53840l;
        if (abstractC19368e != null) {
            return abstractC19368e;
        }
        l.l("presenter");
        throw null;
    }

    /* renamed from: SA */
    public final ManualDropdownDismissSpinner m13413SA() {
        return (ManualDropdownDismissSpinner) this.f53836h.getValue();
    }

    /* renamed from: TA */
    public final TextView m13412TA() {
        return (TextView) this.f53834f.getValue();
    }

    /* renamed from: UA */
    public final EditText m13411UA() {
        return (EditText) this.f53838j.getValue();
    }

    /* renamed from: VA */
    public final void m13410VA(int i, int i2) {
        TextView textView = (TextView) this.f53837i.getValue();
        l.d(textView, "textInputCounter");
        textView.setText(String.valueOf(i));
        ((TextView) this.f53837i.getValue()).setTextColor(C19291g.m13612L(requireContext(), i2));
    }

    @Override // p193e.p194a.p1138q.p1139a.p1140b.AbstractC19369f
    /* renamed from: Z3 */
    public void mo13405Z3(List<Profile> list) {
        l.e(list, "profiles");
        C19360b c19360b = new C19360b();
        ManualDropdownDismissSpinner m13413SA = m13413SA();
        l.d(m13413SA, "profileNameSpinner");
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        m13413SA.setAdapter((SpinnerAdapter) new C19374k(requireContext, list, c19360b));
        m13413SA().setSelection(0);
    }

    @Override // p193e.p194a.p1138q.p1139a.p1140b.AbstractC19369f
    /* renamed from: d2 */
    public void mo13404d2(int i) {
        m13410VA(i, C3744R.attr.tcx_alertBackgroundRed);
    }

    @Override // p193e.p194a.p1138q.p1139a.p1140b.AbstractC19369f
    /* renamed from: ew */
    public void mo13403ew() {
        n3.r.a.l requireActivity = requireActivity();
        l.d(requireActivity, "requireActivity()");
        C19291g.m13589S1(requireActivity, C3744R.string.write_comment_message, null, 0, 6);
        requireActivity().finish();
    }

    @Override // p193e.p194a.p1138q.p1139a.p1140b.AbstractC19369f
    /* renamed from: k5 */
    public void mo13402k5(int i) {
        m13415QA().setTextColor(C19291g.m13612L(requireContext(), C3744R.attr.tcx_alertBackgroundRed));
        TextView m13415QA = m13415QA();
        l.d(m13415QA, "commentBoxLabel");
        m13415QA.setText(getResources().getString(i));
        ((ErrorConstraintLayout) this.f53839k.getValue()).setError(true);
    }

    public void onCreate(Bundle bundle) {
        C19358a.super.onCreate(bundle);
        setStyle(0, C3744R.style.AddCommentBottomSheetStyle);
        Bundle arguments = getArguments();
        AddCommentRequest addCommentRequest = arguments != null ? (AddCommentRequest) arguments.getParcelable("request") : null;
        if (addCommentRequest != null) {
            AbstractC19368e abstractC19368e = this.f53840l;
            if (abstractC19368e == null) {
                l.l("presenter");
                throw null;
            }
            C19363b c19363b = (C19363b) abstractC19368e;
            Objects.requireNonNull(c19363b);
            l.e(addCommentRequest, "request");
            c19363b.f53846d = addCommentRequest;
            return;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.app.Dialog, e.a.q.a.b.a$c] */
    public Dialog onCreateDialog(Bundle bundle) {
        return new C19361c(requireContext(), getTheme());
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        View inflate = C17422k.m16050u0(layoutInflater, true).inflate(C3744R.layout.fragment_add_comment, viewGroup, false);
        l.d(inflate, "inflater.toThemeInflater…omment, container, false)");
        return inflate;
    }

    public void onDestroyView() {
        AbstractC19368e abstractC19368e = this.f53840l;
        Boolean bool = null;
        if (abstractC19368e == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC19368e).mo9806c();
        C19358a.super.onDestroyView();
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            bool = Boolean.valueOf(activity.isFinishing());
        }
        l.a(bool, Boolean.FALSE);
        n3.r.a.l activity2 = getActivity();
        if (activity2 == null) {
            return;
        }
        activity2.finish();
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C19358a.super.onViewCreated(view, bundle);
        ((TextView) this.f53833e.getValue()).setOnClickListener(new View$OnClickListenerC19359a(0, this));
        m13412TA().setOnClickListener(new View$OnClickListenerC19359a(1, this));
        mo13400qj();
        EditText m13411UA = m13411UA();
        l.d(m13411UA, "writeCommentEditText");
        C19291g.m13500x(m13411UA);
        m13411UA().addTextChangedListener(new C19362d());
        AbstractC19368e abstractC19368e = this.f53840l;
        if (abstractC19368e != null) {
            ((C19363b) abstractC19368e).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1138q.p1139a.p1140b.AbstractC19369f
    /* renamed from: p3 */
    public void mo13401p3(int i) {
        EditText m13411UA = m13411UA();
        l.d(m13411UA, "writeCommentEditText");
        m13411UA.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i)});
    }

    @Override // p193e.p194a.p1138q.p1139a.p1140b.AbstractC19369f
    /* renamed from: qj */
    public void mo13400qj() {
        TextView m13412TA = m13412TA();
        l.d(m13412TA, "submitCommentButton");
        m13412TA.setEnabled(false);
    }
}
