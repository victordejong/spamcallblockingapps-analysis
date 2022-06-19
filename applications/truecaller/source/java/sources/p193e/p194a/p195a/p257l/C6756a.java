package p193e.p194a.p195a.p257l;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.d;
import e.m.a.g.e.e;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18164i;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p773g.p783h.C14264i;
import s1.a.l;
import s1.f0.v;
import s1.s;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� G2\u00020\u00012\u00020\u0002:\u00011B\u0007¢\u0006\u0004\bF\u0010\u0016J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\t\u0010\nJ-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J5\u0010\u001e\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u001cH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u001aH\u0016¢\u0006\u0004\b$\u0010%J\u001d\u0010(\u001a\u00020\u00052\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001c0&H\u0016¢\u0006\u0004\b(\u0010)J#\u0010.\u001a\u00020\u0005*\u00020*2\u0006\u0010+\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b.\u0010/R\u001d\u00105\u001a\u0002008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\"\u0010=\u001a\u0002068\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010E\u001a\u00020>8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010D¨\u0006H"}, d2 = {"Le/a/a/l/a;", "Le/m/a/g/e/e;", "Le/a/a/l/d;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDetach", "()V", "", "conversationId", "messageId", "", "isTcDefaultSmsApp", "", "text", "Rh", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;)V", AnalyticsConstants.NAME, "Jv", "(Ljava/lang/String;)V", AnalyticsConstants.SHOW, "ye", "(Z)V", "", "options", "a9", "([Ljava/lang/String;)V", "Landroid/widget/TextView;", "option", "", "index", "RA", "(Landroid/widget/TextView;Ljava/lang/String;I)V", "Le/a/m3/i;", AbstractC2405c.f7629a, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/i;", "binding", "Le/a/p5/h0;", C22021b.f61237c, "Le/a/p5/h0;", "getResourceProvider", "()Le/a/p5/h0;", "setResourceProvider", "(Le/a/p5/h0;)V", "resourceProvider", "Le/a/a/l/b;", "a", "Le/a/a/l/b;", "PA", "()Le/a/a/l/b;", "setPresenter", "(Le/a/a/l/b;)V", "presenter", "<init>", "e", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.l.a */
/* loaded from: classes10-dex2jar.jar:e/a/a/l/a.class */
public final class C6756a extends e implements AbstractC6767d {

    /* renamed from: d */
    public static final /* synthetic */ l[] f22255d = {C22128a.m8621g0(C6756a.class, "binding", "getBinding()Lcom/truecaller/databinding/BottomSheetAcsReplyBinding;", 0)};

    /* renamed from: e */
    public static final C6759c f22256e = new C6759c(null);
    @Inject

    /* renamed from: a */
    public AbstractC6764b f22257a;

    /* renamed from: b */
    public AbstractC19233h0 f22258b;

    /* renamed from: c */
    public final ViewBindingProperty f22259c = new C19350a(new C6758b());

    /* renamed from: e.a.a.l.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/l/a$a.class */
    public static final class View$OnClickListenerC6757a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f22260a;

        /* renamed from: b */
        public final /* synthetic */ Object f22261b;

        public View$OnClickListenerC6757a(int i, Object obj) {
            this.f22260a = i;
            this.f22261b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f22260a;
            if (i == 0) {
                ((C6756a) this.f22261b).m30467PA().mo30461N0();
            } else if (i != 1) {
                throw null;
            } else {
                ((C6756a) this.f22261b).dismiss();
            }
        }
    }

    /* renamed from: e.a.a.l.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/a/l/a$b.class */
    public static final class C6758b extends m implements s1.z.b.l<C6756a, C18164i> {
        public C6758b() {
            super(1);
        }

        /* renamed from: d */
        public Object m30464d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362687;
            MaterialButton findViewById = requireView.findViewById(C2752R.C2754id.cancel);
            if (findViewById != null) {
                i = 2131365402;
                TextInputEditText findViewById2 = requireView.findViewById(C2752R.C2754id.replyEdit);
                if (findViewById2 != null) {
                    i = 2131365403;
                    TextInputLayout textInputLayout = (TextInputLayout) requireView.findViewById(C2752R.C2754id.replyEditWrap);
                    if (textInputLayout != null) {
                        i = 2131365404;
                        TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.replyTitle);
                        if (textView != null) {
                            i = 2131365658;
                            MaterialButton findViewById3 = requireView.findViewById(2131365658);
                            if (findViewById3 != null) {
                                i = 2131366790;
                                View findViewById4 = requireView.findViewById(2131366790);
                                if (findViewById4 != null) {
                                    return new C18164i((ConstraintLayout) requireView, findViewById, findViewById2, textInputLayout, textView, findViewById3, C14264i.m20310a(findViewById4));
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.l.a$c */
    /* loaded from: classes10-dex2jar.jar:e/a/a/l/a$c.class */
    public static final class C6759c {
        public C6759c(f fVar) {
        }
    }

    /* renamed from: e.a.a.l.a$d */
    /* loaded from: classes10-dex2jar.jar:e/a/a/l/a$d.class */
    public static final class DialogInterface$OnShowListenerC6760d implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public final /* synthetic */ d f22262a;

        public DialogInterface$OnShowListenerC6760d(d dVar) {
            this.f22262a = dVar;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            View findViewById = this.f22262a.findViewById(2131363296);
            View view = findViewById;
            if (!(findViewById instanceof FrameLayout)) {
                view = null;
            }
            FrameLayout frameLayout = (FrameLayout) view;
            if (frameLayout != null) {
                BottomSheetBehavior H = BottomSheetBehavior.H(frameLayout);
                H.M(3);
                H.L(frameLayout.getHeight());
            }
        }
    }

    /* renamed from: e.a.a.l.a$e */
    /* loaded from: classes10-dex2jar.jar:e/a/a/l/a$e.class */
    public static final class C6761e extends m implements s1.z.b.l<SpannableStringBuilder, s> {

        /* renamed from: b */
        public final /* synthetic */ String f22263b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6761e(C6756a c6756a, String str) {
            super(1);
            this.f22263b = str;
        }

        /* renamed from: d */
        public Object m30463d(Object obj) {
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) obj;
            s1.z.c.l.e(spannableStringBuilder, "$receiver");
            spannableStringBuilder.append((CharSequence) this.f22263b);
            return s.a;
        }
    }

    /* renamed from: e.a.a.l.a$f */
    /* loaded from: classes10-dex2jar.jar:e/a/a/l/a$f.class */
    public static final class C6762f extends m implements s1.z.b.l<Editable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6762f() {
            super(1);
            C6756a.this = r4;
        }

        /* renamed from: d */
        public Object m30462d(Object obj) {
            Editable editable = (Editable) obj;
            C6756a.this.m30467PA().mo30459ug(String.valueOf(editable != null ? v.g0(editable) : null));
            C6756a.m30466QA(C6756a.this, 0, false, 1);
            return s.a;
        }
    }

    /* renamed from: e.a.a.l.a$g */
    /* loaded from: classes10-dex2jar.jar:e/a/a/l/a$g.class */
    public static final class View$OnClickListenerC6763g implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ int f22266b;

        public View$OnClickListenerC6763g(int i) {
            C6756a.this = r4;
            this.f22266b = i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C6756a.m30466QA(C6756a.this, this.f22266b, false, 2);
            C6756a.this.m30467PA().mo30458y8(this.f22266b);
        }
    }

    /* renamed from: QA */
    public static void m30466QA(C6756a c6756a, int i, boolean z, int i2) {
        if ((i2 & 1) != 0) {
            i = -1;
        }
        if ((i2 & 2) != 0) {
            z = true;
        }
        if (z) {
            TextInputEditText textInputEditText = c6756a.m30468OA().f51258b;
            s1.z.c.l.d(textInputEditText, "binding.replyEdit");
            textInputEditText.setText(null);
        }
        AppCompatTextView appCompatTextView = c6756a.m30468OA().f51261e.f41301e;
        s1.z.c.l.d(appCompatTextView, "binding.viewReply.replyOne");
        appCompatTextView.setSelected(i == 0);
        AppCompatTextView appCompatTextView2 = c6756a.m30468OA().f51261e.f41302f;
        s1.z.c.l.d(appCompatTextView2, "binding.viewReply.replyTwo");
        appCompatTextView2.setSelected(i == 1);
        AppCompatTextView appCompatTextView3 = c6756a.m30468OA().f51261e.f41300d;
        s1.z.c.l.d(appCompatTextView3, "binding.viewReply.replyCustom");
        appCompatTextView3.setSelected(i == 2);
    }

    @Override // p193e.p194a.p195a.p257l.AbstractC6767d
    /* renamed from: Jv */
    public void mo30454Jv(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.NAME);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) getResources().getString(C2752R.string.acs_reply_dialog_title));
        spannableStringBuilder.append((CharSequence) StringConstant.SPACE);
        C6761e c6761e = new C6761e(this, str);
        int length = spannableStringBuilder.length();
        c6761e.m30463d(spannableStringBuilder);
        spannableStringBuilder.setSpan(new StyleSpan(1), length, spannableStringBuilder.length(), 17);
        TextView textView = m30468OA().f51259c;
        s1.z.c.l.d(textView, "binding.replyTitle");
        textView.setText(spannableStringBuilder);
        TextInputEditText textInputEditText = m30468OA().f51258b;
        s1.z.c.l.d(textInputEditText, "binding.replyEdit");
        C19291g.m13542j(textInputEditText, new C6762f());
        m30468OA().f51258b.requestFocus();
        m30468OA().f51260d.setOnClickListener(new View$OnClickListenerC6757a(0, this));
        MaterialButton materialButton = m30468OA().f51260d;
        s1.z.c.l.d(materialButton, "binding.sendMessage");
        materialButton.setEnabled(false);
        m30468OA().f51257a.setOnClickListener(new View$OnClickListenerC6757a(1, this));
        AppCompatTextView appCompatTextView = m30468OA().f51261e.f41298b;
        AbstractC19233h0 abstractC19233h0 = this.f22258b;
        if (abstractC19233h0 != null) {
            appCompatTextView.setTextColor(abstractC19233h0.mo13758l(2130970165));
        } else {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
    }

    /* renamed from: OA */
    public final C18164i m30468OA() {
        return (C18164i) this.f22259c.m34468b(this, f22255d[0]);
    }

    /* renamed from: PA */
    public final AbstractC6764b m30467PA() {
        AbstractC6764b abstractC6764b = this.f22257a;
        if (abstractC6764b != null) {
            return abstractC6764b;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [int[], int[][]] */
    /* renamed from: RA */
    public final void m30465RA(TextView textView, String str, int i) {
        textView.setText(str);
        C19286f.m13684T(textView);
        textView.setOnClickListener(new View$OnClickListenerC6763g(i));
        AbstractC19233h0 abstractC19233h0 = this.f22258b;
        if (abstractC19233h0 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        int mo13769a = abstractC19233h0.mo13769a(2131101238);
        AbstractC19233h0 abstractC19233h02 = this.f22258b;
        if (abstractC19233h02 == null) {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
        textView.setTextColor(new ColorStateList(new int[]{new int[]{16842913}, new int[0]}, new int[]{mo13769a, abstractC19233h02.mo13758l(2130970164)}));
        AbstractC19233h0 abstractC19233h03 = this.f22258b;
        if (abstractC19233h03 != null) {
            textView.setBackground(abstractC19233h03.mo13763g(2130970163));
        } else {
            s1.z.c.l.l("resourceProvider");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p257l.AbstractC6767d
    /* renamed from: Rh */
    public void mo30453Rh(Long l, Long l2, Boolean bool, String str) {
        s1.z.c.l.e(str, "text");
        Intent intent = new Intent();
        intent.putExtra("extra_reply_conversation_id", l);
        intent.putExtra("extra_reply_message_id", l2);
        intent.putExtra("extra_tc_default_sms_app", bool);
        intent.putExtra("extra_reply_text", str);
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            targetFragment.onActivityResult(getTargetRequestCode(), -1, intent);
        }
        dismiss();
    }

    @Override // p193e.p194a.p195a.p257l.AbstractC6767d
    /* renamed from: a9 */
    public void mo30452a9(String[] strArr) {
        s1.z.c.l.e(strArr, "options");
        C14264i c14264i = m30468OA().f51261e;
        s1.z.c.l.d(c14264i, "binding.viewReply");
        ConstraintLayout constraintLayout = c14264i.f41297a;
        s1.z.c.l.d(constraintLayout, "binding.viewReply.root");
        C19286f.m13684T(constraintLayout);
        AppCompatTextView appCompatTextView = m30468OA().f51261e.f41298b;
        s1.z.c.l.d(appCompatTextView, "binding.viewReply.acsReplyTitle");
        appCompatTextView.setText(getString((int) C2752R.string.acs_reply_dialog_subtitle));
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (i == 0) {
                AppCompatTextView appCompatTextView2 = m30468OA().f51261e.f41301e;
                s1.z.c.l.d(appCompatTextView2, "binding.viewReply.replyOne");
                m30465RA(appCompatTextView2, strArr[i], i);
            } else if (i == 1) {
                AppCompatTextView appCompatTextView3 = m30468OA().f51261e.f41302f;
                s1.z.c.l.d(appCompatTextView3, "binding.viewReply.replyTwo");
                m30465RA(appCompatTextView3, strArr[i], i);
            } else if (i == 2) {
                AppCompatTextView appCompatTextView4 = m30468OA().f51261e.f41300d;
                s1.z.c.l.d(appCompatTextView4, "binding.viewReply.replyCustom");
                m30465RA(appCompatTextView4, strArr[i], i);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003b, code lost:
        if (r8 != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p257l.C6756a.onCreate(android.os.Bundle):void");
    }

    public Dialog onCreateDialog(Bundle bundle) {
        d onCreateDialog = C6756a.super.onCreateDialog(bundle);
        Objects.requireNonNull(onCreateDialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        d dVar = onCreateDialog;
        dVar.setOnShowListener(new DialogInterface$OnShowListenerC6760d(dVar));
        return dVar;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.bottom_sheet_acs_reply, viewGroup, false);
    }

    public void onDetach() {
        C6756a.super.onDetach();
        AbstractC6764b abstractC6764b = this.f22257a;
        if (abstractC6764b != null) {
            abstractC6764b.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C6756a.super.onViewCreated(view, bundle);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        this.f22258b = new C19235i0(C17422k.m16113E(requireContext, true));
        AbstractC6764b abstractC6764b = this.f22257a;
        if (abstractC6764b == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC6764b.mo9029Y0(this);
        AbstractC6764b abstractC6764b2 = this.f22257a;
        if (abstractC6764b2 != null) {
            abstractC6764b2.mo30460X1();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p195a.p257l.AbstractC6767d
    /* renamed from: ye */
    public void mo30451ye(boolean z) {
        MaterialButton materialButton = m30468OA().f51260d;
        s1.z.c.l.d(materialButton, "binding.sendMessage");
        materialButton.setEnabled(z);
    }
}
