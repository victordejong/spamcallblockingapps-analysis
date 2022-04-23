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

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<HelperData> f13787c;
    private NetworkConnectionActionListener f;
    private Integer g;
    private boolean h;
    private HelperData j;
    private HelperData k;
    private SimpleProgressDialog l;
    private HelperData m;

    /* renamed from: a  reason: collision with root package name */
    private final int f13785a = ThemeUtils.getColor(2131099786);

    /* renamed from: b  reason: collision with root package name */
    private final int f13786b = ThemeUtils.getColor(2131100108);

    /* renamed from: d  reason: collision with root package name */
    private boolean f13788d = false;
    private boolean e = false;
    private boolean i = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.settings.TextualSocialLoginFragment$4  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/TextualSocialLoginFragment$4.class */
    public class AnonymousClass4 implements DialogPopup.IDialogOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HelperData f13797a;

        AnonymousClass4(HelperData helperData) {
            this.f13797a = helperData;
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public void onClickListener(final Activity activity) {
            new Task() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.4.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnonymousClass4.this.f13797a.f13814b.e();
                    TextualSocialLoginFragment.a(TextualSocialLoginFragment.this, AnonymousClass4.this.f13797a.f13814b.getApiConstantNetworkId(), false);
                    activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.4.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            FeedbackManager.get().a(Activities.a(2131887285, AnonymousClass4.this.f13797a.f), (Integer) null);
                            TextualSocialLoginFragment.this.a(AnonymousClass4.this.f13797a, false);
                        }
                    });
                }
            }.execute();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.settings.TextualSocialLoginFragment$7  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/TextualSocialLoginFragment$7.class */
    public class AnonymousClass7 extends RemoteAccountHelper.DefaultLoginListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f13806a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ HelperData f13807b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass7(RemoteAccountHelper remoteAccountHelper, Activity activity, HelperData helperData) {
            super(remoteAccountHelper);
            this.f13806a = activity;
            this.f13807b = helperData;
        }

        @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
        public final void a() {
            super.a();
            TextualSocialLoginFragment.this.a(this.f13807b, "connect complete");
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.7.2
                @Override // java.lang.Runnable
                public void run() {
                    TextualSocialLoginFragment.a(TextualSocialLoginFragment.this, AnonymousClass7.this.f13807b.f13814b.getApiConstantNetworkId(), true);
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.7.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TextualSocialLoginFragment.a(AnonymousClass7.this.f13807b.f13814b, AnonymousClass7.this.f13806a, TextualSocialLoginFragment.this.i);
                        }
                    });
                    if (AnonymousClass7.this.f13807b.f13814b instanceof GoogleHelper) {
                        TextualSocialLoginFragment.this.a(TextualSocialLoginFragment.this.j, true);
                    } else {
                        TextualSocialLoginFragment.this.a(AnonymousClass7.this.f13807b, false);
                    }
                }
            });
        }

        @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
        public final void b() {
            super.b();
            FeedbackManager.get().a(Activities.getString(2131887286), (Integer) null);
            this.f13806a.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.7.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AnonymousClass7.this.f13807b.f13814b instanceof GoogleHelper) {
                        TextualSocialLoginFragment.this.a(TextualSocialLoginFragment.this.j, true);
                    } else {
                        TextualSocialLoginFragment.this.a(AnonymousClass7.this.f13807b, false);
                    }
                }
            });
        }

        @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
        public final void c() {
            super.c();
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.7.3
                @Override // java.lang.Runnable
                public void run() {
                    TextualSocialLoginFragment.this.a(AnonymousClass7.this.f13807b, false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData.class */
    public final class HelperData {

        /* renamed from: b  reason: collision with root package name */
        private final RemoteAccountHelper f13814b;

        /* renamed from: c  reason: collision with root package name */
        private final View f13815c;

        /* renamed from: d  reason: collision with root package name */
        private final View f13816d;
        private final TextView e;
        private final String f;

        private HelperData(TextualSocialLoginFragment textualSocialLoginFragment, RemoteAccountHelper remoteAccountHelper, View view, View view2, TextView textView) {
            this(remoteAccountHelper, view, view2, textView, remoteAccountHelper.getName());
        }

        private HelperData(RemoteAccountHelper remoteAccountHelper, View view, View view2, TextView textView, String str) {
            this.f13814b = remoteAccountHelper;
            this.f13815c = view2;
            this.f = str;
            this.e = textView;
            this.f13816d = view;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/settings/TextualSocialLoginFragment$NetworkConnectionActionListener.class */
    public interface NetworkConnectionActionListener {
        void a(int i, boolean z);
    }

    private CompoundButton.OnCheckedChangeListener a(final HelperData helperData) {
        return new CompoundButton.OnCheckedChangeListener() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                TextualSocialLoginFragment.a(TextualSocialLoginFragment.this, helperData);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final HelperData helperData, boolean z) {
        d();
        boolean z2 = helperData.f13815c instanceof CompoundButton;
        CompoundButton compoundButton = null;
        if (z2) {
            compoundButton = (CompoundButton) helperData.f13815c;
            compoundButton.setOnCheckedChangeListener(null);
        }
        if (!helperData.f13814b.isLoggedIn()) {
            if (z2) {
                compoundButton.setChecked(false);
                helperData.e.setTextColor(this.f13786b);
                helperData.e.setText(b(helperData));
            }
        } else if (this.f13788d || z || this.e) {
            helperData.f13816d.setVisibility(8);
        } else if (z2) {
            helperData.e.setTextColor(this.f13785a);
            compoundButton.setChecked(true);
            new Task() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    FragmentActivity activity;
                    final String userName = helperData.f13814b.getUserName();
                    if (StringUtils.b((CharSequence) userName) && (activity = TextualSocialLoginFragment.this.getActivity()) != null) {
                        activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                String str = helperData.f;
                                SpannableString spannableString = new SpannableString(str + "     " + userName);
                                spannableString.setSpan(new RelativeSizeSpan(0.55f), str.length(), spannableString.length(), 33);
                                spannableString.setSpan(new StyleSpan(1), 0, str.length(), 17);
                                helperData.e.setText(spannableString);
                            }
                        });
                    }
                }
            }.execute();
        }
        if (z2) {
            compoundButton.setOnCheckedChangeListener(a(helperData));
        }
    }

    static /* synthetic */ void a(TextualSocialLoginFragment textualSocialLoginFragment, int i, boolean z) {
        NetworkConnectionActionListener networkConnectionActionListener = textualSocialLoginFragment.f;
        if (networkConnectionActionListener != null) {
            networkConnectionActionListener.a(i, z);
        }
    }

    static /* synthetic */ void a(TextualSocialLoginFragment textualSocialLoginFragment, final HelperData helperData) {
        textualSocialLoginFragment.setButtonsEnabled(false);
        if (!HttpUtils.a()) {
            textualSocialLoginFragment.a(helperData, false);
            FeedbackManager.get().a(Activities.getString(2131887407));
            textualSocialLoginFragment.setButtonsEnabled(true);
        } else if (helperData.f13814b.isLoggedIn()) {
            if (!(textualSocialLoginFragment.getActivity() instanceof SetupWizardActivity)) {
                textualSocialLoginFragment.a(helperData, "offer disconnect");
                FragmentActivity activity = textualSocialLoginFragment.getActivity();
                if (activity != null) {
                    PopupManager.get().a(activity, new DialogSimpleMessage(null, Activities.a(2131886776, helperData.f), Activities.getString(2131886775), Activities.getString(2131886505), new AnonymousClass4(helperData), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.5
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity2) {
                            TextualSocialLoginFragment.this.a(helperData, false);
                        }
                    }, new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.settings.TextualSocialLoginFragment.6
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                        public final void a(DialogPopup dialogPopup) {
                        }

                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
                        public final void b(DialogPopup dialogPopup) {
                            TextualSocialLoginFragment.this.a(helperData, false);
                        }

                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
                        public void onShow(DialogInterface dialogInterface) {
                        }
                    }));
                }
            }
            textualSocialLoginFragment.setButtonsEnabled(true);
        } else {
            textualSocialLoginFragment.a(helperData, "clicked connect");
            textualSocialLoginFragment.l = textualSocialLoginFragment.getProgressDialog();
            PopupManager.get().a(textualSocialLoginFragment.getActivity(), textualSocialLoginFragment.l);
            FragmentActivity activity2 = textualSocialLoginFragment.getActivity();
            if (activity2 != null) {
                helperData.f13814b.setLoginListener(new AnonymousClass7(helperData.f13814b, activity2, helperData));
                helperData.f13814b.b(activity2);
            }
        }
    }

    public static void a(RemoteAccountHelper remoteAccountHelper, Activity activity, boolean z) {
        if (!z) {
            FeedbackManager.get().a(Activities.a(2131887284, remoteAccountHelper.getName()), (Integer) null);
            if (remoteAccountHelper instanceof TwitterHelper) {
                PopupManager.get().a(activity, new FollowCallAppPopup(remoteAccountHelper));
            }
        }
    }

    private static CharSequence b(HelperData helperData) {
        SpannableString spannableString;
        String str = helperData.f;
        if (!helperData.f13814b.getName().equals(helperData.f)) {
            return str;
        }
        String loginLabelText = helperData.f13814b.getLoginLabelText();
        if (StringUtils.a((CharSequence) loginLabelText)) {
            spannableString = new SpannableString(str);
        } else {
            spannableString = new SpannableString(str + org.apache.commons.lang3.StringUtils.LF + loginLabelText);
            spannableString.setSpan(new RelativeSizeSpan(0.55f), str.length(), spannableString.length(), 17);
        }
        return spannableString;
    }

    private void d() {
        SimpleProgressDialog.a(this.l);
        this.l = null;
        setButtonsEnabled(true);
    }

    private SimpleProgressDialog getProgressDialog() {
        SimpleProgressDialog simpleProgressDialog;
        synchronized (this) {
            if ((this.l == null || (!this.h && this.g != null)) && getActivity() != null) {
                SimpleProgressDialog simpleProgressDialog2 = new SimpleProgressDialog();
                this.l = simpleProgressDialog2;
                this.h = true;
                simpleProgressDialog2.setMessage(Activities.getString(2131887415));
                this.l.setCancelable(false);
            }
            simpleProgressDialog = this.l;
        }
        return simpleProgressDialog;
    }

    private void setButtonsEnabled(boolean z) {
        ArrayList<HelperData> arrayList = this.f13787c;
        if (arrayList != null) {
            Iterator<HelperData> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().f13815c.setEnabled(z);
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

    public final void a() {
        a(this.k, false);
        a(this.m, false);
    }

    protected final void a(HelperData helperData, String str) {
        if (getActivity() instanceof SetupWizardActivity) {
            AnalyticsManager.get().a(Constants.REGISTRATION, str, helperData.f);
        }
    }

    public final void b() {
        this.f13788d = true;
        Iterator<HelperData> it2 = this.f13787c.iterator();
        while (it2.hasNext()) {
            HelperData next = it2.next();
            if (next.f13815c.getVisibility() == 0 && next.f13814b.isLoggedIn()) {
                next.f13816d.setVisibility(8);
            }
        }
    }

    public final void c() {
        this.e = true;
        Iterator<HelperData> it2 = this.f13787c.iterator();
        while (it2.hasNext()) {
            HelperData next = it2.next();
            if (next.f13814b != GoogleHelper.get() && next.f13815c.getVisibility() == 0 && !next.f13814b.isNativeAppInstalled()) {
                next.f13816d.setVisibility(8);
            }
        }
    }

    public int getNumConnected() {
        ArrayList<HelperData> arrayList = this.f13787c;
        int i = 0;
        int i2 = 0;
        if (arrayList != null) {
            Iterator<HelperData> it2 = arrayList.iterator();
            while (true) {
                i = i2;
                if (!it2.hasNext()) {
                    break;
                } else if (it2.next().f13814b.isLoggedIn()) {
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
        d();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        setButtonsEnabled(true);
    }

    public void setDialogTheme(int i) {
        this.g = Integer.valueOf(i);
    }

    public void setIsFromSetup(boolean z) {
        this.i = z;
    }

    public void setNetworkConnectionActionListener(NetworkConnectionActionListener networkConnectionActionListener) {
        this.f = networkConnectionActionListener;
    }
}
