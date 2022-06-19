package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSimple.class */
public abstract class DialogSimple extends DialogPopup {

    /* renamed from: b */
    View f27235b;

    public DialogSimple() {
        this(null);
    }

    public DialogSimple(DialogPopup.IDialogSimpleListener iDialogSimpleListener) {
        setDialogCustomListener(iDialogSimpleListener);
    }

    protected abstract int getDialogLayoutResId();

    protected String getNegativeBtnText() {
        return "";
    }

    protected DialogPopup.IDialogOnClickListener getNegativeListener() {
        return null;
    }

    protected String getNeutralBtnText() {
        return "";
    }

    protected DialogPopup.IDialogOnClickListener getNeutralListener() {
        return null;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    protected String getPositiveBtnText() {
        return "";
    }

    protected DialogPopup.IDialogOnClickListener getPositiveListener() {
        return null;
    }

    protected int getTitleResId() {
        return 0;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getDialogLayoutResId(), (ViewGroup) null);
        setupViews(inflate);
        return inflate;
    }

    public void setupViews(View view) {
        setupTextViewMember(view, Activities.getString(getTitleResId()), 2131364421);
        setupButton(view, getPositiveListener(), 2131362584, getPositiveBtnText());
        setupButton(view, getNegativeListener(), 2131362581, getNegativeBtnText());
        this.f27235b = setupButton(view, getNeutralListener(), 2131362583, getNeutralBtnText());
    }
}
