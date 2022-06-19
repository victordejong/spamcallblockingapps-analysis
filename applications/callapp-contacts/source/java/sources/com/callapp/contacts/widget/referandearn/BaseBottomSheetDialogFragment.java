package com.callapp.contacts.widget.referandearn;

import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.google.android.material.C14376a;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.C14460b;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u000bH&J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0013\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u001c\u001a\u00020\rH\u0016J\b\u0010\u001d\u001a\u00020\rH\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u001e"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "Lcom/callapp/contacts/manager/phone/CallStateListener;", "()V", "rootView", "Landroid/view/View;", "getRootView", "()Landroid/view/View;", "setRootView", "(Landroid/view/View;)V", "getLayoutResource", "", "onActivityCreated", "", "savedInstanceState", "Landroid/os/Bundle;", "onCallStateChanged", "callData", "Lcom/callapp/contacts/model/call/CallData;", "onCreate", "onCreateDialog", "Landroid/app/Dialog;", "onCreateView", "layoutInflater", "Landroid/view/LayoutInflater;", "viewGroup", "Landroid/view/ViewGroup;", "bundle", "onDestroy", "onStart", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment.class */
public abstract class BaseBottomSheetDialogFragment extends C14460b implements CallStateListener {

    /* renamed from: c */
    private View f29331c;

    @Override // com.google.android.material.bottomsheet.C14460b, androidx.appcompat.app.C0202g, androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public final Dialog mo9884a(Bundle bundle) {
        Dialog mo9884a = super.mo9884a(bundle);
        C18524p.m3843b(mo9884a, "super.onCreateDialog(savedInstanceState)");
        Window window = mo9884a.getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT >= 27) {
                FragmentActivity activity = getActivity();
                if (activity != null) {
                    activity.setShowWhenLocked(true);
                }
            } else {
                window.addFlags(524288);
            }
            if (Activities.m27641e()) {
                window.setType(Build.VERSION.SDK_INT >= 26 ? 2038 : 2002);
            }
        }
        return mo9884a;
    }

    public abstract int getLayoutResource();

    public final View getRootView() {
        return this.f29331c;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        View it2 = getView();
        if (it2 != null) {
            C18524p.m3843b(it2, "it");
            ViewParent parent = it2.getParent();
            Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.View");
            ((View) parent).setBackgroundColor(ThemeUtils.getColor(2131100145));
        }
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        if ((callData != null ? callData.getState() : null) == CallState.RINGING_INCOMING) {
            mo11078b();
        }
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        PhoneStateManager.get().addListener(this);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C18524p.m3840d(layoutInflater, "layoutInflater");
        View inflate = layoutInflater.inflate(getLayoutResource(), viewGroup, false);
        this.f29331c = inflate;
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        PhoneStateManager.get().removeListener(this);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public void onStart() {
        ViewGroup.LayoutParams layoutParams;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog != null) {
            View findViewById = dialog.findViewById(C14376a.C14382f.design_bottom_sheet);
            if (findViewById != null && (layoutParams = findViewById.getLayoutParams()) != null) {
                layoutParams.height = -2;
            }
            final BottomSheetBehavior m11135a = BottomSheetBehavior.m11135a(findViewById);
            C18524p.m3843b(m11135a, "BottomSheetBehavior.from(bottomSheet)");
            View view = this.f29331c;
            ConstraintLayout constraintLayout = view != null ? (ConstraintLayout) view.findViewById(2131363708) : null;
            Objects.requireNonNull(constraintLayout, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout");
            ViewTreeObserver viewTreeObserver = constraintLayout.getViewTreeObserver();
            C18524p.m3843b(viewTreeObserver, "layout.viewTreeObserver");
            final ConstraintLayout constraintLayout2 = constraintLayout;
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.callapp.contacts.widget.referandearn.BaseBottomSheetDialogFragment$onStart$$inlined$let$lambda$1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    ConstraintLayout.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    m11135a.m11119b(ConstraintLayout.this.getHeight());
                    View rootView = this.getRootView();
                    if (rootView != null) {
                        rootView.requestLayout();
                    }
                }
            });
        }
    }
}
