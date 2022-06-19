package com.callapp.contacts.activity.settings;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.FollowCallAppPopup;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/TextualSocialLoginFragment.class */
public class TextualSocialLoginFragment extends Fragment {

    /* renamed from: c */
    private ArrayList<HelperData> f24320c;

    /* renamed from: f */
    private NetworkConnectionActionListener f24323f;

    /* renamed from: g */
    private Integer f24324g;

    /* renamed from: h */
    private boolean f24325h;

    /* renamed from: j */
    private HelperData f24327j;

    /* renamed from: k */
    private HelperData f24328k;

    /* renamed from: l */
    private SimpleProgressDialog f24329l;

    /* renamed from: m */
    private HelperData f24330m;

    /* renamed from: a */
    private final int f24318a = ThemeUtils.getColor(2131099786);

    /* renamed from: b */
    private final int f24319b = ThemeUtils.getColor(2131100108);

    /* renamed from: d */
    private boolean f24321d = false;

    /* renamed from: e */
    private boolean f24322e = false;

    /* renamed from: i */
    private boolean f24326i = false;

    /* renamed from: com.callapp.contacts.activity.settings.TextualSocialLoginFragment$4 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/TextualSocialLoginFragment$4.class */
    public class C70254 implements DialogPopup.IDialogOnClickListener {

        /* renamed from: a */
        final /* synthetic */ HelperData f24339a;

