package com.callapp.contacts.activity.setup.phoneLogin;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseFullScreenActivity;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.DialogVerifyNumber;
import com.callapp.contacts.popup.contact.DialogVerifyNumberBeforeFlash;
import com.callapp.contacts.service.jobs.SmsReceivedServiceV1;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogEntry;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.contacts.util.LocaleUtils;
import com.callapp.contacts.util.SinchCodeUtils;
import com.callapp.contacts.util.SmsCodeUtils;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.login.SocialLoginButton;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.gms.auth.api.C11682a;
import com.google.android.gms.auth.api.credentials.C11696b;
import com.google.android.gms.auth.api.credentials.C11697c;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.C12051b;
import com.google.android.gms.internal.auth_api.C13133b;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.hbb20.CountryCodePicker;
import com.sinch.verification.core.auth.AppKeyAuthorizationMethod;
import com.sinch.verification.core.config.general.SinchGlobalConfig;
import com.sinch.verification.core.initiation.response.InitiationListener;
import com.sinch.verification.core.internal.Verification;
import com.sinch.verification.core.verification.VerificationEvent;
import com.sinch.verification.core.verification.response.VerificationListener;
import com.sinch.verification.flashcall.FlashCallVerificationMethod;
import com.sinch.verification.flashcall.config.FlashCallVerificationConfig;
import com.sinch.verification.flashcall.initialization.FlashCallInitializationResponseData;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity.class */
public class PhoneLoginActivity extends BaseFullScreenActivity implements View.OnFocusChangeListener, View.OnKeyListener, SmsReceivedServiceV1.RegistrationCodeListener, SinchCodeUtils.SinchCodeEvents, SmsCodeUtils.SmsCodeEvents, InitiationListener<FlashCallInitializationResponseData>, VerificationListener {

    /* renamed from: B */
    private CountDownTimer f24515B;

    /* renamed from: C */
    private CountDownTimer f24516C;

    /* renamed from: F */
    private RelativeLayout f24519F;

    /* renamed from: G */
    private GlideUtils.GifPlayer f24520G;

    /* renamed from: J */
    private RelativeLayout f24523J;

    /* renamed from: K */
    private TextView f24524K;

    /* renamed from: L */
    private ProgressBar f24525L;

    /* renamed from: M */
    private CheckBox f24526M;

    /* renamed from: O */
    private Phone f24528O;

    /* renamed from: P */
    private boolean f24529P;

    /* renamed from: Q */
    private boolean f24530Q;

    /* renamed from: R */
    private boolean f24531R;

    /* renamed from: b */
    private RelativeLayout f24534b;

    /* renamed from: c */
    private EditText f24535c;

    /* renamed from: d */
    private ImageView f24536d;

    /* renamed from: e */
    private TextView f24537e;

    /* renamed from: f */
    private TextView f24538f;

    /* renamed from: g */
    private TextView f24539g;

    /* renamed from: h */
    private CountryCodePicker f24540h;

    /* renamed from: j */
    private TextWatcher f24541j;

    /* renamed from: l */
    private RelativeLayout f24543l;

    /* renamed from: m */
    private EditText f24544m;

    /* renamed from: n */
    private EditText f24545n;

    /* renamed from: o */
    private EditText f24546o;

    /* renamed from: p */
    private EditText f24547p;

    /* renamed from: q */
    private EditText f24548q;

    /* renamed from: r */
    private EditText f24549r;

    /* renamed from: s */
    private EditText f24550s;

    /* renamed from: t */
    private TextView f24551t;

    /* renamed from: u */
    private TextView f24552u;

    /* renamed from: v */
    private TextView f24553v;

    /* renamed from: w */
    private String f24554w;

    /* renamed from: x */
    private String f24555x;

    /* renamed from: y */
    private String f24556y;

    /* renamed from: z */
    private String f24557z;

    /* renamed from: a */
    private final Intent f24533a = new Intent();

    /* renamed from: k */
    private int f24542k = 0;

    /* renamed from: A */
    private int f24514A = 0;

    /* renamed from: D */
    private final int f24517D = 2;

    /* renamed from: E */
    private int f24518E = 0;

    /* renamed from: H */
    private boolean f24521H = false;

    /* renamed from: I */
    private Date f24522I = null;

    /* renamed from: N */
    private boolean f24527N = true;

