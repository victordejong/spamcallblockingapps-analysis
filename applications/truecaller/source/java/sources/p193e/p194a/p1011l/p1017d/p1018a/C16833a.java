package p193e.p194a.p1011l.p1017d.p1018a;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.premium.PremiumLaunchContext;
import e.m.a.g.e.d;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p837h0.p838a.AbstractC14811v;
import s1.g;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b5\u0010\u0016J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\t\u0010\nJ-\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u001a\u001a\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR%\u0010\"\u001a\n \u001d*\u0004\u0018\u00010\u001c0\u001c8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R%\u0010'\u001a\n \u001d*\u0004\u0018\u00010#0#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u001f\u001a\u0004\b%\u0010&R%\u0010,\u001a\n \u001d*\u0004\u0018\u00010(0(8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010\u001f\u001a\u0004\b*\u0010+R\"\u00104\u001a\u00020-8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u00066"}, d2 = {"Le/a/l/d/a/a;", "Le/m/a/g/e/e;", "Le/a/l/d/a/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "", "Le/a/h0/a/v;", "optionsList", "xl", "(Ljava/util/List;)V", "Landroid/widget/LinearLayout;", "kotlin.jvm.PlatformType", "h", "Ls1/g;", "getOptions", "()Landroid/widget/LinearLayout;", "options", "Lcom/google/android/material/button/MaterialButton;", "i", "getPositiveButton", "()Lcom/google/android/material/button/MaterialButton;", "positiveButton", "Landroid/widget/TextView;", "g", "getNegativeButton", "()Landroid/widget/TextView;", "negativeButton", "Le/a/l/a2;", "e", "Le/a/l/a2;", "getPremiumScreenNavigator", "()Le/a/l/a2;", "setPremiumScreenNavigator", "(Le/a/l/a2;)V", "premiumScreenNavigator", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.d.a.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/d/a/a.class */
public final class C16833a extends AbstractC16836b implements AbstractC16839e {
    @Inject

    /* renamed from: e */
    public AbstractC16613a2 f47207e;
    @Inject

    /* renamed from: f */
    public C16840f f47208f;

    /* renamed from: g */
    public final g f47209g = C19286f.m13659t(this, 2131364900);

    /* renamed from: h */
    public final g f47210h = C19286f.m13659t(this, C2752R.C2754id.options);

    /* renamed from: i */
    public final g f47211i = C19286f.m13659t(this, 2131365194);

    /* renamed from: e.a.l.d.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/l/d/a/a$a.class */
    public static final class View$OnClickListenerC16834a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f47212a;

        /* renamed from: b */
        public final /* synthetic */ Object f47213b;

        public View$OnClickListenerC16834a(int i, Object obj) {
            this.f47212a = i;
            this.f47213b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f47212a;
            if (i == 0) {
                ((C16833a) this.f47213b).dismissAllowingStateLoss();
            } else if (i != 1) {
                throw null;
            } else {
                C16833a.m16935QA((C16833a) this.f47213b);
            }
        }
    }

    /* renamed from: e.a.l.d.a.a$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/d/a/a$b.class */
    public static final class DialogInterface$OnShowListenerC16835b implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public final /* synthetic */ d f47214a;

        public DialogInterface$OnShowListenerC16835b(d dVar) {
            this.f47214a = dVar;
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            View findViewById = this.f47214a.findViewById(2131363296);
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

    /* renamed from: QA */
    public static final void m16935QA(C16833a c16833a) {
        AbstractC16613a2 abstractC16613a2 = c16833a.f47207e;
        if (abstractC16613a2 == null) {
            l.l("premiumScreenNavigator");
            throw null;
        }
        Context requireContext = c16833a.requireContext();
        l.d(requireContext, "requireContext()");
        abstractC16613a2.mo17167b(requireContext, PremiumLaunchContext.ACS_SPAMMERS_PROMO);
        c16833a.dismissAllowingStateLoss();
    }

    public void onCreate(Bundle bundle) {
        C16833a.super.onCreate(bundle);
        setStyle(2, 2131952216);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        d onCreateDialog = C16833a.super.onCreateDialog(bundle);
        Objects.requireNonNull(onCreateDialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        d dVar = onCreateDialog;
        dVar.setOnShowListener(new DialogInterface$OnShowListenerC16835b(dVar));
        return dVar;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.bottom_sheet_spammers_acs_promo, viewGroup, false);
    }

    public void onDestroyView() {
        C16833a.super.onDestroyView();
        C16840f c16840f = this.f47208f;
        if (c16840f != null) {
            c16840f.f57683a = null;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C16833a.super.onViewCreated(view, bundle);
        ((TextView) this.f47209g.getValue()).setOnClickListener(new View$OnClickListenerC16834a(0, this));
        ((MaterialButton) this.f47211i.getValue()).setOnClickListener(new View$OnClickListenerC16834a(1, this));
        C16840f c16840f = this.f47208f;
        if (c16840f != null) {
            c16840f.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1011l.p1017d.p1018a.AbstractC16839e
    /* renamed from: xl */
    public void mo16931xl(List<? extends AbstractC14811v> list) {
        l.e(list, "optionsList");
        int i = 0;
        for (Object obj : list) {
            if (i < 0) {
                i.N0();
                throw null;
            }
            AbstractC14811v abstractC14811v = (AbstractC14811v) obj;
            Context requireContext = requireContext();
            l.d(requireContext, "requireContext()");
            boolean z = true;
            View inflate = LayoutInflater.from(C17422k.m16113E(requireContext, true)).inflate(C2752R.layout.item_blocking_switch, (ViewGroup) ((LinearLayout) this.f47210h.getValue()), false);
            TintedImageView tintedImageView = (TintedImageView) inflate.findViewById(C2752R.C2754id.itemImage);
            Context requireContext2 = requireContext();
            l.d(requireContext2, "requireContext()");
            tintedImageView.setTint(C19291g.m13612L(C17422k.m16113E(requireContext2, true), 2130970017));
            if (abstractC14811v.f42372a == null) {
                l.d(tintedImageView, "iconView");
                tintedImageView.setVisibility(8);
            } else {
                l.d(tintedImageView, "iconView");
                tintedImageView.setVisibility(0);
                Integer num = abstractC14811v.f42373b;
                if (num == null) {
                    num = abstractC14811v.f42372a;
                }
                tintedImageView.setImageResource(num.intValue());
            }
            ((TextView) inflate.findViewById(C2752R.C2754id.itemSwitchLabel)).setText(abstractC14811v.f42374c);
            ((TextView) inflate.findViewById(C2752R.C2754id.itemDescription)).setText(abstractC14811v.f42375d);
            View findViewById = inflate.findViewById(C2752R.C2754id.itemEdit);
            l.d(findViewById, "optionView.findViewById<View>(R.id.itemEdit)");
            C19286f.m13689O(findViewById);
            View findViewById2 = inflate.findViewById(C2752R.C2754id.itemLearnMore);
            l.d(findViewById2, "optionView.findViewById<View>(R.id.itemLearnMore)");
            C19286f.m13689O(findViewById2);
            ((SwitchCompat) inflate.findViewById(C2752R.C2754id.itemSwitch)).setOnClickListener(new View$OnClickListenerC16837c(this));
            l.d(inflate, "optionView");
            View findViewById3 = inflate.findViewById(C2752R.C2754id.itemDivider);
            l.d(findViewById3, "optionView.findViewById<View>(R.id.itemDivider)");
            if (i >= list.size() - 1) {
                z = false;
            }
            C19286f.m13683U(findViewById3, z);
            ((LinearLayout) this.f47210h.getValue()).addView(inflate);
            i++;
        }
    }
}
