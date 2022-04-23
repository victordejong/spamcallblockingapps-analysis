package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogVerifyNumber.class */
public class DialogVerifyNumber extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private CharSequence f15521a;

    /* renamed from: b  reason: collision with root package name */
    private String f15522b = null;

    /* renamed from: c  reason: collision with root package name */
    private DialogPopup.IDialogOnClickListener f15523c;

    /* renamed from: d  reason: collision with root package name */
    private DialogPopup.IDialogOnClickListener f15524d;
    private String e;
    private String f;

    public DialogVerifyNumber(CharSequence charSequence, String str, String str2, DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        this.f15521a = null;
        this.f15523c = null;
        this.f15524d = null;
        this.e = null;
        this.f = null;
        this.f15521a = charSequence;
        this.e = str;
        this.f = str2;
        this.f15523c = iDialogOnClickListener;
        this.f15524d = iDialogOnClickListener2;
    }

    protected int getLayoutResId() {
        return 2131558632;
    }

    protected String getMessage() {
        return this.f15522b;
    }

    protected String getNegativeBtnText() {
        return this.f;
    }

    protected DialogPopup.IDialogOnClickListener getNegativeListener() {
        return this.f15524d;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    protected String getPositiveBtnText() {
        return this.e;
    }

    protected DialogPopup.IDialogOnClickListener getPositiveListener() {
        return this.f15523c;
    }

    protected CharSequence getTitle() {
        return this.f15521a;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResId(), (ViewGroup) null);
        setupViews(inflate);
        return inflate;
    }

    protected void setupViews(View view) {
        setupTextViewMember(view, getTitle(), 2131364421);
        setupTextViewMember(view, getMessage(), 2131364424);
        setupButton(view, getPositiveListener(), 2131362584, getPositiveBtnText(), false);
        setupButton(view, getNegativeListener(), 2131362581, getNegativeBtnText(), 0);
    }
}
