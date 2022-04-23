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
import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.recorder.enums.RecordConfiguration;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.CustomLinkMovementMethod;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/callrecorder/DialogCallRecorderWelcome.class */
public class DialogCallRecorderWelcome extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private final CharSequence f15593a = Activities.getString(2131888166);

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f15594b = Activities.getString(2131888158);

    /* renamed from: c  reason: collision with root package name */
    private final DialogPopup.IDialogOnClickListener f15595c;

    /* renamed from: d  reason: collision with root package name */
    private final DialogPopup.IDialogOnClickListener f15596d;

    public DialogCallRecorderWelcome(final DialogPopup.IDialogOnClickListener iDialogOnClickListener, DialogPopup.IDialogOnClickListener iDialogOnClickListener2) {
        this.f15595c = new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.contact.callrecorder._$$Lambda$DialogCallRecorderWelcome$b_uUorCtxEl__4ueFpEGkjo94sE
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                DialogCallRecorderWelcome.this.a(iDialogOnClickListener, activity);
            }
        };
        this.f15596d = iDialogOnClickListener2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(DialogPopup.IDialogOnClickListener iDialogOnClickListener) {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "Call Recording from Consent Dialog - Permission Denied");
        iDialogOnClickListener.onClickListener(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final DialogPopup.IDialogOnClickListener iDialogOnClickListener, Activity activity) {
        Prefs.eL.set(Boolean.TRUE);
        RecordConfiguration.setDefaults();
        PermissionManager.get();
        if (!PermissionManager.a("android.permission.RECORD_AUDIO")) {
            PermissionManager.get().a((BaseActivity) getActivity(), new Runnable() { // from class: com.callapp.contacts.popup.contact.callrecorder._$$Lambda$DialogCallRecorderWelcome$eB01Mgz926x_roTnVwAnw_2okKY
                @Override // java.lang.Runnable
                public final void run() {
                    DialogCallRecorderWelcome.this.b(iDialogOnClickListener);
                }
            }, new Runnable() { // from class: com.callapp.contacts.popup.contact.callrecorder._$$Lambda$DialogCallRecorderWelcome$qbtA3Rc_FdpjTk3mpZn0cj9WNVQ
                @Override // java.lang.Runnable
                public final void run() {
                    DialogCallRecorderWelcome.this.a(iDialogOnClickListener);
                }
            }, PermissionManager.PermissionGroup.MICROPHONE);
        } else {
            iDialogOnClickListener.onClickListener(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(DialogPopup.IDialogOnClickListener iDialogOnClickListener) {
        AnalyticsManager.get().a(Constants.PERMISSIONS, "Call Recording from Consent Dialog - Permission Granted");
        iDialogOnClickListener.onClickListener(getActivity());
    }

    protected int getLayoutResource() {
        return 2131558602;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResource(), (ViewGroup) null);
        setupViews(inflate);
        AnalyticsManager.get().a(Constants.CALL_RECORDER, "Get permission popup show");
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }

    protected void setupViews(View view) {
        setupTextViewMember(view, this.f15593a, 2131364429);
        setupTextViewMember(view, this.f15594b, 2131364424);
        setupButton(view, this.f15595c, 2131362584, Activities.getString(2131888162), true);
        setupButton(view, this.f15596d, 2131362581, Activities.getString(2131888160), ThemeUtils.getColor(2131100108));
        ((ImageView) view.findViewById(2131363381)).setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        TextView textView = (TextView) view.findViewById(2131363385);
        textView.setText(Activities.getString(2131888161));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        String substring = String.format("%X", Integer.valueOf(ThemeUtils.getColor(2131099784))).substring(2);
        Spannable b2 = HtmlUtils.b(String.format("<body>" + Activities.getString(2131888163) + "<font color=\"#%s\"><a href=\"callapp-callback://privacypolicy\">" + Activities.getString(2131887431) + "<a></font>" + Activities.getString(2131888164) + "<font color=\"#%s\"><a href=\"callapp-callback://termsosservice\">" + Activities.getString(2131886128) + "<a></font>" + Activities.getString(2131888165) + "</body>", substring, substring));
        TextView textView2 = (TextView) view.findViewById(2131361887);
        textView2.setTextColor(ThemeUtils.getColor(2131100140));
        textView2.setText(b2);
        textView2.setMovementMethod(new CustomLinkMovementMethod());
    }
}
