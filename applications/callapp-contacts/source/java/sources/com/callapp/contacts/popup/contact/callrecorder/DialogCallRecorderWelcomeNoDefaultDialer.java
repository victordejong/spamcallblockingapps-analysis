package com.callapp.contacts.popup.contact.callrecorder;

import android.app.Activity;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.Spannable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.C0790b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.contacts.widget.CustomLinkMovementMethod;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcomeNoDefaultDialer.class */
public class DialogCallRecorderWelcomeNoDefaultDialer extends DialogCallRecorderWelcome {

    /* renamed from: a */
    private final CharSequence f27329a = Activities.getString(2131888166);

    /* renamed from: b */
    private final CharSequence f27330b = Activities.getString(2131888159);

    /* renamed from: c */
    private final DialogPopup.IDialogOnClickListener f27331c;

    /* renamed from: d */
    private final DialogPopup.IDialogOnClickListener f27332d;

    public DialogCallRecorderWelcomeNoDefaultDialer(final DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        super(iDialogOnClickListener, iDialogOnClickListener2);
        this.f27331c = new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder._$$Lambda$DialogCallRecorderWelcomeNoDefaultDialer$Z0K4AB_QnBc8FPrBwYUq4XyXG3c
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                DialogCallRecorderWelcomeNoDefaultDialer.m27918a(DialogPopup.IDialogOnClickListener.this, activity);
            }
        };
        this.f27332d = iDialogOnClickListener2;
    }

    /* renamed from: a */
    public static /* synthetic */ void m27918a(DialogPopup.IDialogOnClickListener iDialogOnClickListener, Activity activity) {
        Prefs.f26447eL.set(Boolean.TRUE);
        RecordConfiguration.setDefaults();
        iDialogOnClickListener.onClickListener(activity);
    }

    @Override // com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderWelcome
    protected int getLayoutResource() {
        return 2131558603;
    }

    @Override // com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderWelcome, com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.legacyDialogs;
    }

    @Override // com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderWelcome, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        AnalyticsManager.get().m28450a(Constants.CALL_RECORDER, "Get permission popup show");
        return ovViewCreated;
    }

    @Override // com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderWelcome, com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawable(C0790b.m44502a(CallAppApplication.get(), 2131230999));
    }

    @Override // com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderWelcome
    protected void setupViews(View view) {
        TextView textView = (TextView) view.findViewById(2131364429);
        textView.setText(this.f27329a);
        textView.setTextColor(view.getResources().getColor(2131100140));
        TextView textView2 = (TextView) view.findViewById(2131364424);
        textView2.setText(this.f27330b);
        textView2.setTextColor(view.getResources().getColor(2131099784));
        setupButton(view, this.f27331c, 2131362584, Activities.getString(2131888162), true);
        setupButton(view, this.f27332d, 2131362581, Activities.getString(2131888160), view.getResources().getColor(2131100108));
        ((TextView) view.findViewById(2131362584)).setTextColor(view.getResources().getColor(2131099784));
        ((ImageView) view.findViewById(2131363381)).setColorFilter(new PorterDuffColorFilter(view.getResources().getColor(2131099784), PorterDuff.Mode.SRC_IN));
        TextView textView3 = (TextView) view.findViewById(2131363385);
        textView3.setText(Activities.getString(2131888161));
        textView3.setTextColor(view.getResources().getColor(2131100140));
        String substring = String.format("%X", Integer.valueOf(view.getResources().getColor(2131099784))).substring(2);
        Spannable m27537b = HtmlUtils.m27537b(String.format("<body>" + Activities.getString(2131888163) + "<font color=\"#%s\"><a href=\"callapp-callback://privacypolicy\">" + Activities.getString(2131887431) + "<a></font>" + Activities.getString(2131888164) + "<font color=\"#%s\"><a href=\"callapp-callback://termsosservice\">" + Activities.getString(2131886128) + "<a></font>" + Activities.getString(2131888165) + "</body>", substring, substring));
        TextView textView4 = (TextView) view.findViewById(2131361887);
        textView4.setTextColor(view.getResources().getColor(2131100140));
        textView4.setText(m27537b);
        textView4.setMovementMethod(new CustomLinkMovementMethod());
    }
}
