package com.tmobile.services.nameid.p007ui.dialog_fragment;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import androidx.annotation.LayoutRes;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.utility.LogUtil;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018�� \u00172\u00020\u0001:\u0001\u0017B\u0007¢\u0006\u0004\b\u0016\u0010\u000fJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/CustomInfoDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onStart", "()V", "Lkotlin/Function0;", "buttonAction", "Lkotlin/Function0;", "", "layoutResId", "I", "<init>", "Companion", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.CustomInfoDialogFragment */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/CustomInfoDialogFragment.class */
public final class CustomInfoDialogFragment extends DialogFragment {

    /* renamed from: i */
    public static final Companion f13921i = new Companion(null);
    @LayoutRes

    /* renamed from: f */
    private int f13922f;

    /* renamed from: g */
    private Function0<Unit> f13923g;

    /* renamed from: h */
    private HashMap f13924h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u000f\u0010\u0010J1\u0010\t\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0001\u0010\u0004\u001a\u00020\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/CustomInfoDialogFragment$Companion;", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "layoutResId", "Lkotlin/Function0;", "", "buttonAction", "Landroidx/fragment/app/DialogFragment;", "show", "(Landroidx/fragment/app/FragmentManager;ILkotlin/Function0;)Landroidx/fragment/app/DialogFragment;", "", "CUSTOM_INFO_DIALOG", "Ljava/lang/String;", "LOG_TAG", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.CustomInfoDialogFragment$Companion */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/CustomInfoDialogFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: a */
        public final DialogFragment m6179a(@NotNull FragmentManager fragmentManager, @LayoutRes int i, @Nullable Function0<Unit> function0) {
            Intrinsics.m1830e(fragmentManager, "fragmentManager");
            CustomInfoDialogFragment customInfoDialogFragment = new CustomInfoDialogFragment();
            customInfoDialogFragment.f13922f = i;
            customInfoDialogFragment.f13923g = function0;
            if (!fragmentManager.isDestroyed() && !fragmentManager.isStateSaved()) {
                customInfoDialogFragment.show(fragmentManager, "custom_info_dialog");
            }
            return customInfoDialogFragment;
        }
    }

    /* renamed from: G0 */
    public void m6183G0() {
        HashMap hashMap = this.f13924h;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, C1517R.style.DialogFragmentScrim);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        int i = this.f13922f;
        if (i == 0) {
            LogUtil.m5631p("CustomInfoDialogFragment#", "A layout resource must be provided before dialog is shown");
            return super.onCreateView(inflater, viewGroup, bundle);
        }
        View inflate = inflater.inflate(i, viewGroup, false);
        try {
            View findViewById = inflate.findViewById(C1517R.C1520id.custom_info_modal_button);
            Intrinsics.m1831d(findViewById, "view.findViewById(R.id.custom_info_modal_button)");
            ((Button) findViewById).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.dialog_fragment.CustomInfoDialogFragment$onCreateView$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Function0 function0;
                    function0 = CustomInfoDialogFragment.this.f13923g;
                    if (function0 != null) {
                        Unit unit = (Unit) function0.invoke();
                    }
                    CustomInfoDialogFragment.this.dismissAllowingStateLoss();
                }
            });
            setCancelable(false);
        } catch (ClassCastException e) {
            LogUtil.m5631p("CustomInfoDialogFragment#", "Layout contains view with id [custom_info_modal_button] but view is not a Button; ignoring button action");
        } catch (NullPointerException e2) {
            LogUtil.m5631p("CustomInfoDialogFragment#", "Layout does not contain button with id [custom_info_modal_button]; ignoring button action");
        }
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m6183G0();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        try {
            super.onStart();
            Dialog dialog = getDialog();
            if (dialog != null && (window = dialog.getWindow()) != null) {
                window.setLayout(-1, -1);
            }
        } catch (Throwable th) {
            LogUtil.m5641f("CustomInfoDialogFragment#", "Error while configuring modal for full screen.", th);
            dismissAllowingStateLoss();
        }
    }
}