    /* renamed from: S */
    private TextWatcher f24532S = new TextWatcher() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.14
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (charSequence.length() == 0) {
                PhoneLoginActivity.this.f24544m.setText("");
                PhoneLoginActivity.this.f24545n.setText("");
                PhoneLoginActivity.this.f24546o.setText("");
                PhoneLoginActivity.this.f24547p.setText("");
                PhoneLoginActivity.this.f24548q.setText("");
                PhoneLoginActivity.this.f24549r.setText("");
                PhoneLoginActivity.this.f24544m.requestFocus();
                ViewUtils.m27325a(PhoneLoginActivity.this.f24544m, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
                ViewUtils.m27325a(PhoneLoginActivity.this.f24545n, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
            } else if (charSequence.length() == 1) {
                EditText editText = PhoneLoginActivity.this.f24544m;
                StringBuilder sb = new StringBuilder();
                sb.append(charSequence.charAt(0));
                editText.setText(sb.toString());
                PhoneLoginActivity.this.f24545n.setText("");
                PhoneLoginActivity.this.f24546o.setText("");
                PhoneLoginActivity.this.f24547p.setText("");
                PhoneLoginActivity.this.f24548q.setText("");
                PhoneLoginActivity.this.f24549r.setText("");
                ViewUtils.m27325a(PhoneLoginActivity.this.f24546o, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                ViewUtils.m27325a(PhoneLoginActivity.this.f24547p, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                ViewUtils.m27325a(PhoneLoginActivity.this.f24548q, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                ViewUtils.m27325a(PhoneLoginActivity.this.f24549r, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                PhoneLoginActivity.this.f24553v.setVisibility(8);
                if (i3 >= i2) {
                    ViewUtils.m27325a(PhoneLoginActivity.this.f24544m, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                    ViewUtils.m27325a(PhoneLoginActivity.this.f24545n, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
                    return;
                }
                ViewUtils.m27325a(PhoneLoginActivity.this.f24545n, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
                ViewUtils.m27325a(PhoneLoginActivity.this.f24546o, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
            } else if (charSequence.length() == 2) {
                EditText editText2 = PhoneLoginActivity.this.f24545n;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(charSequence.charAt(1));
                editText2.setText(sb2.toString());
                PhoneLoginActivity.this.f24546o.setText("");
                PhoneLoginActivity.this.f24547p.setText("");
                PhoneLoginActivity.this.f24548q.setText("");
                PhoneLoginActivity.this.f24549r.setText("");
                if (i3 >= i2) {
                    ViewUtils.m27325a(PhoneLoginActivity.this.f24546o, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
                    ViewUtils.m27325a(PhoneLoginActivity.this.f24545n, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                    return;
                }
                ViewUtils.m27325a(PhoneLoginActivity.this.f24547p, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                ViewUtils.m27325a(PhoneLoginActivity.this.f24546o, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
            } else if (charSequence.length() == 3) {
                EditText editText3 = PhoneLoginActivity.this.f24546o;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(charSequence.charAt(2));
                editText3.setText(sb3.toString());
                PhoneLoginActivity.this.f24547p.setText("");
                PhoneLoginActivity.this.f24548q.setText("");
                PhoneLoginActivity.this.f24549r.setText("");
                if (i3 >= i2) {
                    ViewUtils.m27325a(PhoneLoginActivity.this.f24547p, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
                    ViewUtils.m27325a(PhoneLoginActivity.this.f24546o, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                    return;
                }
                ViewUtils.m27325a(PhoneLoginActivity.this.f24548q, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                ViewUtils.m27325a(PhoneLoginActivity.this.f24547p, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
            } else if (charSequence.length() == 4) {
                EditText editText4 = PhoneLoginActivity.this.f24547p;
                StringBuilder sb4 = new StringBuilder();
                sb4.append(charSequence.charAt(3));
                editText4.setText(sb4.toString());
                PhoneLoginActivity.this.f24548q.setText("");
                PhoneLoginActivity.this.f24549r.setText("");
                if (i3 >= i2) {
                    ViewUtils.m27325a(PhoneLoginActivity.this.f24548q, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
                    ViewUtils.m27325a(PhoneLoginActivity.this.f24547p, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                    return;
                }
                ViewUtils.m27325a(PhoneLoginActivity.this.f24549r, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                ViewUtils.m27325a(PhoneLoginActivity.this.f24548q, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
            } else if (charSequence.length() == 5) {
                EditText editText5 = PhoneLoginActivity.this.f24548q;
                StringBuilder sb5 = new StringBuilder();
                sb5.append(charSequence.charAt(4));
                editText5.setText(sb5.toString());
                PhoneLoginActivity.this.f24549r.setText("");
                if (i3 < i2) {
                    ViewUtils.m27325a(PhoneLoginActivity.this.f24549r, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
                    return;
                }
                ViewUtils.m27325a(PhoneLoginActivity.this.f24549r, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
                ViewUtils.m27325a(PhoneLoginActivity.this.f24548q, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
            } else if (charSequence.length() != 6) {
            } else {
                EditText editText6 = PhoneLoginActivity.this.f24549r;
                StringBuilder sb6 = new StringBuilder();
                sb6.append(charSequence.charAt(5));
                editText6.setText(sb6.toString());
                ViewUtils.m27325a(PhoneLoginActivity.this.f24549r, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                ViewUtils.m27325a(PhoneLoginActivity.this.f24544m, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
                Activities.m27653b(PhoneLoginActivity.this.f24549r);
                if (Prefs.f26544gC.get().booleanValue()) {
                    return;
                }
                PhoneLoginActivity.m29383w(PhoneLoginActivity.this);
            }
        }
    };

    /* renamed from: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity$27 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27.class */
    public class RunnableC712727 implements Runnable {

        /* renamed from: a */
        final /* synthetic */ Runnable f24590a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity$27$1 */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27$1.class */
        public class C71281 implements DialogPopup.IDialogOnClickListener {
            C71281() {
                RunnableC712727.this = r4;
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                PermissionManager.get();
                if (PermissionManager.m28253a("android.permission.READ_CALL_LOG")) {
                    PermissionManager.get();
                    if (PermissionManager.m28253a("android.permission.READ_PHONE_STATE")) {
                        RunnableC712727.this.f24590a.run();
                        return;
                    }
                }
                PermissionManager.get().m28254a(PhoneLoginActivity.this, RunnableC712727.this.f24590a, new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.27.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.27.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                PhoneLoginActivity.this.m29430a(ErrorType.FLASH_CALL_NO_PERMISSIONS);
                            }
                        });
                    }
                }, PermissionManager.PermissionGroup.CALL_LOG, PermissionManager.PermissionGroup.PHONE);
            }
        }

        RunnableC712727(Runnable runnable) {
            PhoneLoginActivity.this = r4;
            this.f24590a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            PopupManager.get().m28209a(PhoneLoginActivity.this, new DialogSimpleMessage(StringUtils.SPACE, Activities.getString(2131887561), Activities.getString(2131886231), Activities.getString(2131886738), new C71281(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.27.2
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.27.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PhoneLoginActivity.this.m29430a(ErrorType.FLASH_CALL_NO_PERMISSIONS);
                        }
                    });
                }
            }));
        }
    }

    /* renamed from: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity$31 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$31.class */
    public static /* synthetic */ class C713731 {

        /* renamed from: a */
        static final /* synthetic */ int[] f24601a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[ErrorType.values().length];
            f24601a = iArr;
            try {
                iArr[ErrorType.SMS_SENT_FAIL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f24601a[ErrorType.SMS_SERVER_CODE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f24601a[ErrorType.FLASH_CALL_NO_PERMISSIONS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f24601a[ErrorType.FLASH_CALL_INIT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f24601a[ErrorType.FLASH_CALL_SERVER_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f24601a[ErrorType.FLASH_CALL_VERIFICATION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$ErrorType.class */
    public enum ErrorType {
        FLASH_CALL_INIT,
        FLASH_CALL_VERIFICATION,
        FLASH_CALL_SERVER_CODE,
        FLASH_CALL_NO_PERMISSIONS,
        SMS_SERVER_CODE,
        SMS_SENT_FAIL
    }

    /* renamed from: E */
    static /* synthetic */ int m29440E(PhoneLoginActivity phoneLoginActivity) {
        int i = phoneLoginActivity.f24518E;
        phoneLoginActivity.f24518E = i + 1;
        return i;
    }

    /* renamed from: L */
    static /* synthetic */ void m29433L(PhoneLoginActivity phoneLoginActivity) {
        AnalyticsManager.get().mo28441b(Constants.FLASH_SCREEN);
        phoneLoginActivity.f24529P = false;
        phoneLoginActivity.f24534b.setVisibility(8);
        phoneLoginActivity.f24543l.setVisibility(8);
        phoneLoginActivity.f24523J.setVisibility(8);
        phoneLoginActivity.f24519F.setVisibility(0);
        ((TextView) phoneLoginActivity.findViewById(2131363507)).setText(phoneLoginActivity.getEnteredPhone().m26101a());
        ImageView imageView = (ImageView) phoneLoginActivity.findViewById(2131362837);
        if (!phoneLoginActivity.isDestroyed()) {
            phoneLoginActivity.f24520G = new GlideUtils.GifPlayer(phoneLoginActivity, imageView, 2131230901, -1, true);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m29431a(View view) {
        this.f24533a.putExtra("EXTRA_NETWORK_TYPE", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.VK.getNumRep());
        setResult(-1, this.f24533a);
        finish();
    }

    /* renamed from: a */
    public void m29430a(ErrorType errorType) {
        switch (C713731.f24601a[errorType.ordinal()]) {
            case 1:
            case 2:
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "ViewSMSUnsuccessPopup");
                FeedbackManager.get().m28664b(Activities.getString(2131887559), (Integer) 17);
                m29408c(false);
                return;
            case 3:
                FeedbackManager.get().m28664b(Activities.getString(2131887560), (Integer) 17);
                if (!this.f24530Q) {
                    finish();
                    return;
                }
                ViewUtils.m27294c(this.f24538f, 2131232047, ThemeUtils.getColor(2131099914));
                this.f24538f.setVisibility(0);
                this.f24538f.setEnabled(true);
                this.f24538f.setClickable(true);
                this.f24539g.setVisibility(8);
                this.f24531R = true;
                Prefs.f26603hI.set(Boolean.valueOf(this.f24531R));
                m29413b(true);
                return;
            case 4:
            case 5:
            case 6:
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "ViewSinchUnsuccessPopup");
                FeedbackManager.get().m28664b(Activities.getString(2131887559), (Integer) 17);
                if (!this.f24530Q) {
                    finish();
                    return;
                }
                ViewUtils.m27294c(this.f24538f, 2131232047, ThemeUtils.getColor(2131099914));
                this.f24538f.setVisibility(0);
                this.f24538f.setEnabled(true);
                this.f24538f.setClickable(true);
                this.f24539g.setVisibility(8);
                this.f24531R = true;
                Prefs.f26603hI.set(Boolean.valueOf(this.f24531R));
                m29413b(true);
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public void m29423a(SocialLoginButton socialLoginButton, SocialLoginButton socialLoginButton2, SocialLoginButton socialLoginButton3, final String str) {
        socialLoginButton.setText(Activities.getString(2131887119));
        socialLoginButton3.setText(Activities.getString(2131887121));
        if (LocaleUtils.isRussianUser()) {
            socialLoginButton2.setVisibility(0);
            socialLoginButton2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin._$$Lambda$PhoneLoginActivity$_bK_LlSDLPugmwxUTMVmCNkrZ9s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PhoneLoginActivity.this.m29431a(view);
                }
            });
            socialLoginButton2.setEnabled(true);
        }
        socialLoginButton.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin._$$Lambda$PhoneLoginActivity$9_aHM7xeBytkzMxtou_4t0exCPc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneLoginActivity.this.m29414b(str, view);
            }
        });
        socialLoginButton.setEnabled(true);
        socialLoginButton3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin._$$Lambda$PhoneLoginActivity$QzEBOPozGblD4g1Jv0SQPzpUFiE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneLoginActivity.this.m29421a(str, view);
            }
        });
        socialLoginButton3.setEnabled(true);
    }

    /* renamed from: a */
    public /* synthetic */ void m29421a(String str, View view) {
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Clicked login button: Google", str);
        this.f24533a.putExtra("EXTRA_NETWORK_TYPE", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.USER_GOOGLE.getNumRep());
        setResult(-1, this.f24533a);
        finish();
    }

    /* renamed from: a */
    public void m29420a(boolean z) {
        if (z) {
            this.f24535c.removeTextChangedListener(this.f24541j);
        }
        this.f24535c.setText(this.f24554w);
        EditText editText = this.f24535c;
        editText.setSelection(editText.getText().length());
        this.f24535c.requestFocus();
        Activities.m27669a(this.f24535c, 200);
        if (z) {
            this.f24535c.addTextChangedListener(this.f24541j);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m29418b(PhoneLoginActivity phoneLoginActivity, String str) {
        DialogVerifyNumberBeforeFlash dialogVerifyNumberBeforeFlash = new DialogVerifyNumberBeforeFlash(str, new DialogVerifyNumberBeforeFlash.IUserConfirmNumberBeforeFlash() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.9
            @Override // com.callapp.contacts.popup.contact.DialogVerifyNumberBeforeFlash.IUserConfirmNumberBeforeFlash
            /* renamed from: a */
            public final void mo27948a() {
                PhoneLoginActivity.m29397i(PhoneLoginActivity.this);
            }
        });
        dialogVerifyNumberBeforeFlash.setCancelable(false);
        PopupManager.get().m28209a(phoneLoginActivity, dialogVerifyNumberBeforeFlash);
    }

    /* renamed from: b */
    private void m29416b(Phone phone) {
        String m26101a = phone.m26101a();
        this.f24535c.setText(m26101a);
        this.f24535c.setSelection(m26101a.length());
        this.f24538f.setClickable(true);
        this.f24538f.setEnabled(true);
        this.f24536d.setVisibility(0);
        this.f24537e.setVisibility(0);
    }

    /* renamed from: b */
    private void m29415b(String str) {
        this.f24529P = false;
        this.f24534b.setVisibility(8);
        this.f24543l.setVisibility(8);
        this.f24519F.setVisibility(8);
        this.f24523J.setVisibility(0);
        this.f24526M.setVisibility(8);
        this.f24525L.setVisibility(0);
        this.f24524K.setText(str);
    }

    /* renamed from: b */
    public /* synthetic */ void m29414b(String str, View view) {
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Clicked login button: Facebook", str);
        this.f24533a.putExtra("EXTRA_NETWORK_TYPE", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.FACEBOOK.getNumRep());
        setResult(-1, this.f24533a);
        finish();
    }

    /* renamed from: b */
    public void m29413b(boolean z) {
        this.f24529P = false;
        CountDownTimer countDownTimer = this.f24515B;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.f24516C;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
        boolean z2 = !com.callapp.framework.util.StringUtils.m26057a(this.f24535c.getText(), this.f24554w);
        this.f24537e.setVisibility(z2 ? 0 : 8);
        this.f24536d.setVisibility(z2 ? 0 : 8);
        if (!this.f24530Q || this.f24531R) {
            this.f24539g.setVisibility(8);
            this.f24538f.setVisibility(0);
            this.f24538f.setClickable(z2);
            this.f24538f.setEnabled(z2);
            ViewUtils.m27294c(this.f24538f, 2131232047, z2 ? ThemeUtils.getColor(2131099914) : ThemeUtils.getColor(2131099890));
        } else {
            this.f24539g.setVisibility(0);
            this.f24538f.setVisibility(8);
            this.f24539g.setClickable(z2);
            this.f24539g.setEnabled(z2);
            ViewUtils.m27294c(this.f24539g, 2131232047, z2 ? ThemeUtils.getColor(2131099914) : ThemeUtils.getColor(2131099890));
        }
        this.f24535c.requestFocus();
        Activities.m27669a(this.f24535c, 200);
        this.f24543l.setVisibility(8);
        this.f24519F.setVisibility(8);
        this.f24523J.setVisibility(8);
        this.f24534b.setVisibility(0);
        if (z) {
            m29404e();
        }
    }

    /* renamed from: c */
    public void m29412c() {
        if (getEnteredPhone().isValidForSearch()) {
            m29404e();
        } else {
            m29407d();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r1v37, types: [com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity$21] */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r20v5 */
    /* JADX WARN: Type inference failed for: r4v0, types: [long] */
    /* JADX WARN: Type inference failed for: r4v2, types: [long] */
    /* renamed from: c */
    public void m29408c(boolean z) {
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "ViewEnterSMSCodeScreen");
        boolean z2 = true;
        this.f24529P = true;
        this.f24534b.setVisibility(8);
        this.f24519F.setVisibility(8);
        this.f24523J.setVisibility(8);
        this.f24543l.setVisibility(0);
        this.f24553v.setVisibility(8);
        this.f24550s.setText("");
        ViewUtils.m27325a(this.f24544m, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(this.f24545n, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(this.f24546o, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(this.f24547p, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(this.f24548q, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(this.f24549r, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        CountDownTimer countDownTimer = this.f24515B;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.f24516C;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
        this.f24526M.setChecked(false);
        Phone enteredPhone = getEnteredPhone();
        if (z && !SmsUtils.m27395a(this, enteredPhone, this.f24555x)) {
            m29430a(ErrorType.SMS_SENT_FAIL);
        }
        TextView textView = (TextView) findViewById(2131363506);
        textView.setText(enteredPhone.m26101a());
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "ClickEditPhoneNumber");
                PhoneLoginActivity.this.f24550s.setText("");
                PhoneLoginActivity.this.m29413b(false);
            }
        });
        this.f24544m.requestFocus();
        ViewUtils.m27325a(this.f24544m, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
        String m28703a = CallAppRemoteConfigManager.get().m28703a("sinchBlockedCountries");
        if (com.callapp.framework.util.StringUtils.m26045b((CharSequence) m28703a)) {
            String str = "+" + enteredPhone.getCountryCode();
            String[] split = m28703a.split(",");
            if (split != null) {
                for (String str2 : split) {
                    if (com.callapp.framework.util.StringUtils.m26042b(str2, str)) {
                        break;
                    }
                }
            }
        }
        z2 = false;
        if (!z2 && !this.f24530Q) {
            setCallMeTimer((z ? CallAppRemoteConfigManager.get().m28699b("timerCallMe") : false) == true ? 1L : 0L);
        }
        ?? r20 = 0;
        if (z) {
            r20 = CallAppRemoteConfigManager.get().m28699b("timerSendSms");
        }
        this.f24551t.setVisibility(0);
        final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("mm:ss");
        this.f24551t.setText(HtmlUtils.m27537b(Activities.getString(2131887577) + StringUtils.SPACE + Activities.getString(2131887016) + StringUtils.SPACE + simpleDateFormat.format(new Date((long) r20))));
        m29405d(false);
        final boolean z3 = z2;
        this.f24551t.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PhoneLoginActivity.this.f24518E < 2) {
                    AnalyticsManager.get().m28450a(Constants.REGISTRATION, "ClickResendSMS");
                    PhoneLoginActivity.this.m29405d(false);
                    PhoneLoginActivity.m29440E(PhoneLoginActivity.this);
                    PhoneLoginActivity.this.m29404e();
                    Activities.m27653b(PhoneLoginActivity.this.f24551t);
                } else {
                    PhoneLoginActivity.this.finish();
                }
                if (z3) {
                    CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.20.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RelativeLayout relativeLayout = (RelativeLayout) PhoneLoginActivity.this.findViewById(2131363920);
                            SocialLoginButton socialLoginButton = (SocialLoginButton) PhoneLoginActivity.this.findViewById(2131362778);
                            SocialLoginButton socialLoginButton2 = (SocialLoginButton) PhoneLoginActivity.this.findViewById(2131362909);
                            PhoneLoginActivity.this.m29423a(socialLoginButton, (SocialLoginButton) PhoneLoginActivity.this.findViewById(2131364543), socialLoginButton2, "EnterSMSCode");
                            relativeLayout.setVisibility(0);
                        }
                    }, 20000L);
                }
            }
        });
        CountDownTimer countDownTimer3 = this.f24515B;
        if (countDownTimer3 != null) {
            countDownTimer3.cancel();
        }
        this.f24515B = new CountDownTimer(r20, 1000L) { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.21
            @Override // android.os.CountDownTimer
            public void onFinish() {
                PhoneLoginActivity.this.m29405d(true);
                PhoneLoginActivity.this.f24551t.setText(HtmlUtils.m27537b(Activities.getString(2131887577)));
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                PhoneLoginActivity.this.m29405d(false);
                TextView textView2 = PhoneLoginActivity.this.f24551t;
                textView2.setText(HtmlUtils.m27537b(Activities.getString(2131887577) + StringUtils.SPACE + Activities.getString(2131887016) + StringUtils.SPACE + simpleDateFormat.format(new Date(j))));
            }
        }.start();
    }

    /* renamed from: d */
    private void m29407d() {
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "ViewInvalidNumberPopup");
        DialogVerifyNumber dialogVerifyNumber = new DialogVerifyNumber(Activities.getString(2131887396), null, Activities.getString(2131888244), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.8
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "ClickInvalidNumberPopup");
                PhoneLoginActivity.this.m29420a(false);
            }
        });
        dialogVerifyNumber.setCancelable(false);
        PopupManager.get().m28209a(this, dialogVerifyNumber);
    }

    /* renamed from: d */
    public void m29405d(boolean z) {
        this.f24551t.setTextColor(ThemeUtils.getColor(z ? 2131099916 : 2131099917));
        this.f24551t.setClickable(z);
        this.f24551t.setEnabled(z);
    }

    /* renamed from: e */
    public void m29404e() {
        SmsReceivedServiceV1.m27780a(this);
        PermissionManager.get();
        if (PermissionManager.m28253a("android.permission.SEND_SMS")) {
            m29415b(Activities.getString(2131887115));
            new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.10
                @Override // java.lang.Runnable
                public void run() {
                    SmsCodeUtils.m27400a(PhoneLoginActivity.this.getEnteredPhone(), PhoneLoginActivity.this);
                }
            }, 1000L);
            return;
        }
        this.f24538f.setBackgroundColor(ThemeUtils.getColor(2131099914));
        this.f24538f.setClickable(true);
        this.f24538f.setEnabled(true);
        int i = this.f24542k + 1;
        this.f24542k = i;
        if (i <= 2) {
            PermissionManager.get().m28254a(this, new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.11
                @Override // java.lang.Runnable
                public void run() {
                    PhoneLoginActivity.this.f24538f.performClick();
                }
            }, new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.12
                @Override // java.lang.Runnable
                public void run() {
                    if (PhoneLoginActivity.this.f24542k >= 2) {
                        PhoneLoginActivity.this.f24542k = 0;
                        if (PhoneLoginActivity.this.f24530Q) {
                            PhoneLoginActivity.this.finish();
                        } else {
                            PhoneLoginActivity.this.m29401f();
                        }
                    }
                }
            }, PermissionManager.PermissionGroup.SMS);
            return;
        }
        this.f24542k = 0;
        if (this.f24530Q) {
            finish();
        } else {
            m29401f();
        }
    }

    /* renamed from: e */
    public void m29402e(boolean z) {
        this.f24552u.setTextColor(ThemeUtils.getColor(z ? 2131099916 : 2131099917));
        this.f24552u.setClickable(z);
        this.f24552u.setEnabled(z);
    }

    /* renamed from: f */
    public void m29401f() {
        this.f24538f.setVisibility(8);
        this.f24538f.setEnabled(false);
        this.f24539g.setVisibility(0);
        this.f24539g.setText(Activities.getString(2131888123));
        this.f24539g.setEnabled(true);
    }

    public Phone getEnteredPhone() {
        Phone m28239a = PhoneManager.get().m28239a(this.f24535c.getText().toString());
        if (com.callapp.framework.util.StringUtils.m26057a(Integer.valueOf(m28239a.getCountryCode()), "54") && m28239a.getLineType() != PhoneNumberUtil.EnumC16104d.MOBILE) {
            String m26095b = m28239a.m26095b();
            String str = m26095b;
            if (com.callapp.framework.util.StringUtils.m26030e(m26095b, "0")) {
                str = com.callapp.framework.util.StringUtils.m26054a(m26095b, 1, m26095b.length());
            }
            Phone m28239a2 = PhoneManager.get().m28239a("+549".concat(String.valueOf(str)));
            if (m28239a2.getLineType() == PhoneNumberUtil.EnumC16104d.MOBILE) {
                return m28239a2;
            }
        }
        return m28239a;
    }

    /* renamed from: i */
    static /* synthetic */ void m29397i(PhoneLoginActivity phoneLoginActivity) {
        Activities.m27653b(phoneLoginActivity.f24535c);
        ViewUtils.m27294c(phoneLoginActivity.f24539g, 2131232047, ThemeUtils.getColor(2131099890));
        phoneLoginActivity.f24539g.setClickable(false);
        phoneLoginActivity.f24539g.setEnabled(false);
        Phone enteredPhone = phoneLoginActivity.getEnteredPhone();
        if (enteredPhone.isValidForSearch()) {
            phoneLoginActivity.m29422a(enteredPhone);
        } else {
            phoneLoginActivity.m29407d();
        }
    }

    /* JADX WARN: Type inference failed for: r1v16, types: [com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity$23] */
    private void setCallMeTimer(long j) {
        this.f24552u.setVisibility(0);
        final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("mm:ss");
        TextView textView = this.f24552u;
        textView.setText(HtmlUtils.m27537b(Activities.getString(2131886390) + StringUtils.SPACE + Activities.getString(2131887016) + StringUtils.SPACE + simpleDateFormat.format(new Date(j))));
        m29402e(false);
        this.f24552u.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.22
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "ClickSinchCallMe");
                PhoneLoginActivity.this.m29402e(false);
                PhoneLoginActivity.this.m29422a(PhoneLoginActivity.this.getEnteredPhone());
            }
        });
        CountDownTimer countDownTimer = this.f24516C;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f24516C = new CountDownTimer(j, 1000L) { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.23
            @Override // android.os.CountDownTimer
            public void onFinish() {
                PhoneLoginActivity.this.m29402e(true);
                PhoneLoginActivity.this.f24552u.setText(HtmlUtils.m27537b(Activities.getString(2131886390)));
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
                PhoneLoginActivity.this.m29402e(false);
                TextView textView2 = PhoneLoginActivity.this.f24552u;
                textView2.setText(HtmlUtils.m27537b(Activities.getString(2131886390) + StringUtils.SPACE + Activities.getString(2131887016) + StringUtils.SPACE + simpleDateFormat.format(new Date(j2))));
            }
        }.start();
    }

    private void setFocus(EditText editText) {
        if (editText == null) {
            return;
        }
        editText.setFocusable(true);
        editText.setFocusableInTouchMode(true);
        editText.requestFocus();
    }

    /* renamed from: w */
    static /* synthetic */ void m29383w(PhoneLoginActivity phoneLoginActivity) {
        ViewUtils.m27325a(phoneLoginActivity.f24544m, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(phoneLoginActivity.f24545n, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(phoneLoginActivity.f24546o, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(phoneLoginActivity.f24547p, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(phoneLoginActivity.f24548q, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(phoneLoginActivity.f24549r, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        String trim = (phoneLoginActivity.f24544m.getText().toString() + phoneLoginActivity.f24545n.getText().toString() + phoneLoginActivity.f24546o.getText().toString() + phoneLoginActivity.f24547p.getText().toString() + phoneLoginActivity.f24548q.getText().toString() + phoneLoginActivity.f24549r.getText().toString()).trim();
        phoneLoginActivity.f24556y = trim;
        if (com.callapp.framework.util.StringUtils.m26045b((CharSequence) trim) && com.callapp.framework.util.StringUtils.m26045b((CharSequence) phoneLoginActivity.f24555x) && phoneLoginActivity.f24556y.equals(phoneLoginActivity.f24555x) && com.callapp.framework.util.StringUtils.m26045b((CharSequence) phoneLoginActivity.f24557z)) {
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Entered correct SMS code");
            phoneLoginActivity.m29415b(Activities.getString(2131886139));
            phoneLoginActivity.f24525L.setVisibility(8);
            phoneLoginActivity.f24526M.setVisibility(0);
            phoneLoginActivity.f24526M.post(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.16
                @Override // java.lang.Runnable
                public void run() {
                    PhoneLoginActivity.this.f24526M.setChecked(true);
                }
            });
            new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.17
                @Override // java.lang.Runnable
                public void run() {
                    Intent intent = new Intent();
                    intent.putExtra("RESULT_USER_PHONE_NUMBER", PhoneLoginActivity.this.getEnteredPhone().m26101a());
                    intent.putExtra("RESULT_USER_CALLAPP_TOKEN", PhoneLoginActivity.this.f24557z);
                    intent.putExtra("RESULT_USER_CALLAPP_TOKEN_TYPE", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP.name());
                    PhoneLoginActivity.this.setResult(-1, intent);
                    PhoneLoginActivity.this.finish();
                }
            }, 1000L);
            return;
        }
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.m28449a(Constants.REGISTRATION, "Entered wrong SMS code", "codeCounter " + phoneLoginActivity.f24514A);
        int i = phoneLoginActivity.f24514A + 1;
        phoneLoginActivity.f24514A = i;
        if (i > 2) {
            phoneLoginActivity.f24514A = 0;
            phoneLoginActivity.m29413b(false);
        }
        phoneLoginActivity.f24550s.setText("");
        phoneLoginActivity.f24553v.setVisibility(0);
        ViewUtils.m27325a(phoneLoginActivity.f24544m, 2131232036, ThemeUtils.getColor(2131099675), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(phoneLoginActivity.f24545n, 2131232036, ThemeUtils.getColor(2131099675), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(phoneLoginActivity.f24546o, 2131232036, ThemeUtils.getColor(2131099675), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(phoneLoginActivity.f24547p, 2131232036, ThemeUtils.getColor(2131099675), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(phoneLoginActivity.f24548q, 2131232036, ThemeUtils.getColor(2131099675), (int) Activities.m27699a(1.0f));
        ViewUtils.m27325a(phoneLoginActivity.f24549r, 2131232036, ThemeUtils.getColor(2131099675), (int) Activities.m27699a(1.0f));
    }

    @Override // com.callapp.contacts.util.SmsCodeUtils.SmsCodeEvents
    /* renamed from: a */
    public final void mo27398a() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.19
            @Override // java.lang.Runnable
            public void run() {
                PhoneLoginActivity.this.m29430a(ErrorType.SMS_SERVER_CODE);
            }
        });
    }

    /* renamed from: a */
    public final void m29422a(final Phone phone) {
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Sinch performing verification");
        this.f24521H = true;
        final String m28703a = CallAppRemoteConfigManager.get().m28703a("sinchAppKey");
        Runnable runnable = new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.26
            @Override // java.lang.Runnable
            public void run() {
                if (!com.callapp.framework.util.StringUtils.m26045b((CharSequence) m28703a)) {
                    PhoneLoginActivity.this.mo27401b();
                    return;
                }
                PhoneLoginActivity.m29433L(PhoneLoginActivity.this);
                SinchCodeUtils.m27403a(phone, PhoneLoginActivity.this);
            }
        };
        PermissionManager.get();
        if (PermissionManager.m28253a("android.permission.READ_CALL_LOG")) {
            PermissionManager.get();
            if (PermissionManager.m28253a("android.permission.READ_PHONE_STATE")) {
                runnable.run();
                return;
            }
        }
        PermissionManager.get().m28254a(this, runnable, new RunnableC712727(runnable), PermissionManager.PermissionGroup.CALL_LOG, PermissionManager.PermissionGroup.PHONE);
    }

    @Override // com.callapp.contacts.util.SinchCodeUtils.SinchCodeEvents
    /* renamed from: a */
    public final void mo27402a(final Phone phone, final String str) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.24
            @Override // java.lang.Runnable
            public void run() {
                PhoneLoginActivity.this.f24522I = new Date();
                final Verification build = FlashCallVerificationMethod.Builder.getInstance().config(FlashCallVerificationConfig.Builder.getInstance().globalConfig(SinchGlobalConfig.Builder.getInstance().applicationContext(CallAppApplication.get()).authorizationMethod(new AppKeyAuthorizationMethod(CallAppRemoteConfigManager.get().m28703a("sinchAppKey"))).build()).number(phone.m26101a()).custom(str).build()).initializationListener(PhoneLoginActivity.this).verificationListener(PhoneLoginActivity.this).build();
                build.initiate();
                new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.24.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (PhoneLoginActivity.this.f24521H) {
                            Verification verification = build;
                            if (verification != null) {
                                verification.stop();
                            }
                            PhoneLoginActivity.this.f24521H = false;
                            if (PhoneLoginActivity.this.f24520G != null) {
                                PhoneLoginActivity.this.f24520G.m27031b();
                            }
                            PhoneLoginActivity.this.m29430a(ErrorType.FLASH_CALL_VERIFICATION);
                        }
                    }
                }, 50000L);
            }
        });
    }

