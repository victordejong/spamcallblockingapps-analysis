package com.callapp.contacts.manager.popup;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.DialogInterface$OnCancelListenerC1089c;
import androidx.fragment.app.FragmentActivity;
import com.callapp.contacts.manager.popup.PopupManager;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/BaseDialogFragment.class */
public class BaseDialogFragment extends DialogInterface$OnCancelListenerC1089c {

    /* renamed from: c */
    boolean f26149c = false;

    /* renamed from: d */
    private Set<PopupManager.DialogFragmentDismissListener> f26150d = new HashSet();

    /* renamed from: e */
    private CreateDialogInterface f26151e;

    /* renamed from: f */
    private onCreateViewListener f26152f;

    /* renamed from: g */
    private DialogInterface.OnCancelListener f26153g;

    /* renamed from: h */
    private String f26154h;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/BaseDialogFragment$CreateDialogInterface.class */
    public interface CreateDialogInterface {
        /* renamed from: a */
        Dialog mo28214a(Activity activity, Dialog dialog);

        DialogPopup getDialogPopup();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener.class */
    public interface onCreateViewListener {
        /* renamed from: a */
        View mo28213a(LayoutInflater layoutInflater, ViewGroup viewGroup);

        void setDialogWindowSize(Window window);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c
    /* renamed from: a */
    public final Dialog mo9884a(Bundle bundle) {
        Dialog mo9884a = super.mo9884a(bundle);
        CreateDialogInterface createDialogInterface = this.f26151e;
        Dialog dialog = mo9884a;
        if (createDialogInterface != null) {
            dialog = createDialogInterface.mo28214a(getActivity(), mo9884a);
        }
        return dialog;
    }

    /* renamed from: a */
    public final void m28215a(PopupManager.DialogFragmentDismissListener dialogFragmentDismissListener) {
        this.f26150d.add(dialogFragmentDismissListener);
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f26149c = true;
        super.onCancel(dialogInterface);
        DialogInterface.OnCancelListener onCancelListener = this.f26153g;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        onCreateViewListener oncreateviewlistener = this.f26152f;
        if (oncreateviewlistener != null) {
            return oncreateviewlistener.mo28213a(layoutInflater, viewGroup);
        }
        return null;
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, androidx.fragment.app.Fragment
    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.DialogInterface$OnCancelListenerC1089c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        for (PopupManager.DialogFragmentDismissListener dialogFragmentDismissListener : this.f26150d) {
            dialogFragmentDismissListener.mo28196a(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        Dialog dialog;
        Window window;
        super.onResume();
        if (this.f26152f == null || (dialog = getDialog()) == null || (window = dialog.getWindow()) == null) {
            return;
        }
        this.f26152f.setDialogWindowSize(window);
    }

    public void setActivityName(String str) {
        this.f26154h = str;
    }

    public void setCreateDialogInterface(CreateDialogInterface createDialogInterface) {
        this.f26151e = createDialogInterface;
    }

    public void setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        this.f26153g = onCancelListener;
    }

    public void setOnCreateViewListener(onCreateViewListener oncreateviewlistener) {
        this.f26152f = oncreateviewlistener;
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        CreateDialogInterface createDialogInterface = this.f26151e;
        DialogPopup dialogPopup = createDialogInterface != null ? createDialogInterface.getDialogPopup() : null;
        StringBuilder sb = new StringBuilder();
        if (dialogPopup != null) {
            sb.append("DialogPopup: ");
            sb.append(dialogPopup);
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            sb.append(", Activity: ");
            sb.append(activity);
        }
        String str = this.f26154h;
        if (str != null && str.length() > 0) {
            sb.append(", ActivityName: ");
            sb.append(this.f26154h);
        }
        return sb.toString() + ", " + super.toString();
    }
}