        C70254(HelperData helperData) {
            TextualSocialLoginFragment.this = r4;
            this.f24339a = helperData;
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public void onClickListener(final Activity activity) {
            new Task() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.4.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    C70254.this.f24339a.f24356b.mo29101e();
                    TextualSocialLoginFragment.m29579a(TextualSocialLoginFragment.this, C70254.this.f24339a.f24356b.getApiConstantNetworkId(), false);
                    activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.4.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            FeedbackManager.get().m28669a(Activities.m27697a(2131887285, C70254.this.f24339a.f24360f), (Integer) null);
                            TextualSocialLoginFragment.this.m29581a(C70254.this.f24339a, false);
                        }
                    });
                }
            }.execute();
        }
    }

    /* renamed from: com.callapp.contacts.activity.settings.TextualSocialLoginFragment$7 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/TextualSocialLoginFragment$7.class */
    public class C70307 extends RemoteAccountHelper.DefaultLoginListener {

        /* renamed from: a */
        final /* synthetic */ Activity f24348a;

        /* renamed from: b */
        final /* synthetic */ HelperData f24349b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C70307(RemoteAccountHelper remoteAccountHelper, Activity activity, HelperData helperData) {
            super(remoteAccountHelper);
            TextualSocialLoginFragment.this = r4;
            this.f24348a = activity;
            this.f24349b = helperData;
        }

        @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
        /* renamed from: a */
        public final void mo26206a() {
            super.mo26206a();
            TextualSocialLoginFragment.this.m29582a(this.f24349b, "connect complete");
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.7.2
                @Override // java.lang.Runnable
                public void run() {
                    TextualSocialLoginFragment.m29579a(TextualSocialLoginFragment.this, C70307.this.f24349b.f24356b.getApiConstantNetworkId(), true);
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.7.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TextualSocialLoginFragment.m29577a(C70307.this.f24349b.f24356b, C70307.this.f24348a, TextualSocialLoginFragment.this.f24326i);
                        }
                    });
                    if (C70307.this.f24349b.f24356b instanceof GoogleHelper) {
                        TextualSocialLoginFragment.this.m29581a(TextualSocialLoginFragment.this.f24327j, true);
                    } else {
                        TextualSocialLoginFragment.this.m29581a(C70307.this.f24349b, false);
                    }
                }
            });
        }

        @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
        /* renamed from: b */
        public final void mo26205b() {
            super.mo26205b();
            FeedbackManager.get().m28669a(Activities.getString(2131887286), (Integer) null);
            this.f24348a.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.7.1
                @Override // java.lang.Runnable
                public void run() {
                    if (C70307.this.f24349b.f24356b instanceof GoogleHelper) {
                        TextualSocialLoginFragment.this.m29581a(TextualSocialLoginFragment.this.f24327j, true);
                    } else {
                        TextualSocialLoginFragment.this.m29581a(C70307.this.f24349b, false);
                    }
                }
            });
        }

        @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
        /* renamed from: c */
        public final void mo26203c() {
            super.mo26203c();
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.7.3
                @Override // java.lang.Runnable
                public void run() {
                    TextualSocialLoginFragment.this.m29581a(C70307.this.f24349b, false);
                }
            });
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData.class */
    public final class HelperData {

        /* renamed from: b */
        private final RemoteAccountHelper f24356b;

        /* renamed from: c */
        private final View f24357c;

        /* renamed from: d */
        private final View f24358d;

        /* renamed from: e */
        private final TextView f24359e;

        /* renamed from: f */
        private final String f24360f;

        private HelperData(TextualSocialLoginFragment textualSocialLoginFragment, RemoteAccountHelper remoteAccountHelper, View view, View view2, TextView textView) {
            this(remoteAccountHelper, view, view2, textView, remoteAccountHelper.getName());
        }

        private HelperData(RemoteAccountHelper remoteAccountHelper, View view, View view2, TextView textView, String str) {
            TextualSocialLoginFragment.this = r4;
            this.f24356b = remoteAccountHelper;
            this.f24357c = view2;
            this.f24360f = str;
            this.f24359e = textView;
            this.f24358d = view;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/TextualSocialLoginFragment$NetworkConnectionActionListener.class */
    public interface NetworkConnectionActionListener {
        /* renamed from: a */
        void mo29478a(int i, boolean z);
    }

    /* renamed from: a */
    private CompoundButton.OnCheckedChangeListener m29583a(final HelperData helperData) {
        return new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                TextualSocialLoginFragment.m29578a(TextualSocialLoginFragment.this, helperData);
            }
        };
    }

    /* renamed from: a */
    public void m29581a(final HelperData helperData, boolean z) {
        m29570d();
        boolean z2 = helperData.f24357c instanceof CompoundButton;
        CompoundButton compoundButton = null;
        if (z2) {
            compoundButton = (CompoundButton) helperData.f24357c;
            compoundButton.setOnCheckedChangeListener(null);
        }
        if (!helperData.f24356b.isLoggedIn()) {
            if (z2) {
                compoundButton.setChecked(false);
                helperData.f24359e.setTextColor(this.f24319b);
                helperData.f24359e.setText(m29575b(helperData));
            }
        } else if (this.f24321d || z || this.f24322e) {
            helperData.f24358d.setVisibility(8);
        } else if (z2) {
            helperData.f24359e.setTextColor(this.f24318a);
            compoundButton.setChecked(true);
            new Task() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    FragmentActivity activity;
                    final String userName = helperData.f24356b.getUserName();
                    if (!StringUtils.m26045b((CharSequence) userName) || (activity = TextualSocialLoginFragment.this.getActivity()) == null) {
                        return;
                    }
                    activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            String str = helperData.f24360f;
                            SpannableString spannableString = new SpannableString(str + "     " + userName);
                            spannableString.setSpan(new RelativeSizeSpan(0.55f), str.length(), spannableString.length(), 33);
                            spannableString.setSpan(new StyleSpan(1), 0, str.length(), 17);
                            helperData.f24359e.setText(spannableString);
                        }
                    });
                }
            }.execute();
        }
        if (z2) {
            compoundButton.setOnCheckedChangeListener(m29583a(helperData));
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m29579a(TextualSocialLoginFragment textualSocialLoginFragment, int i, boolean z) {
        NetworkConnectionActionListener networkConnectionActionListener = textualSocialLoginFragment.f24323f;
        if (networkConnectionActionListener != null) {
            networkConnectionActionListener.mo29478a(i, z);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m29578a(TextualSocialLoginFragment textualSocialLoginFragment, final HelperData helperData) {
        textualSocialLoginFragment.setButtonsEnabled(false);
        if (!HttpUtils.m26985a()) {
            textualSocialLoginFragment.m29581a(helperData, false);
            FeedbackManager.get().m28671a(Activities.getString(2131887407));
            textualSocialLoginFragment.setButtonsEnabled(true);
        } else if (helperData.f24356b.isLoggedIn()) {
            if (!(textualSocialLoginFragment.getActivity() instanceof SetupWizardActivity)) {
                textualSocialLoginFragment.m29582a(helperData, "offer disconnect");
                FragmentActivity activity = textualSocialLoginFragment.getActivity();
                if (activity != null) {
                    PopupManager.get().m28209a(activity, new DialogSimpleMessage(null, Activities.m27697a(2131886776, helperData.f24360f), Activities.getString(2131886775), Activities.getString(2131886505), new C70254(helperData), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.5
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity2) {
                            TextualSocialLoginFragment.this.m29581a(helperData, false);
                        }
                    }, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.6
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                        /* renamed from: a */
                        public final void mo26209a(DialogPopup dialogPopup) {
                        }

                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                        /* renamed from: b */
                        public final void mo26208b(DialogPopup dialogPopup) {
                            TextualSocialLoginFragment.this.m29581a(helperData, false);
                        }

                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                        public void onShow(DialogInterface dialogInterface) {
                        }
                    }));
                }
            }
            textualSocialLoginFragment.setButtonsEnabled(true);
        } else {
            textualSocialLoginFragment.m29582a(helperData, "clicked connect");
            textualSocialLoginFragment.f24329l = textualSocialLoginFragment.getProgressDialog();
            PopupManager.get().m28209a(textualSocialLoginFragment.getActivity(), textualSocialLoginFragment.f24329l);
            FragmentActivity activity2 = textualSocialLoginFragment.getActivity();
            if (activity2 == null) {
                return;
            }
            helperData.f24356b.setLoginListener(new C70307(helperData.f24356b, activity2, helperData));
            helperData.f24356b.m29241b(activity2);
        }
    }

    /* renamed from: a */
    public static void m29577a(RemoteAccountHelper remoteAccountHelper, Activity activity, boolean z) {
        if (!z) {
            FeedbackManager.get().m28669a(Activities.m27697a(2131887284, remoteAccountHelper.getName()), (Integer) null);
            if (!(remoteAccountHelper instanceof TwitterHelper)) {
                return;
            }
            PopupManager.get().m28209a(activity, new FollowCallAppPopup(remoteAccountHelper));
        }
    }

    /* renamed from: b */
    private static CharSequence m29575b(HelperData helperData) {
        SpannableString spannableString;
        String str = helperData.f24360f;
        if (!helperData.f24356b.getName().equals(helperData.f24360f)) {
            return str;
        }
        String loginLabelText = helperData.f24356b.getLoginLabelText();
        if (StringUtils.m26059a((CharSequence) loginLabelText)) {
            spannableString = new SpannableString(str);
        } else {
            spannableString = new SpannableString(str + org.apache.commons.lang3.StringUtils.f67179LF + loginLabelText);
            spannableString.setSpan(new RelativeSizeSpan(0.55f), str.length(), spannableString.length(), 17);
        }
        return spannableString;
    }

    /* renamed from: d */
    private void m29570d() {
        SimpleProgressDialog.m27939a(this.f24329l);
        this.f24329l = null;
        setButtonsEnabled(true);
    }

    private SimpleProgressDialog getProgressDialog() {
        SimpleProgressDialog simpleProgressDialog;
        synchronized (this) {
            if ((this.f24329l == null || (!this.f24325h && this.f24324g != null)) && getActivity() != null) {
                SimpleProgressDialog simpleProgressDialog2 = new SimpleProgressDialog();
                this.f24329l = simpleProgressDialog2;
                this.f24325h = true;
                simpleProgressDialog2.setMessage(Activities.getString(2131887415));
                this.f24329l.setCancelable(false);
            }
            simpleProgressDialog = this.f24329l;
        }
        return simpleProgressDialog;
    }

    private void setButtonsEnabled(boolean z) {
        ArrayList<HelperData> arrayList = this.f24320c;
        if (arrayList != null) {
            Iterator<HelperData> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().f24357c.setEnabled(z);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0194 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x017e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setupSocialButtons(android.view.View r11) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.setupSocialButtons(android.view.View):void");
    }

    /* renamed from: a */
    public final void m29584a() {
        m29581a(this.f24328k, false);
        m29581a(this.f24330m, false);
    }

    /* renamed from: a */
    protected final void m29582a(HelperData helperData, String str) {
        if (getActivity() instanceof SetupWizardActivity) {
            AnalyticsManager.get().m28449a(Constants.REGISTRATION, str, helperData.f24360f);
        }
    }

    /* renamed from: b */
    public final void m29576b() {
        this.f24321d = true;
        Iterator<HelperData> it2 = this.f24320c.iterator();
        while (it2.hasNext()) {
            HelperData next = it2.next();
            if (next.f24357c.getVisibility() == 0 && next.f24356b.isLoggedIn()) {
                next.f24358d.setVisibility(8);
            }
        }
    }

    /* renamed from: c */
    public final void m29572c() {
        this.f24322e = true;
        Iterator<HelperData> it2 = this.f24320c.iterator();
        while (it2.hasNext()) {
            HelperData next = it2.next();
            if (next.f24356b != GoogleHelper.get() && next.f24357c.getVisibility() == 0 && !next.f24356b.isNativeAppInstalled()) {
                next.f24358d.setVisibility(8);
            }
        }
    }

    public int getNumConnected() {
        ArrayList<HelperData> arrayList = this.f24320c;
        int i = 0;
        int i2 = 0;
        if (arrayList != null) {
            Iterator<HelperData> it2 = arrayList.iterator();
            while (true) {
                i = i2;
                if (!it2.hasNext()) {
                    break;
                } else if (it2.next().f24356b.isLoggedIn()) {
                    i2++;
                }
            }
        }
        return i;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131558735, (ViewGroup) null);
        setupSocialButtons(inflate);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m29570d();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        setButtonsEnabled(true);
    }

    public void setDialogTheme(int i) {
        this.f24324g = Integer.valueOf(i);
    }

    public void setIsFromSetup(boolean z) {
        this.f24326i = z;
    }

    public void setNetworkConnectionActionListener(NetworkConnectionActionListener networkConnectionActionListener) {
        this.f24323f = networkConnectionActionListener;
    }
}