    @Override // com.callapp.contacts.service.jobs.SmsReceivedServiceV1.RegistrationCodeListener
    /* renamed from: a */
    public final void mo27777a(final String str) {
        if (com.callapp.framework.util.StringUtils.m26028f(str) != 6) {
            return;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.15
            @Override // java.lang.Runnable
            public void run() {
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "onReceiveCode success");
                PhoneLoginActivity.this.f24556y = str;
                String valueOf = String.valueOf(PhoneLoginActivity.this.f24556y.charAt(0));
                String valueOf2 = String.valueOf(PhoneLoginActivity.this.f24556y.charAt(1));
                String valueOf3 = String.valueOf(PhoneLoginActivity.this.f24556y.charAt(2));
                String valueOf4 = String.valueOf(PhoneLoginActivity.this.f24556y.charAt(3));
                String valueOf5 = String.valueOf(PhoneLoginActivity.this.f24556y.charAt(4));
                String valueOf6 = String.valueOf(PhoneLoginActivity.this.f24556y.charAt(5));
                PhoneLoginActivity.this.f24544m.setText(valueOf);
                PhoneLoginActivity.this.f24545n.setText(valueOf2);
                PhoneLoginActivity.this.f24546o.setText(valueOf3);
                PhoneLoginActivity.this.f24547p.setText(valueOf4);
                PhoneLoginActivity.this.f24548q.setText(valueOf5);
                PhoneLoginActivity.this.f24549r.setText(valueOf6);
                EditText editText = PhoneLoginActivity.this.f24550s;
                editText.setText(valueOf + valueOf2 + valueOf3 + valueOf4 + valueOf5 + valueOf6);
                if (!Prefs.f26544gC.get().booleanValue()) {
                    PhoneLoginActivity.m29383w(PhoneLoginActivity.this);
                }
            }
        });
    }

    @Override // com.callapp.contacts.util.SmsCodeUtils.SmsCodeEvents
    /* renamed from: a */
    public final void mo27397a(String str, String str2) {
        this.f24555x = str;
        this.f24557z = str2;
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.18
            @Override // java.lang.Runnable
            public void run() {
                PhoneLoginActivity.this.f24524K.setText(Activities.getString(2131887114));
                PhoneLoginActivity.this.f24525L.setVisibility(8);
                PhoneLoginActivity.this.f24526M.setVisibility(0);
                PhoneLoginActivity.this.f24526M.post(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.18.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PhoneLoginActivity.this.f24526M.setChecked(true);
                    }
                });
                new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.18.2
                    @Override // java.lang.Runnable
                    public void run() {
                        PhoneLoginActivity.this.m29408c(true);
                    }
                }, 1500L);
            }
        });
    }

    @Override // com.callapp.contacts.util.SinchCodeUtils.SinchCodeEvents
    /* renamed from: b */
    public final void mo27401b() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.25
            @Override // java.lang.Runnable
            public void run() {
                PhoneLoginActivity.this.m29430a(ErrorType.FLASH_CALL_SERVER_CODE);
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558461;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Credential credential;
        super.onActivityResult(i, i2, intent);
        if (i == 7744 && i2 == -1 && (credential = (Credential) intent.getParcelableExtra(Credential.EXTRA_KEY)) != null) {
            String id = credential.getId();
            if (!com.callapp.framework.util.StringUtils.m26045b((CharSequence) id)) {
                return;
            }
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "SetPlayServicesAutoFill ");
            m29416b(PhoneManager.get().m28239a(id));
            m29412c();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (!this.f24521H) {
            if (!this.f24529P) {
                super.onBackPressed();
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Login cancelled using Phone Number");
                return;
            }
            AnalyticsManager.get().m28450a(Constants.REGISTRATION, "ClickBackFromEnterSMSCode");
            this.f24550s.setText("");
            m29413b(false);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f24531R = Prefs.f26603hI.get().booleanValue();
        AnalyticsManager.get().m28439e(Constants.PHONE_LOGIN_ACTIVITY);
        this.f24530Q = com.callapp.framework.util.StringUtils.m26045b((CharSequence) CallAppRemoteConfigManager.get().m28703a("loginCallMeFirst")) && CallAppRemoteConfigManager.get().m28698c("loginCallMeFirst");
        Intent intent = getIntent();
        if (intent != null && intent.getExtras() != null) {
            this.f24527N = intent.getExtras().getBoolean("EXTRA_NEED_TO_SHOW_SOCIAL");
            Phone phone = (Phone) intent.getExtras().get("EXTRA_SUGGESTED_PHONE_NUMBER");
            this.f24528O = phone;
            if (phone != null) {
                AnalyticsManager.get().m28449a(Constants.REGISTRATION, "AddedAutoFillPhoneNumber ", this.f24528O.getRawNumber());
            }
        }
        if (this.f24528O == null && GooglePlayUtils.isGooglePlayServicesAvailable()) {
            HintRequest.C11694a c11694a = new HintRequest.C11694a();
            c11694a.f39011b = true;
            c11694a.f39010a = false;
            CredentialPickerConfig.C11692a c11692a = new CredentialPickerConfig.C11692a();
            c11692a.f38999a = false;
            c11692a.f39000b = false;
            c11692a.f39001c = 3;
            c11694a.f39013d = (CredentialPickerConfig) C12045o.m19162a(c11692a.m19574a());
            if (c11694a.f39012c == null) {
                c11694a.f39012c = new String[0];
            }
            if (!c11694a.f39010a && !c11694a.f39011b && c11694a.f39012c.length == 0) {
                throw new IllegalStateException("At least one authentication method must be specified");
            }
            String str = null;
            HintRequest hintRequest = new HintRequest(c11694a);
            C11696b c11696b = new C11696b((Activity) this, (C11682a.C11683a) C11697c.f39017e);
            Context context = c11696b.f39179a;
            C11682a.C11683a c11683a = (C11682a.C11683a) c11696b.f39180b;
            String str2 = ((C11682a.C11683a) c11696b.f39180b).f38991d;
            C12045o.m19161a(context, "context must not be null");
            C12045o.m19161a(hintRequest, "request must not be null");
            if (c11683a != null) {
                str = c11683a.f38989b;
            }
            String m13613a = TextUtils.isEmpty(str2) ? C13133b.m13613a() : (String) C12045o.m19162a(str2);
            Intent putExtra = new Intent("com.google.android.gms.auth.api.credentials.PICKER").putExtra("claimedCallingPackage", str);
            putExtra.putExtra("logSessionId", m13613a);
            C12051b.m19090a(hintRequest, putExtra, "com.google.android.gms.credentials.HintRequest");
            PendingIntent activity = PendingIntent.getActivity(context, 2000, putExtra, 134217728);
            try {
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "GetPlayServicesAutoFill ");
                startIntentSenderForResult(activity.getIntentSender(), 7744, null, 0, 0, 0);
            } catch (IntentSender.SendIntentException e) {
                CLog.m27609a(PhoneLoginActivity.class, e);
            }
        }
        this.f24535c = (EditText) findViewById(2131362670);
        this.f24536d = (ImageView) findViewById(2131362671);
        TextView textView = (TextView) findViewById(2131362485);
        this.f24537e = textView;
        textView.setText(HtmlUtils.m27537b(Activities.getString(2131886670)));
        this.f24536d.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneLoginActivity.this.m29420a(false);
                AnalyticsManager.get().m28449a(Constants.REGISTRATION, "ClickEditAutoFillPhoneNumberIcon ", (PhoneLoginActivity.this.f24535c == null || PhoneLoginActivity.this.f24535c.getText() == null) ? null : PhoneLoginActivity.this.f24535c.getText().toString());
            }
        });
        this.f24537e.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneLoginActivity.this.m29420a(false);
                AnalyticsManager.get().m28449a(Constants.REGISTRATION, "ClickEditAutoFillPhoneNumberLink ", (PhoneLoginActivity.this.f24535c == null || PhoneLoginActivity.this.f24535c.getText() == null) ? null : PhoneLoginActivity.this.f24535c.getText().toString());
            }
        });
        this.f24540h = (CountryCodePicker) findViewById(2131362307);
        this.f24538f = (TextView) findViewById(2131363227);
        this.f24539g = (TextView) findViewById(2131363226);
        this.f24534b = (RelativeLayout) findViewById(2131363167);
        this.f24538f.setText(Activities.getString(2131888125));
        this.f24539g.setText(Activities.getString(2131888122));
        LinearLayout linearLayout = (LinearLayout) findViewById(2131363921);
        if (this.f24527N) {
            m29423a((SocialLoginButton) findViewById(2131362779), (SocialLoginButton) findViewById(2131364544), (SocialLoginButton) findViewById(2131362910), "PhoneLoginScreen");
            linearLayout.setVisibility(0);
        } else {
            linearLayout.setVisibility(8);
        }
        ViewUtils.m27294c(this.f24538f, 2131232047, ThemeUtils.getColor(2131099890));
        ViewUtils.m27294c(this.f24539g, 2131232047, ThemeUtils.getColor(2131099914));
        this.f24540h.setDefaultCountryUsingNameCode(Phone.getCountryRegionProvider().mo26103a());
        this.f24540h.setCcpDialogShowPhoneCode(true);
        this.f24540h.m7443e();
        CountryCodePicker countryCodePicker = this.f24540h;
        this.f24554w = "+" + countryCodePicker.f57664r.f57707i;
        ((TextView) findViewById(2131362713)).setText(Activities.getString(2131886829));
        ((TextView) findViewById(2131362333)).setText(Activities.getString(2131887563));
        m29420a(false);
        Phone phone2 = this.f24528O;
        if (phone2 != null) {
            m29416b(phone2);
        }
        TextWatcher textWatcher = new TextWatcher() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if ((charSequence.toString().trim().length() - PhoneLoginActivity.this.f24554w.length()) + 1 < 2) {
                    if (!PhoneLoginActivity.this.f24530Q || PhoneLoginActivity.this.f24531R) {
                        ViewUtils.m27294c(PhoneLoginActivity.this.f24538f, 2131232047, ThemeUtils.getColor(2131099890));
                        PhoneLoginActivity.this.f24538f.setClickable(false);
                        PhoneLoginActivity.this.f24538f.setEnabled(false);
                    } else {
                        ViewUtils.m27294c(PhoneLoginActivity.this.f24539g, 2131232047, ThemeUtils.getColor(2131099890));
                        PhoneLoginActivity.this.f24539g.setClickable(false);
                        PhoneLoginActivity.this.f24539g.setEnabled(false);
                    }
                    if (PhoneLoginActivity.this.f24535c.getText().toString().equals("")) {
                        PhoneLoginActivity.this.f24540h.m7453a((String) null);
                    }
                } else if (!PhoneLoginActivity.this.f24530Q || PhoneLoginActivity.this.f24531R) {
                    ViewUtils.m27294c(PhoneLoginActivity.this.f24538f, 2131232047, ThemeUtils.getColor(2131099914));
                    PhoneLoginActivity.this.f24538f.setClickable(true);
                    PhoneLoginActivity.this.f24538f.setEnabled(true);
                } else {
                    ViewUtils.m27294c(PhoneLoginActivity.this.f24539g, 2131232047, ThemeUtils.getColor(2131099914));
                    PhoneLoginActivity.this.f24539g.setClickable(true);
                    PhoneLoginActivity.this.f24539g.setEnabled(true);
                }
                String trim = charSequence.toString().trim();
                String str3 = trim;
                if (com.callapp.framework.util.StringUtils.m26030e(trim, "+")) {
                    str3 = com.callapp.framework.util.StringUtils.m26054a(trim, 1, trim.length());
                }
                if (com.callapp.framework.util.StringUtils.m26030e(str3, "1")) {
                    PhoneLoginActivity.this.f24540h.setDefaultCountryUsingNameCode("US");
                } else if (com.callapp.framework.util.StringUtils.m26030e(str3, "7")) {
                    PhoneLoginActivity.this.f24540h.setDefaultCountryUsingNameCode("RU");
                } else if (com.callapp.framework.util.StringUtils.m26030e(str3, "358")) {
                    PhoneLoginActivity.this.f24540h.setDefaultCountryUsingNameCode("FI");
                } else if (com.callapp.framework.util.StringUtils.m26030e(str3, "44")) {
                    PhoneLoginActivity.this.f24540h.setDefaultCountryUsingNameCode("GB");
                } else {
                    int min = Math.min(4, str3.length());
                    int m7444d = PhoneLoginActivity.this.f24540h.m7444d();
                    for (int i4 = 1; i4 <= min; i4++) {
                        try {
                            PhoneLoginActivity.this.f24540h.setDefaultCountryUsingPhoneCode(Integer.parseInt(com.callapp.framework.util.StringUtils.m26054a(str3, 0, i4)));
                        } catch (Exception e2) {
                        }
                        if (m7444d != PhoneLoginActivity.this.f24540h.m7444d()) {
                            break;
                        }
                    }
                }
                PhoneLoginActivity.this.f24540h.m7443e();
            }
        };
        this.f24541j = textWatcher;
        this.f24535c.addTextChangedListener(textWatcher);
        this.f24540h.setOnCountryChangeListener(new CountryCodePicker.AbstractC16311f() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.4
        });
        this.f24540h.setDialogEventsListener(new CountryCodePicker.AbstractC16308c() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.5
            @Override // com.hbb20.CountryCodePicker.AbstractC16308c
            /* renamed from: a */
            public final void mo7419a() {
                PhoneLoginActivity phoneLoginActivity = PhoneLoginActivity.this;
                phoneLoginActivity.f24554w = phoneLoginActivity.f24540h.m7442f();
                PhoneLoginActivity.this.m29420a(true);
            }

            @Override // com.hbb20.CountryCodePicker.AbstractC16308c
            /* renamed from: b */
            public final void mo7418b() {
                PhoneLoginActivity phoneLoginActivity = PhoneLoginActivity.this;
                phoneLoginActivity.f24554w = phoneLoginActivity.f24540h.m7442f();
                PhoneLoginActivity.this.m29420a(true);
            }
        });
        this.f24538f.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().m28450a(Constants.REGISTRATION, "clickSendMeSms");
                PhoneLoginActivity.this.f24538f.setBackgroundColor(ThemeUtils.getColor(2131099890));
                PhoneLoginActivity.this.f24538f.setClickable(false);
                PhoneLoginActivity.this.f24538f.setEnabled(false);
                Activities.m27653b(PhoneLoginActivity.this.f24535c);
                PhoneLoginActivity.this.m29412c();
            }
        });
        this.f24539g.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!PhoneLoginActivity.this.f24530Q) {
                    PhoneLoginActivity.m29397i(PhoneLoginActivity.this);
                    return;
                }
                PhoneLoginActivity phoneLoginActivity = PhoneLoginActivity.this;
                PhoneLoginActivity.m29418b(phoneLoginActivity, phoneLoginActivity.f24535c.getText().toString());
            }
        });
        this.f24543l = (RelativeLayout) findViewById(2131363172);
        ((TextView) findViewById(2131362381)).setText(Activities.getString(2131886827));
        this.f24544m = (EditText) findViewById(2131363107);
        this.f24545n = (EditText) findViewById(2131363108);
        this.f24546o = (EditText) findViewById(2131363109);
        this.f24547p = (EditText) findViewById(2131363110);
        this.f24548q = (EditText) findViewById(2131363111);
        this.f24549r = (EditText) findViewById(2131363112);
        this.f24550s = (EditText) findViewById(2131362963);
        this.f24551t = (TextView) findViewById(2131363421);
        this.f24552u = (TextView) findViewById(2131363420);
        TextView textView2 = (TextView) findViewById(2131363087);
        this.f24553v = textView2;
        textView2.setText(Activities.getString(2131887047));
        this.f24550s.addTextChangedListener(this.f24532S);
        this.f24544m.setOnFocusChangeListener(this);
        this.f24545n.setOnFocusChangeListener(this);
        this.f24546o.setOnFocusChangeListener(this);
        this.f24547p.setOnFocusChangeListener(this);
        this.f24548q.setOnFocusChangeListener(this);
        this.f24549r.setOnFocusChangeListener(this);
        this.f24544m.setOnKeyListener(this);
        this.f24545n.setOnKeyListener(this);
        this.f24546o.setOnKeyListener(this);
        this.f24547p.setOnKeyListener(this);
        this.f24548q.setOnKeyListener(this);
        this.f24549r.setOnKeyListener(this);
        this.f24550s.setOnKeyListener(this);
        this.f24519F = (RelativeLayout) findViewById(2131363168);
        ((TextView) findViewById(2131362839)).setText(Activities.getString(2131886913));
        ((TextView) findViewById(2131362838)).setText(Activities.getString(2131886912));
        this.f24523J = (RelativeLayout) findViewById(2131363169);
        this.f24524K = (TextView) findViewById(2131363219);
        this.f24525L = (ProgressBar) findViewById(2131363218);
        this.f24526M = (CheckBox) findViewById(2131363217);
        m29413b(false);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        SmsReceivedServiceV1.m27778d();
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.PHONE_LOGIN_ACTIVITY);
        CountDownTimer countDownTimer = this.f24515B;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.f24516C;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
        GlideUtils.GifPlayer gifPlayer = this.f24520G;
        if (gifPlayer != null) {
            gifPlayer.m27031b();
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        switch (view.getId()) {
            case 2131363107:
            case 2131363108:
            case 2131363109:
            case 2131363110:
            case 2131363111:
                break;
            default:
                return;
            case 2131363112:
                ViewUtils.m27325a(this.f24549r, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(3.0f));
                break;
        }
        if (z) {
            setFocus(this.f24550s);
            Activities.m27669a(this.f24550s, 200);
        }
    }

    @Override // com.sinch.verification.core.initiation.response.InitiationListener
    public void onInitializationFailed(Throwable th) {
        this.f24521H = false;
        EditText editText = this.f24535c;
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Sinch initiation failed", (editText == null || editText.getText() == null) ? null : this.f24535c.getText().toString());
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.28
            @Override // java.lang.Runnable
            public void run() {
                PhoneLoginActivity.this.m29430a(ErrorType.FLASH_CALL_INIT);
            }
        });
    }

    @Override // com.sinch.verification.core.initiation.response.InitiationListener
    public /* synthetic */ void onInitiated(FlashCallInitializationResponseData flashCallInitializationResponseData) {
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Sinch initiation success");
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0 && view.getId() == 2131362963 && i == 67) {
            if (this.f24550s.getText().length() == 6) {
                this.f24549r.setText("");
            } else if (this.f24550s.getText().length() == 5) {
                this.f24548q.setText("");
            } else if (this.f24550s.getText().length() == 4) {
                this.f24547p.setText("");
            } else if (this.f24550s.getText().length() == 3) {
                this.f24546o.setText("");
            } else if (this.f24550s.getText().length() == 2) {
                this.f24545n.setText("");
            } else if (this.f24550s.getText().length() == 1) {
                this.f24544m.setText("");
            }
            if (this.f24550s.length() <= 0) {
                return true;
            }
            EditText editText = this.f24550s;
            editText.setText(editText.getText().subSequence(0, this.f24550s.length() - 1));
            EditText editText2 = this.f24550s;
            editText2.setSelection(editText2.getText().length());
            return true;
        }
        return false;
    }

    @Override // com.sinch.verification.core.verification.response.VerificationListener
    public void onVerificationEvent(VerificationEvent verificationEvent) {
        CLog.m27611a(PhoneLoginActivity.class, "onVerificationEvent: ".concat(String.valueOf(verificationEvent)));
    }

    @Override // com.sinch.verification.core.verification.response.VerificationListener
    public void onVerificationFailed(Throwable th) {
        this.f24521H = false;
        EditText editText = this.f24535c;
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Sinch verified failed", (editText == null || editText.getText() == null) ? null : this.f24535c.getText().toString());
        new Task() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.29
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                List<CallLogEntry> m27567a = CallLogUtils.m27567a(PhoneLoginActivity.this.f24522I);
                if (CollectionUtils.m26068b(m27567a)) {
                    for (CallLogEntry callLogEntry : m27567a) {
                        if (DeviceIdLoader.m28854a(PhoneManager.get().m28239a(callLogEntry.getNumber()), 500) == 0) {
                            AnalyticsManager.get().m28449a(Constants.REGISTRATION, "Sinch incoming call", callLogEntry.getNumber());
                            return;
                        }
                        continue;
                    }
                }
            }
        }.execute();
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.30
            @Override // java.lang.Runnable
            public void run() {
                if (PhoneLoginActivity.this.f24520G != null) {
                    PhoneLoginActivity.this.f24520G.m27031b();
                }
                PhoneLoginActivity.this.m29430a(ErrorType.FLASH_CALL_VERIFICATION);
            }
        });
    }

    @Override // com.sinch.verification.core.verification.response.VerificationListener
    public void onVerified() {
        this.f24521H = false;
        AnalyticsManager.get().m28450a(Constants.REGISTRATION, "Sinch verified successfully");
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.FLASH_SCREEN);
        GlideUtils.GifPlayer gifPlayer = this.f24520G;
        if (gifPlayer != null) {
            gifPlayer.m27031b();
        }
        Intent intent = new Intent();
        Phone enteredPhone = getEnteredPhone();
        intent.putExtra("RESULT_USER_PHONE_NUMBER", enteredPhone.m26101a());
        intent.putExtra("RESULT_USER_CALLAPP_TOKEN", enteredPhone.m26101a());
        intent.putExtra("RESULT_USER_CALLAPP_TOKEN_TYPE", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH.name());
        setResult(-1, intent);
        finish();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return false;
    }
}
