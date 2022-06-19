package com.callapp.contacts.popup.contact;

import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/SimpleProgressDialog.class */
public class SimpleProgressDialog extends DialogPopup {

    /* renamed from: a */
    private CharSequence f27278a;

    /* renamed from: b */
    private int f27279b;

    /* renamed from: c */
    private int f27280c;

    /* renamed from: d */
    private boolean f27281d;

    /* renamed from: e */
    private Drawable f27282e;

    /* renamed from: f */
    private TextView f27283f;

    /* renamed from: g */
    private CallAppDialogEvents f27284g;

    public SimpleProgressDialog() {
        this(ThemeUtils.getColor(2131099784), ThemeUtils.getColor(2131100140));
    }

    public SimpleProgressDialog(int i, int i2) {
        this.f27281d = false;
        this.f27282e = ThemeUtils.getDialogInsetBackgroundDrawable();
        this.f27279b = i;
        this.f27280c = i2;
    }

    /* renamed from: a */
    public static void m27939a(SimpleProgressDialog simpleProgressDialog) {
        if (simpleProgressDialog != null) {
            simpleProgressDialog.dismiss();
        }
    }

    protected int getLayoutResId() {
        return 2131558844;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.legacyDialogs;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public boolean onDialogBackPressed() {
        CallAppDialogEvents callAppDialogEvents = this.f27284g;
        if (callAppDialogEvents != null) {
            callAppDialogEvents.mo28006a();
            return false;
        }
        return false;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResId(), (ViewGroup) null);
        ProgressBar progressBar = (ProgressBar) inflate.findViewById(2131363575);
        progressBar.getIndeterminateDrawable().setColorFilter(this.f27279b, PorterDuff.Mode.SRC_IN);
        progressBar.setIndeterminate(this.f27281d);
        TextView textView = (TextView) inflate.findViewById(2131364462);
        this.f27283f = textView;
        textView.setTextColor(this.f27280c);
        if (StringUtils.m26045b(this.f27278a)) {
            this.f27283f.setText(this.f27278a);
            this.f27283f.setVisibility(0);
        } else {
            this.f27283f.setVisibility(8);
        }
        return inflate;
    }

    public void setCallAppDialogEvents(CallAppDialogEvents callAppDialogEvents) {
        this.f27284g = callAppDialogEvents;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setBackgroundDrawable(this.f27282e);
        window.setGravity(17);
    }

    public void setIndeterminate(boolean z) {
        this.f27281d = z;
    }

    public void setMessage(CharSequence charSequence) {
        this.f27278a = charSequence;
        TextView textView = this.f27283f;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
