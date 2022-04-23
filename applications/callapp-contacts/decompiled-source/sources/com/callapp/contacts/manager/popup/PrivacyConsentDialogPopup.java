package com.callapp.contacts.manager.popup;

import android.content.DialogInterface;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.widget.GdprButton;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/PrivacyConsentDialogPopup.class */
public class PrivacyConsentDialogPopup extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private Accept f15222a;

    /* renamed from: b  reason: collision with root package name */
    private GdprButton f15223b;

    /* renamed from: c  reason: collision with root package name */
    private CheckBox f15224c;

    /* renamed from: d  reason: collision with root package name */
    private CheckBox f15225d;
    private CheckBox e;
    private CheckBox f;
    private CompoundButton.OnCheckedChangeListener g = new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.manager.popup.PrivacyConsentDialogPopup.5
        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (compoundButton.getId() == 2131362000) {
                PrivacyConsentDialogPopup.this.f15225d.setChecked(z);
                PrivacyConsentDialogPopup.this.e.setChecked(z);
                PrivacyConsentDialogPopup.this.f.setChecked(z);
            }
            boolean z2 = true;
            if (PrivacyConsentDialogPopup.this.f15225d.isChecked() && PrivacyConsentDialogPopup.this.e.isChecked() && PrivacyConsentDialogPopup.this.f.isChecked()) {
                PrivacyConsentDialogPopup.this.f15224c.setOnCheckedChangeListener(null);
                PrivacyConsentDialogPopup.this.f15224c.setChecked(true);
                PrivacyConsentDialogPopup.this.f15224c.setOnCheckedChangeListener(PrivacyConsentDialogPopup.this.g);
            }
            if (!PrivacyConsentDialogPopup.this.f15225d.isChecked() || !PrivacyConsentDialogPopup.this.e.isChecked() || !PrivacyConsentDialogPopup.this.f.isChecked()) {
                PrivacyConsentDialogPopup.this.f15224c.setOnCheckedChangeListener(null);
                PrivacyConsentDialogPopup.this.f15224c.setChecked(false);
                PrivacyConsentDialogPopup.this.f15224c.setOnCheckedChangeListener(PrivacyConsentDialogPopup.this.g);
            }
            GdprButton gdprButton = PrivacyConsentDialogPopup.this.f15223b;
            PrivacyConsentDialogPopup privacyConsentDialogPopup = PrivacyConsentDialogPopup.this;
            if (!privacyConsentDialogPopup.f15224c.isChecked() || !PrivacyConsentDialogPopup.this.f15225d.isChecked() || !PrivacyConsentDialogPopup.this.e.isChecked()) {
                z2 = false;
            }
            gdprButton.setData(privacyConsentDialogPopup.a(z2));
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$Accept.class */
    public interface Accept {
        void a();
    }

    public PrivacyConsentDialogPopup(Accept accept) {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "Data consent screen shown");
        setCancelable(false);
        this.f15222a = accept;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public GdprButton.GdprDialogButtonData a(boolean z) {
        return new GdprButton.GdprDialogButtonData(2131231434, 2131886130, z ? new View.OnClickListener() { // from class: com.callapp.contacts.manager.popup._$$Lambda$PrivacyConsentDialogPopup$h86EZE8e5U8PsrmdFl21F1XI2Ns
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PrivacyConsentDialogPopup.this.a(view);
            }
        } : null, z ? 2131232181 : 2131231354);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        AndroidUtils.a(view, 1);
        AnalyticsManager.get().a(Constants.PERMISSIONS, "Data consent screen selected agree");
        Accept accept = this.f15222a;
        if (accept != null) {
            accept.a();
        }
        dismiss();
    }

    protected int getLayoutResId() {
        return 2131558808;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogCancelled(DialogInterface dialogInterface) {
        System.exit(0);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResId(), (ViewGroup) null);
        setupViews(inflate);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }

    protected void setupViews(View view) {
        String string = Activities.getString(2131886642);
        String string2 = Activities.getString(2131886641);
        this.f15224c = (CheckBox) view.findViewById(2131362000);
        ((TextView) view.findViewById(2131364403)).setText(Activities.getString(2131886643));
        this.f15225d = (CheckBox) view.findViewById(2131362337);
        TextView textView = (TextView) view.findViewById(2131364415);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        String string3 = Activities.getString(2131886634);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string3);
        int indexOf = string3.indexOf(string);
        spannableStringBuilder.setSpan(new ClickableSpan() { // from class: com.callapp.contacts.manager.popup.PrivacyConsentDialogPopup.1
            @Override // android.text.style.ClickableSpan
            public void onClick(View view2) {
                AndroidUtils.a(view2, 1);
                Activities.b(PrivacyConsentDialogPopup.this.getActivity(), Activities.a(2131887849, HttpUtils.getCallAppDomain()));
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setColor(ThemeUtils.getColor(2131099784));
                textPaint.linkColor = ThemeUtils.getColor(2131099784);
                textPaint.setUnderlineText(true);
            }
        }, indexOf, string.length() + indexOf, 33);
        textView.setText(spannableStringBuilder);
        textView.setHighlightColor(0);
        this.e = (CheckBox) view.findViewById(2131362336);
        TextView textView2 = (TextView) view.findViewById(2131364413);
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        String string4 = Activities.getString(2131886633);
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(string4);
        int indexOf2 = string4.indexOf(string2);
        spannableStringBuilder2.setSpan(new ClickableSpan() { // from class: com.callapp.contacts.manager.popup.PrivacyConsentDialogPopup.2
            @Override // android.text.style.ClickableSpan
            public void onClick(View view2) {
                AndroidUtils.a(view2, 1);
                Activities.b(PrivacyConsentDialogPopup.this.getActivity(), Activities.a(2131887433, HttpUtils.getCallAppDomain()));
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setColor(ThemeUtils.getColor(2131099784));
                textPaint.linkColor = ThemeUtils.getColor(2131099784);
                textPaint.setUnderlineText(true);
            }
        }, indexOf2, string2.length() + indexOf2, 33);
        textView2.setText(spannableStringBuilder2);
        textView2.setHighlightColor(0);
        this.f = (CheckBox) view.findViewById(2131362335);
        TextView textView3 = (TextView) view.findViewById(2131364405);
        textView3.setMovementMethod(LinkMovementMethod.getInstance());
        String string5 = Activities.getString(2131886632);
        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(string5);
        spannableStringBuilder3.setSpan(new ClickableSpan() { // from class: com.callapp.contacts.manager.popup.PrivacyConsentDialogPopup.3
            @Override // android.text.style.ClickableSpan
            public void onClick(View view2) {
                AndroidUtils.a(view2, 1);
                Activities.b(PrivacyConsentDialogPopup.this.getActivity(), Activities.a(2131887433, HttpUtils.getCallAppDomain()));
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setColor(ThemeUtils.getColor(2131099784));
                textPaint.linkColor = ThemeUtils.getColor(2131099784);
                textPaint.setUnderlineText(true);
            }
        }, 0, string5.length() + 0, 33);
        textView3.setText(spannableStringBuilder3);
        textView3.setHighlightColor(0);
        ((TextView) view.findViewById(2131364409)).setText(Activities.getString(2131886638));
        ((TextView) view.findViewById(2131364406)).setText(Activities.getString(2131886635));
        ((TextView) view.findViewById(2131364410)).setText(Activities.getString(2131886639));
        TextView textView4 = (TextView) view.findViewById(2131364407);
        textView4.setMovementMethod(LinkMovementMethod.getInstance());
        String string6 = Activities.getString(2131886636);
        SpannableStringBuilder spannableStringBuilder4 = new SpannableStringBuilder(string6);
        int indexOf3 = string6.indexOf(string2);
        spannableStringBuilder4.setSpan(new ClickableSpan() { // from class: com.callapp.contacts.manager.popup.PrivacyConsentDialogPopup.4
            @Override // android.text.style.ClickableSpan
            public void onClick(View view2) {
                AndroidUtils.a(view2, 1);
                Activities.b(PrivacyConsentDialogPopup.this.getActivity(), Activities.a(2131887433, HttpUtils.getCallAppDomain()));
            }

            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint textPaint) {
                textPaint.setColor(ThemeUtils.getColor(2131099784));
                textPaint.linkColor = ThemeUtils.getColor(2131099784);
                textPaint.setUnderlineText(true);
            }
        }, indexOf3, string2.length() + indexOf3, 33);
        textView4.setText(spannableStringBuilder4);
        textView4.setHighlightColor(0);
        ((TextView) view.findViewById(2131364411)).setText(Activities.getString(2131886640));
        ((TextView) view.findViewById(2131364408)).setText(Activities.getString(2131886637));
        GdprButton gdprButton = (GdprButton) view.findViewById(2131362157);
        this.f15223b = gdprButton;
        gdprButton.setData(a(false));
        this.f15224c.setOnCheckedChangeListener(this.g);
        this.f15225d.setOnCheckedChangeListener(this.g);
        this.e.setOnCheckedChangeListener(this.g);
        this.f.setOnCheckedChangeListener(this.g);
    }
}
