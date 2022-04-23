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

    /* renamed from: a  reason: collision with root package name */
    private CharSequence f15549a;

    /* renamed from: b  reason: collision with root package name */
    private int f15550b;

    /* renamed from: c  reason: collision with root package name */
    private int f15551c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f15552d;
    private Drawable e;
    private TextView f;
    private CallAppDialogEvents g;

    public SimpleProgressDialog() {
        this(ThemeUtils.getColor(2131099784), ThemeUtils.getColor(2131100140));
    }

    public SimpleProgressDialog(int i, int i2) {
        this.f15552d = false;
        this.e = ThemeUtils.getDialogInsetBackgroundDrawable();
        this.f15550b = i;
        this.f15551c = i2;
    }

    public static void a(SimpleProgressDialog simpleProgressDialog) {
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
        CallAppDialogEvents callAppDialogEvents = this.g;
        if (callAppDialogEvents == null) {
            return false;
        }
        callAppDialogEvents.a();
        return false;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResId(), (ViewGroup) null);
        ProgressBar progressBar = (ProgressBar) inflate.findViewById(2131363575);
        progressBar.getIndeterminateDrawable().setColorFilter(this.f15550b, PorterDuff.Mode.SRC_IN);
        progressBar.setIndeterminate(this.f15552d);
        TextView textView = (TextView) inflate.findViewById(2131364462);
        this.f = textView;
        textView.setTextColor(this.f15551c);
        if (StringUtils.b(this.f15549a)) {
            this.f.setText(this.f15549a);
            this.f.setVisibility(0);
        } else {
            this.f.setVisibility(8);
        }
        return inflate;
    }

    public void setCallAppDialogEvents(CallAppDialogEvents callAppDialogEvents) {
        this.g = callAppDialogEvents;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setBackgroundDrawable(this.e);
        window.setGravity(17);
    }

    public void setIndeterminate(boolean z) {
        this.f15552d = z;
    }

    public void setMessage(CharSequence charSequence) {
        this.f15549a = charSequence;
        TextView textView = this.f;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
