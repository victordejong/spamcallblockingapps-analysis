package com.callapp.contacts.manager.popup;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.c;
import com.callapp.contacts.manager.popup.PopupManager;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/BaseDialogFragment.class */
public class BaseDialogFragment extends c {

    /* renamed from: c  reason: collision with root package name */
    boolean f15194c = false;

    /* renamed from: d  reason: collision with root package name */
    private Set<PopupManager.DialogFragmentDismissListener> f15195d = new HashSet();
    private CreateDialogInterface e;
    private onCreateViewListener f;
    private DialogInterface.OnCancelListener g;
    private String h;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/BaseDialogFragment$CreateDialogInterface.class */
    public interface CreateDialogInterface {
        Dialog a(Activity activity, Dialog dialog);

        DialogPopup getDialogPopup();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/BaseDialogFragment$onCreateViewListener.class */
    public interface onCreateViewListener {
        View a(LayoutInflater layoutInflater, ViewGroup viewGroup);

        void setDialogWindowSize(Window window);
    }

    @Override // androidx.fragment.app.c
    public final Dialog a(Bundle bundle) {
        Dialog a2 = super.a(bundle);
        CreateDialogInterface createDialogInterface = this.e;
        Dialog dialog = a2;
        if (createDialogInterface != null) {
            dialog = createDialogInterface.a(getActivity(), a2);
        }
        return dialog;
    }

    public final void a(PopupManager.DialogFragmentDismissListener dialogFragmentDismissListener) {
        this.f15195d.add(dialogFragmentDismissListener);
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f15194c = true;
        super.onCancel(dialogInterface);
        DialogInterface.OnCancelListener onCancelListener = this.g;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        onCreateViewListener oncreateviewlistener = this.f;
        if (oncreateviewlistener != null) {
            return oncreateviewlistener.a(layoutInflater, viewGroup);
        }
        return null;
    }

    @Override // androidx.fragment.app.c, androidx.fragment.app.Fragment
    public void onDestroyView() {
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.c, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        for (PopupManager.DialogFragmentDismissListener dialogFragmentDismissListener : this.f15195d) {
            dialogFragmentDismissListener.a(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        Dialog dialog;
        Window window;
        super.onResume();
        if (this.f != null && (dialog = getDialog()) != null && (window = dialog.getWindow()) != null) {
            this.f.setDialogWindowSize(window);
        }
    }

    public void setActivityName(String str) {
        this.h = str;
    }

    public void setCreateDialogInterface(CreateDialogInterface createDialogInterface) {
        this.e = createDialogInterface;
    }

    public void setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        this.g = onCancelListener;
    }

    public void setOnCreateViewListener(onCreateViewListener oncreateviewlistener) {
        this.f = oncreateviewlistener;
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        CreateDialogInterface createDialogInterface = this.e;
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
        String str = this.h;
        if (str != null && str.length() > 0) {
            sb.append(", ActivityName: ");
            sb.append(this.h);
        }
        return sb.toString() + ", " + super.toString();
    }
}
