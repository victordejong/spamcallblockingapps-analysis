package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSimpleMessage.class */
public class DialogSimpleMessage extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private String f15516a;

    /* renamed from: b  reason: collision with root package name */
    private String f15517b;

    /* renamed from: c  reason: collision with root package name */
    private DialogPopup.IDialogOnClickListener f15518c;

    /* renamed from: d  reason: collision with root package name */
    private DialogPopup.IDialogOnClickListener f15519d;
    private String e;
    private String f;
    private int g;
    private boolean h;

    public DialogSimpleMessage() {
        this.f15516a = null;
        this.f15517b = null;
        this.f15518c = null;
        this.f15519d = null;
        this.e = null;
        this.f = null;
        this.g = 0;
        this.h = false;
    }

    public DialogSimpleMessage(String str, String str2, String str3, String str4, int i, boolean z, DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2, DialogPopup.IDialogSimpleListener iDialogSimpleListener) {
        this.f15516a = null;
        this.f15517b = null;
        this.f15518c = null;
        this.f15519d = null;
        this.e = null;
        this.f = null;
        this.g = 0;
        this.h = false;
        this.f15516a = str;
        this.f15517b = str2;
        this.e = str3;
        this.f = str4;
        this.f15518c = iDialogOnClickListener;
        this.f15519d = iDialogOnClickListener2;
        this.g = i;
        this.h = z;
        setDialogCustomListener(iDialogSimpleListener);
    }

    public DialogSimpleMessage(String str, String str2, String str3, String str4, DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        this(str, str2, str3, str4, iDialogOnClickListener, iDialogOnClickListener2, null);
    }

    public DialogSimpleMessage(String str, String str2, String str3, String str4, DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2, DialogPopup.IDialogSimpleListener iDialogSimpleListener) {
        this(str, str2, str3, str4, 0, false, iDialogOnClickListener, iDialogOnClickListener2, iDialogSimpleListener);
    }

    protected int getLayoutResId() {
        return 2131558625;
    }

    protected String getMessage() {
        return this.f15517b;
    }

    protected String getNegativeBtnText() {
        return this.f;
    }

    protected DialogPopup.IDialogOnClickListener getNegativeListener() {
        return this.f15519d;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    protected String getPositiveBtnText() {
        return this.e;
    }

    protected DialogPopup.IDialogOnClickListener getPositiveListener() {
        return this.f15518c;
    }

    protected String getTitle() {
        return this.f15516a;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResId(), (ViewGroup) null);
        setupViews(inflate);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setMessage(String str) {
        this.f15517b = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setNegativeBtnText(String str) {
        this.f = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setNegativeListener(DialogPopup.IDialogOnClickListener iDialogOnClickListener) {
        this.f15519d = iDialogOnClickListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPositiveBtnText(String str) {
        this.e = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPositiveListener(DialogPopup.IDialogOnClickListener iDialogOnClickListener) {
        this.f15518c = iDialogOnClickListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setupViews(View view) {
        setupTextViewMember(view, getTitle(), 2131364421);
        setupTextViewMember(view, getMessage(), 2131364424);
        setupButton(view, getPositiveListener(), 2131362584, getPositiveBtnText(), this.h);
        setupButton(view, getNegativeListener(), 2131362581, getNegativeBtnText(), this.g);
    }
}
