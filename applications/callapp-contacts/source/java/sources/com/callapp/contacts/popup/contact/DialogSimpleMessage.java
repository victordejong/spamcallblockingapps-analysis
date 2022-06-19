package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSimpleMessage.class */
public class DialogSimpleMessage extends DialogPopup {

    /* renamed from: a */
    private String f27236a;

    /* renamed from: b */
    private String f27237b;

    /* renamed from: c */
    private DialogPopup.IDialogOnClickListener f27238c;

    /* renamed from: d */
    private DialogPopup.IDialogOnClickListener f27239d;

    /* renamed from: e */
    private String f27240e;

    /* renamed from: f */
    private String f27241f;

    /* renamed from: g */
    private int f27242g;

    /* renamed from: h */
    private boolean f27243h;

    public DialogSimpleMessage() {
        this.f27236a = null;
        this.f27237b = null;
        this.f27238c = null;
        this.f27239d = null;
        this.f27240e = null;
        this.f27241f = null;
        this.f27242g = 0;
        this.f27243h = false;
    }

    public DialogSimpleMessage(String str, String str2, String str3, String str4, int i, boolean z, DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2, DialogPopup.IDialogSimpleListener iDialogSimpleListener) {
        this.f27236a = null;
        this.f27237b = null;
        this.f27238c = null;
        this.f27239d = null;
        this.f27240e = null;
        this.f27241f = null;
        this.f27242g = 0;
        this.f27243h = false;
        this.f27236a = str;
        this.f27237b = str2;
        this.f27240e = str3;
        this.f27241f = str4;
        this.f27238c = iDialogOnClickListener;
        this.f27239d = iDialogOnClickListener2;
        this.f27242g = i;
        this.f27243h = z;
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
        return this.f27237b;
    }

    protected String getNegativeBtnText() {
        return this.f27241f;
    }

    protected DialogPopup.IDialogOnClickListener getNegativeListener() {
        return this.f27239d;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    protected String getPositiveBtnText() {
        return this.f27240e;
    }

    protected DialogPopup.IDialogOnClickListener getPositiveListener() {
        return this.f27238c;
    }

    protected String getTitle() {
        return this.f27236a;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResId(), (ViewGroup) null);
        setupViews(inflate);
        return inflate;
    }

    public void setMessage(String str) {
        this.f27237b = str;
    }

    public void setNegativeBtnText(String str) {
        this.f27241f = str;
    }

    public void setNegativeListener(DialogPopup.IDialogOnClickListener iDialogOnClickListener) {
        this.f27239d = iDialogOnClickListener;
    }

    public void setPositiveBtnText(String str) {
        this.f27240e = str;
    }

    public void setPositiveListener(DialogPopup.IDialogOnClickListener iDialogOnClickListener) {
        this.f27238c = iDialogOnClickListener;
    }

    public void setupViews(View view) {
        setupTextViewMember(view, getTitle(), 2131364421);
        setupTextViewMember(view, getMessage(), 2131364424);
        setupButton(view, getPositiveListener(), 2131362584, getPositiveBtnText(), this.f27243h);
        setupButton(view, getNegativeListener(), 2131362581, getNegativeBtnText(), this.f27242g);
    }
}
