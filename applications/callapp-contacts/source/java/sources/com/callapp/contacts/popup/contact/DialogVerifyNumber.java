package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogVerifyNumber.class */
public class DialogVerifyNumber extends DialogPopup {

    /* renamed from: a */
    private CharSequence f27245a;

    /* renamed from: b */
    private String f27246b = null;

    /* renamed from: c */
    private DialogPopup.IDialogOnClickListener f27247c;

    /* renamed from: d */
    private DialogPopup.IDialogOnClickListener f27248d;

    /* renamed from: e */
    private String f27249e;

    /* renamed from: f */
    private String f27250f;

    public DialogVerifyNumber(CharSequence charSequence, String str, String str2, DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        this.f27245a = null;
        this.f27247c = null;
        this.f27248d = null;
        this.f27249e = null;
        this.f27250f = null;
        this.f27245a = charSequence;
        this.f27249e = str;
        this.f27250f = str2;
        this.f27247c = iDialogOnClickListener;
        this.f27248d = iDialogOnClickListener2;
    }

    protected int getLayoutResId() {
        return 2131558632;
    }

    protected String getMessage() {
        return this.f27246b;
    }

    protected String getNegativeBtnText() {
        return this.f27250f;
    }

    protected DialogPopup.IDialogOnClickListener getNegativeListener() {
        return this.f27248d;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    protected String getPositiveBtnText() {
        return this.f27249e;
    }

    protected DialogPopup.IDialogOnClickListener getPositiveListener() {
        return this.f27247c;
    }

    protected CharSequence getTitle() {
        return this.f27245a;
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
