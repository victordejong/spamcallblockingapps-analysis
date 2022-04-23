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
import com.google.android.gms.auth.api.a;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.auth.api.credentials.b;
import com.google.android.gms.auth.api.credentials.c;
import com.google.android.gms.common.internal.o;
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
    private CountDownTimer B;
    private CountDownTimer C;
    private RelativeLayout F;
    private GlideUtils.GifPlayer G;
    private RelativeLayout J;
    private TextView K;
    private ProgressBar L;
    private CheckBox M;
    private Phone O;
    private boolean P;
    private boolean Q;
    private boolean R;

    /* renamed from: b  reason: collision with root package name */
    private RelativeLayout f13942b;

    /* renamed from: c  reason: collision with root package name */
    private EditText f13943c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f13944d;
    private TextView e;
    private TextView f;
    private TextView g;
    private CountryCodePicker h;
    private TextWatcher j;
    private RelativeLayout l;
    private EditText m;
    private EditText n;
    private EditText o;
    private EditText p;
    private EditText q;
    private EditText r;
    private EditText s;
    private TextView t;
    private TextView u;
    private TextView v;
    private String w;
    private String x;
    private String y;
    private String z;

    /* renamed from: a  reason: collision with root package name */
    private final Intent f13941a = new Intent();
    private int k = 0;
    private int A = 0;
    private final int D = 2;
    private int E = 0;
    private boolean H = false;
    private Date I = null;
    private boolean N = true;
    private TextWatcher S = new TextWatcher() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.14
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (charSequence.length() == 0) {
                PhoneLoginActivity.this.m.setText("");
                PhoneLoginActivity.this.n.setText("");
                PhoneLoginActivity.this.o.setText("");
                PhoneLoginActivity.this.p.setText("");
                PhoneLoginActivity.this.q.setText("");
                PhoneLoginActivity.this.r.setText("");
                PhoneLoginActivity.this.m.requestFocus();
                ViewUtils.a(PhoneLoginActivity.this.m, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
                ViewUtils.a(PhoneLoginActivity.this.n, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
            } else if (charSequence.length() == 1) {
                EditText editText = PhoneLoginActivity.this.m;
                StringBuilder sb = new StringBuilder();
                sb.append(charSequence.charAt(0));
                editText.setText(sb.toString());
                PhoneLoginActivity.this.n.setText("");
                PhoneLoginActivity.this.o.setText("");
                PhoneLoginActivity.this.p.setText("");
                PhoneLoginActivity.this.q.setText("");
                PhoneLoginActivity.this.r.setText("");
                ViewUtils.a(PhoneLoginActivity.this.o, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                ViewUtils.a(PhoneLoginActivity.this.p, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                ViewUtils.a(PhoneLoginActivity.this.q, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                ViewUtils.a(PhoneLoginActivity.this.r, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                PhoneLoginActivity.this.v.setVisibility(8);
                if (i3 >= i2) {
                    ViewUtils.a(PhoneLoginActivity.this.m, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                    ViewUtils.a(PhoneLoginActivity.this.n, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
                    return;
                }
                ViewUtils.a(PhoneLoginActivity.this.n, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
                ViewUtils.a(PhoneLoginActivity.this.o, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
            } else if (charSequence.length() == 2) {
                EditText editText2 = PhoneLoginActivity.this.n;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(charSequence.charAt(1));
                editText2.setText(sb2.toString());
                PhoneLoginActivity.this.o.setText("");
                PhoneLoginActivity.this.p.setText("");
                PhoneLoginActivity.this.q.setText("");
                PhoneLoginActivity.this.r.setText("");
                if (i3 >= i2) {
                    ViewUtils.a(PhoneLoginActivity.this.o, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
                    ViewUtils.a(PhoneLoginActivity.this.n, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                    return;
                }
                ViewUtils.a(PhoneLoginActivity.this.p, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                ViewUtils.a(PhoneLoginActivity.this.o, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
            } else if (charSequence.length() == 3) {
                EditText editText3 = PhoneLoginActivity.this.o;
                StringBuilder sb3 = new StringBuilder();
                sb3.append(charSequence.charAt(2));
                editText3.setText(sb3.toString());
                PhoneLoginActivity.this.p.setText("");
                PhoneLoginActivity.this.q.setText("");
                PhoneLoginActivity.this.r.setText("");
                if (i3 >= i2) {
                    ViewUtils.a(PhoneLoginActivity.this.p, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
                    ViewUtils.a(PhoneLoginActivity.this.o, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                    return;
                }
                ViewUtils.a(PhoneLoginActivity.this.q, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                ViewUtils.a(PhoneLoginActivity.this.p, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
            } else if (charSequence.length() == 4) {
                EditText editText4 = PhoneLoginActivity.this.p;
                StringBuilder sb4 = new StringBuilder();
                sb4.append(charSequence.charAt(3));
                editText4.setText(sb4.toString());
                PhoneLoginActivity.this.q.setText("");
                PhoneLoginActivity.this.r.setText("");
                if (i3 >= i2) {
                    ViewUtils.a(PhoneLoginActivity.this.q, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
                    ViewUtils.a(PhoneLoginActivity.this.p, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                    return;
                }
                ViewUtils.a(PhoneLoginActivity.this.r, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                ViewUtils.a(PhoneLoginActivity.this.q, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
            } else if (charSequence.length() == 5) {
                EditText editText5 = PhoneLoginActivity.this.q;
                StringBuilder sb5 = new StringBuilder();
                sb5.append(charSequence.charAt(4));
                editText5.setText(sb5.toString());
                PhoneLoginActivity.this.r.setText("");
                if (i3 >= i2) {
                    ViewUtils.a(PhoneLoginActivity.this.r, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
                    ViewUtils.a(PhoneLoginActivity.this.q, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                    return;
                }
                ViewUtils.a(PhoneLoginActivity.this.r, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
            } else if (charSequence.length() == 6) {
                EditText editText6 = PhoneLoginActivity.this.r;
                StringBuilder sb6 = new StringBuilder();
                sb6.append(charSequence.charAt(5));
                editText6.setText(sb6.toString());
                ViewUtils.a(PhoneLoginActivity.this.r, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                ViewUtils.a(PhoneLoginActivity.this.m, 2131230937, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
                Activities.b(PhoneLoginActivity.this.r);
                if (!Prefs.gC.get().booleanValue()) {
                    PhoneLoginActivity.w(PhoneLoginActivity.this);
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity$27  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27.class */
    public class AnonymousClass27 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f13977a;

        /* renamed from: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity$27$1  reason: invalid class name */
        /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27$1.class */
        class AnonymousClass1 implements DialogPopup.IDialogOnClickListener {
            AnonymousClass1() {
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                PermissionManager.get();
                if (PermissionManager.a("android.permission.READ_CALL_LOG")) {
                    PermissionManager.get();
                    if (PermissionManager.a("android.permission.READ_PHONE_STATE")) {
                        AnonymousClass27.this.f13977a.run();
                        return;
                    }
                }
                PermissionManager.get().a(PhoneLoginActivity.this, AnonymousClass27.this.f13977a, new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.27.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.27.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                PhoneLoginActivity.this.a(ErrorType.FLASH_CALL_NO_PERMISSIONS);
                            }
                        });
                    }
                }, PermissionManager.PermissionGroup.CALL_LOG, PermissionManager.PermissionGroup.PHONE);
            }
        }

        AnonymousClass27(Runnable runnable) {
            this.f13977a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            PopupManager.get().a(PhoneLoginActivity.this, new DialogSimpleMessage(StringUtils.SPACE, Activities.getString(2131887561), Activities.getString(2131886231), Activities.getString(2131886738), new AnonymousClass1(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.27.2
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.27.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PhoneLoginActivity.this.a(ErrorType.FLASH_CALL_NO_PERMISSIONS);
                        }
                    });
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity$31  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$31.class */
    public static /* synthetic */ class AnonymousClass31 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f13988a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[ErrorType.values().length];
            f13988a = iArr;
            try {
                iArr[ErrorType.SMS_SENT_FAIL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13988a[ErrorType.SMS_SERVER_CODE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13988a[ErrorType.FLASH_CALL_NO_PERMISSIONS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13988a[ErrorType.FLASH_CALL_INIT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f13988a[ErrorType.FLASH_CALL_SERVER_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f13988a[ErrorType.FLASH_CALL_VERIFICATION.ordinal()] = 6;
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

    static /* synthetic */ int E(PhoneLoginActivity phoneLoginActivity) {
        int i = phoneLoginActivity.E;
        phoneLoginActivity.E = i + 1;
        return i;
    }

    static /* synthetic */ void L(PhoneLoginActivity phoneLoginActivity) {
        AnalyticsManager.get().b(Constants.FLASH_SCREEN);
        phoneLoginActivity.P = false;
        phoneLoginActivity.f13942b.setVisibility(8);
        phoneLoginActivity.l.setVisibility(8);
        phoneLoginActivity.J.setVisibility(8);
        phoneLoginActivity.F.setVisibility(0);
        ((TextView) phoneLoginActivity.findViewById(2131363507)).setText(phoneLoginActivity.getEnteredPhone().a());
        ImageView imageView = (ImageView) phoneLoginActivity.findViewById(2131362837);
        if (!phoneLoginActivity.isDestroyed()) {
            phoneLoginActivity.G = new GlideUtils.GifPlayer(phoneLoginActivity, imageView, 2131230901, -1, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        this.f13941a.putExtra("EXTRA_NETWORK_TYPE", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.VK.getNumRep());
        setResult(-1, this.f13941a);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ErrorType errorType) {
        switch (AnonymousClass31.f13988a[errorType.ordinal()]) {
            case 1:
            case 2:
                AnalyticsManager.get().a(Constants.REGISTRATION, "ViewSMSUnsuccessPopup");
                FeedbackManager.get().b(Activities.getString(2131887559), (Integer) 17);
                c(false);
                return;
            case 3:
                FeedbackManager.get().b(Activities.getString(2131887560), (Integer) 17);
                if (this.Q) {
                    ViewUtils.c(this.f, 2131232047, ThemeUtils.getColor(2131099914));
                    this.f.setVisibility(0);
                    this.f.setEnabled(true);
                    this.f.setClickable(true);
                    this.g.setVisibility(8);
                    this.R = true;
                    Prefs.hI.set(Boolean.valueOf(this.R));
                    b(true);
                    return;
                }
                finish();
                return;
            case 4:
            case 5:
            case 6:
                AnalyticsManager.get().a(Constants.REGISTRATION, "ViewSinchUnsuccessPopup");
                FeedbackManager.get().b(Activities.getString(2131887559), (Integer) 17);
                if (this.Q) {
                    ViewUtils.c(this.f, 2131232047, ThemeUtils.getColor(2131099914));
                    this.f.setVisibility(0);
                    this.f.setEnabled(true);
                    this.f.setClickable(true);
                    this.g.setVisibility(8);
                    this.R = true;
                    Prefs.hI.set(Boolean.valueOf(this.R));
                    b(true);
                    return;
                }
                finish();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SocialLoginButton socialLoginButton, SocialLoginButton socialLoginButton2, SocialLoginButton socialLoginButton3, final String str) {
        socialLoginButton.setText(Activities.getString(2131887119));
        socialLoginButton3.setText(Activities.getString(2131887121));
        if (LocaleUtils.isRussianUser()) {
            socialLoginButton2.setVisibility(0);
            socialLoginButton2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin._$$Lambda$PhoneLoginActivity$_bK_LlSDLPugmwxUTMVmCNkrZ9s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PhoneLoginActivity.this.a(view);
                }
            });
            socialLoginButton2.setEnabled(true);
        }
        socialLoginButton.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin._$$Lambda$PhoneLoginActivity$9_aHM7xeBytkzMxtou_4t0exCPc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneLoginActivity.this.b(str, view);
            }
        });
        socialLoginButton.setEnabled(true);
        socialLoginButton3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin._$$Lambda$PhoneLoginActivity$QzEBOPozGblD4g1Jv0SQPzpUFiE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PhoneLoginActivity.this.a(str, view);
            }
        });
        socialLoginButton3.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, View view) {
        AnalyticsManager.get().a(Constants.REGISTRATION, "Clicked login button: Google", str);
        this.f13941a.putExtra("EXTRA_NETWORK_TYPE", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.USER_GOOGLE.getNumRep());
        setResult(-1, this.f13941a);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (z) {
            this.f13943c.removeTextChangedListener(this.j);
        }
        this.f13943c.setText(this.w);
        EditText editText = this.f13943c;
        editText.setSelection(editText.getText().length());
        this.f13943c.requestFocus();
        Activities.a(this.f13943c, 200);
        if (z) {
            this.f13943c.addTextChangedListener(this.j);
        }
    }

    static /* synthetic */ void b(PhoneLoginActivity phoneLoginActivity, String str) {
        DialogVerifyNumberBeforeFlash dialogVerifyNumberBeforeFlash = new DialogVerifyNumberBeforeFlash(str, new DialogVerifyNumberBeforeFlash.IUserConfirmNumberBeforeFlash() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.9
            @Override // com.callapp.contacts.popup.contact.DialogVerifyNumberBeforeFlash.IUserConfirmNumberBeforeFlash
            public final void a() {
                PhoneLoginActivity.i(PhoneLoginActivity.this);
            }
        });
        dialogVerifyNumberBeforeFlash.setCancelable(false);
        PopupManager.get().a(phoneLoginActivity, dialogVerifyNumberBeforeFlash);
    }

    private void b(Phone phone) {
        String a2 = phone.a();
        this.f13943c.setText(a2);
        this.f13943c.setSelection(a2.length());
        this.f.setClickable(true);
        this.f.setEnabled(true);
        this.f13944d.setVisibility(0);
        this.e.setVisibility(0);
    }

    private void b(String str) {
        this.P = false;
        this.f13942b.setVisibility(8);
        this.l.setVisibility(8);
        this.F.setVisibility(8);
        this.J.setVisibility(0);
        this.M.setVisibility(8);
        this.L.setVisibility(0);
        this.K.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(String str, View view) {
        AnalyticsManager.get().a(Constants.REGISTRATION, "Clicked login button: Facebook", str);
        this.f13941a.putExtra("EXTRA_NETWORK_TYPE", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.FACEBOOK.getNumRep());
        setResult(-1, this.f13941a);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        this.P = false;
        CountDownTimer countDownTimer = this.B;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.C;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
        boolean z2 = !com.callapp.framework.util.StringUtils.a(this.f13943c.getText(), this.w);
        this.e.setVisibility(z2 ? 0 : 8);
        this.f13944d.setVisibility(z2 ? 0 : 8);
        if (!this.Q || this.R) {
            this.g.setVisibility(8);
            this.f.setVisibility(0);
            this.f.setClickable(z2);
            this.f.setEnabled(z2);
            ViewUtils.c(this.f, 2131232047, z2 ? ThemeUtils.getColor(2131099914) : ThemeUtils.getColor(2131099890));
        } else {
            this.g.setVisibility(0);
            this.f.setVisibility(8);
            this.g.setClickable(z2);
            this.g.setEnabled(z2);
            ViewUtils.c(this.g, 2131232047, z2 ? ThemeUtils.getColor(2131099914) : ThemeUtils.getColor(2131099890));
        }
        this.f13943c.requestFocus();
        Activities.a(this.f13943c, 200);
        this.l.setVisibility(8);
        this.F.setVisibility(8);
        this.J.setVisibility(8);
        this.f13942b.setVisibility(0);
        if (z) {
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (getEnteredPhone().isValidForSearch()) {
            e();
        } else {
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v37, types: [com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity$21] */
    public void c(boolean z) {
        AnalyticsManager.get().a(Constants.REGISTRATION, "ViewEnterSMSCodeScreen");
        final boolean z2 = true;
        this.P = true;
        this.f13942b.setVisibility(8);
        this.F.setVisibility(8);
        this.J.setVisibility(8);
        this.l.setVisibility(0);
        this.v.setVisibility(8);
        this.s.setText("");
        ViewUtils.a(this.m, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        ViewUtils.a(this.n, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        ViewUtils.a(this.o, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        ViewUtils.a(this.p, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        ViewUtils.a(this.q, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        ViewUtils.a(this.r, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        CountDownTimer countDownTimer = this.B;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.C;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
        this.M.setChecked(false);
        Phone enteredPhone = getEnteredPhone();
        if (z && !SmsUtils.a(this, enteredPhone, this.x)) {
            a(ErrorType.SMS_SENT_FAIL);
        }
        TextView textView = (TextView) findViewById(2131363506);
        textView.setText(enteredPhone.a());
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(Constants.REGISTRATION, "ClickEditPhoneNumber");
                PhoneLoginActivity.this.s.setText("");
                PhoneLoginActivity.this.b(false);
            }
        });
        this.m.requestFocus();
        ViewUtils.a(this.m, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
        String a2 = CallAppRemoteConfigManager.get().a("sinchBlockedCountries");
        if (com.callapp.framework.util.StringUtils.b((CharSequence) a2)) {
            String str = "+" + enteredPhone.getCountryCode();
            String[] split = a2.split(",");
            if (split != null) {
                for (String str2 : split) {
                    if (com.callapp.framework.util.StringUtils.b(str2, str)) {
                        break;
                    }
                }
            }
        }
        z2 = false;
        long j = 0;
        if (!z2 && !this.Q) {
            setCallMeTimer(z ? CallAppRemoteConfigManager.get().b("timerCallMe") : 0L);
        }
        if (z) {
            j = CallAppRemoteConfigManager.get().b("timerSendSms");
        }
        this.t.setVisibility(0);
        final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("mm:ss");
        this.t.setText(HtmlUtils.b(Activities.getString(2131887577) + StringUtils.SPACE + Activities.getString(2131887016) + StringUtils.SPACE + simpleDateFormat.format(new Date(j))));
        d(false);
        this.t.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PhoneLoginActivity.this.E < 2) {
                    AnalyticsManager.get().a(Constants.REGISTRATION, "ClickResendSMS");
                    PhoneLoginActivity.this.d(false);
                    PhoneLoginActivity.E(PhoneLoginActivity.this);
                    PhoneLoginActivity.this.e();
                    Activities.b(PhoneLoginActivity.this.t);
                } else {
                    PhoneLoginActivity.this.finish();
                }
                if (z2) {
                    CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.20.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RelativeLayout relativeLayout = (RelativeLayout) PhoneLoginActivity.this.findViewById(2131363920);
                            SocialLoginButton socialLoginButton = (SocialLoginButton) PhoneLoginActivity.this.findViewById(2131362778);
                            SocialLoginButton socialLoginButton2 = (SocialLoginButton) PhoneLoginActivity.this.findViewById(2131362909);
                            PhoneLoginActivity.this.a(socialLoginButton, (SocialLoginButton) PhoneLoginActivity.this.findViewById(2131364543), socialLoginButton2, "EnterSMSCode");
                            relativeLayout.setVisibility(0);
                        }
                    }, 20000L);
                }
            }
        });
        CountDownTimer countDownTimer3 = this.B;
        if (countDownTimer3 != null) {
            countDownTimer3.cancel();
        }
        this.B = new CountDownTimer(j, 1000L) { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.21
            @Override // android.os.CountDownTimer
            public void onFinish() {
                PhoneLoginActivity.this.d(true);
                PhoneLoginActivity.this.t.setText(HtmlUtils.b(Activities.getString(2131887577)));
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
                PhoneLoginActivity.this.d(false);
                TextView textView2 = PhoneLoginActivity.this.t;
                textView2.setText(HtmlUtils.b(Activities.getString(2131887577) + StringUtils.SPACE + Activities.getString(2131887016) + StringUtils.SPACE + simpleDateFormat.format(new Date(j2))));
            }
        }.start();
    }

    private void d() {
        AnalyticsManager.get().a(Constants.REGISTRATION, "ViewInvalidNumberPopup");
        DialogVerifyNumber dialogVerifyNumber = new DialogVerifyNumber(Activities.getString(2131887396), null, Activities.getString(2131888244), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.8
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                AnalyticsManager.get().a(Constants.REGISTRATION, "ClickInvalidNumberPopup");
                PhoneLoginActivity.this.a(false);
            }
        });
        dialogVerifyNumber.setCancelable(false);
        PopupManager.get().a(this, dialogVerifyNumber);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z) {
        this.t.setTextColor(ThemeUtils.getColor(z ? 2131099916 : 2131099917));
        this.t.setClickable(z);
        this.t.setEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        SmsReceivedServiceV1.a(this);
        PermissionManager.get();
        if (PermissionManager.a("android.permission.SEND_SMS")) {
            b(Activities.getString(2131887115));
            new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.10
                @Override // java.lang.Runnable
                public void run() {
                    SmsCodeUtils.a(PhoneLoginActivity.this.getEnteredPhone(), PhoneLoginActivity.this);
                }
            }, 1000L);
            return;
        }
        this.f.setBackgroundColor(ThemeUtils.getColor(2131099914));
        this.f.setClickable(true);
        this.f.setEnabled(true);
        int i = this.k + 1;
        this.k = i;
        if (i > 2) {
            this.k = 0;
            if (this.Q) {
                finish();
            } else {
                f();
            }
        } else {
            PermissionManager.get().a(this, new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.11
                @Override // java.lang.Runnable
                public void run() {
                    PhoneLoginActivity.this.f.performClick();
                }
            }, new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.12
                @Override // java.lang.Runnable
                public void run() {
                    if (PhoneLoginActivity.this.k >= 2) {
                        PhoneLoginActivity.this.k = 0;
                        if (PhoneLoginActivity.this.Q) {
                            PhoneLoginActivity.this.finish();
                        } else {
                            PhoneLoginActivity.this.f();
                        }
                    }
                }
            }, PermissionManager.PermissionGroup.SMS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(boolean z) {
        this.u.setTextColor(ThemeUtils.getColor(z ? 2131099916 : 2131099917));
        this.u.setClickable(z);
        this.u.setEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f.setVisibility(8);
        this.f.setEnabled(false);
        this.g.setVisibility(0);
        this.g.setText(Activities.getString(2131888123));
        this.g.setEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Phone getEnteredPhone() {
        Phone a2 = PhoneManager.get().a(this.f13943c.getText().toString());
        if (com.callapp.framework.util.StringUtils.a(Integer.valueOf(a2.getCountryCode()), "54") && a2.getLineType() != PhoneNumberUtil.d.MOBILE) {
            String b2 = a2.b();
            String str = b2;
            if (com.callapp.framework.util.StringUtils.e(b2, "0")) {
                str = com.callapp.framework.util.StringUtils.a(b2, 1, b2.length());
            }
            Phone a3 = PhoneManager.get().a("+549".concat(String.valueOf(str)));
            if (a3.getLineType() == PhoneNumberUtil.d.MOBILE) {
                return a3;
            }
        }
        return a2;
    }

    static /* synthetic */ void i(PhoneLoginActivity phoneLoginActivity) {
        Activities.b(phoneLoginActivity.f13943c);
        ViewUtils.c(phoneLoginActivity.g, 2131232047, ThemeUtils.getColor(2131099890));
        phoneLoginActivity.g.setClickable(false);
        phoneLoginActivity.g.setEnabled(false);
        Phone enteredPhone = phoneLoginActivity.getEnteredPhone();
        if (enteredPhone.isValidForSearch()) {
            phoneLoginActivity.a(enteredPhone);
        } else {
            phoneLoginActivity.d();
        }
    }

    /* JADX WARN: Type inference failed for: r1v16, types: [com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity$23] */
    private void setCallMeTimer(long j) {
        this.u.setVisibility(0);
        final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("mm:ss");
        TextView textView = this.u;
        textView.setText(HtmlUtils.b(Activities.getString(2131886390) + StringUtils.SPACE + Activities.getString(2131887016) + StringUtils.SPACE + simpleDateFormat.format(new Date(j))));
        e(false);
        this.u.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.22
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(Constants.REGISTRATION, "ClickSinchCallMe");
                PhoneLoginActivity.this.e(false);
                PhoneLoginActivity.this.a(PhoneLoginActivity.this.getEnteredPhone());
            }
        });
        CountDownTimer countDownTimer = this.C;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.C = new CountDownTimer(j, 1000L) { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.23
            @Override // android.os.CountDownTimer
            public void onFinish() {
                PhoneLoginActivity.this.e(true);
                PhoneLoginActivity.this.u.setText(HtmlUtils.b(Activities.getString(2131886390)));
            }

            @Override // android.os.CountDownTimer
            public void onTick(long j2) {
                PhoneLoginActivity.this.e(false);
                TextView textView2 = PhoneLoginActivity.this.u;
                textView2.setText(HtmlUtils.b(Activities.getString(2131886390) + StringUtils.SPACE + Activities.getString(2131887016) + StringUtils.SPACE + simpleDateFormat.format(new Date(j2))));
            }
        }.start();
    }

    private void setFocus(EditText editText) {
        if (editText != null) {
            editText.setFocusable(true);
            editText.setFocusableInTouchMode(true);
            editText.requestFocus();
        }
    }

    static /* synthetic */ void w(PhoneLoginActivity phoneLoginActivity) {
        ViewUtils.a(phoneLoginActivity.m, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        ViewUtils.a(phoneLoginActivity.n, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        ViewUtils.a(phoneLoginActivity.o, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        ViewUtils.a(phoneLoginActivity.p, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        ViewUtils.a(phoneLoginActivity.q, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        ViewUtils.a(phoneLoginActivity.r, 2131232036, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        String trim = (phoneLoginActivity.m.getText().toString() + phoneLoginActivity.n.getText().toString() + phoneLoginActivity.o.getText().toString() + phoneLoginActivity.p.getText().toString() + phoneLoginActivity.q.getText().toString() + phoneLoginActivity.r.getText().toString()).trim();
        phoneLoginActivity.y = trim;
        if (!com.callapp.framework.util.StringUtils.b((CharSequence) trim) || !com.callapp.framework.util.StringUtils.b((CharSequence) phoneLoginActivity.x) || !phoneLoginActivity.y.equals(phoneLoginActivity.x) || !com.callapp.framework.util.StringUtils.b((CharSequence) phoneLoginActivity.z)) {
            AnalyticsManager analyticsManager = AnalyticsManager.get();
            analyticsManager.a(Constants.REGISTRATION, "Entered wrong SMS code", "codeCounter " + phoneLoginActivity.A);
            int i = phoneLoginActivity.A + 1;
            phoneLoginActivity.A = i;
            if (i > 2) {
                phoneLoginActivity.A = 0;
                phoneLoginActivity.b(false);
            }
            phoneLoginActivity.s.setText("");
            phoneLoginActivity.v.setVisibility(0);
            ViewUtils.a(phoneLoginActivity.m, 2131232036, ThemeUtils.getColor(2131099675), (int) Activities.a(1.0f));
            ViewUtils.a(phoneLoginActivity.n, 2131232036, ThemeUtils.getColor(2131099675), (int) Activities.a(1.0f));
            ViewUtils.a(phoneLoginActivity.o, 2131232036, ThemeUtils.getColor(2131099675), (int) Activities.a(1.0f));
            ViewUtils.a(phoneLoginActivity.p, 2131232036, ThemeUtils.getColor(2131099675), (int) Activities.a(1.0f));
            ViewUtils.a(phoneLoginActivity.q, 2131232036, ThemeUtils.getColor(2131099675), (int) Activities.a(1.0f));
            ViewUtils.a(phoneLoginActivity.r, 2131232036, ThemeUtils.getColor(2131099675), (int) Activities.a(1.0f));
            return;
        }
        AnalyticsManager.get().a(Constants.REGISTRATION, "Entered correct SMS code");
        phoneLoginActivity.b(Activities.getString(2131886139));
        phoneLoginActivity.L.setVisibility(8);
        phoneLoginActivity.M.setVisibility(0);
        phoneLoginActivity.M.post(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.16
            @Override // java.lang.Runnable
            public void run() {
                PhoneLoginActivity.this.M.setChecked(true);
            }
        });
        new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.17
            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent();
                intent.putExtra("RESULT_USER_PHONE_NUMBER", PhoneLoginActivity.this.getEnteredPhone().a());
                intent.putExtra("RESULT_USER_CALLAPP_TOKEN", PhoneLoginActivity.this.z);
                intent.putExtra("RESULT_USER_CALLAPP_TOKEN_TYPE", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP.name());
                PhoneLoginActivity.this.setResult(-1, intent);
                PhoneLoginActivity.this.finish();
            }
        }, 1000L);
    }

    @Override // com.callapp.contacts.util.SmsCodeUtils.SmsCodeEvents
    public final void a() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.19
            @Override // java.lang.Runnable
            public void run() {
                PhoneLoginActivity.this.a(ErrorType.SMS_SERVER_CODE);
            }
        });
    }

    public final void a(final Phone phone) {
        AnalyticsManager.get().a(Constants.REGISTRATION, "Sinch performing verification");
        this.H = true;
        final String a2 = CallAppRemoteConfigManager.get().a("sinchAppKey");
        Runnable runnable = new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.26
            @Override // java.lang.Runnable
            public void run() {
                if (com.callapp.framework.util.StringUtils.b((CharSequence) a2)) {
                    PhoneLoginActivity.L(PhoneLoginActivity.this);
                    SinchCodeUtils.a(phone, PhoneLoginActivity.this);
                    return;
                }
                PhoneLoginActivity.this.b();
            }
        };
        PermissionManager.get();
        if (PermissionManager.a("android.permission.READ_CALL_LOG")) {
            PermissionManager.get();
            if (PermissionManager.a("android.permission.READ_PHONE_STATE")) {
                runnable.run();
                return;
            }
        }
        PermissionManager.get().a(this, runnable, new AnonymousClass27(runnable), PermissionManager.PermissionGroup.CALL_LOG, PermissionManager.PermissionGroup.PHONE);
    }

    @Override // com.callapp.contacts.util.SinchCodeUtils.SinchCodeEvents
    public final void a(final Phone phone, final String str) {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.24
            @Override // java.lang.Runnable
            public void run() {
                PhoneLoginActivity.this.I = new Date();
                final Verification build = FlashCallVerificationMethod.Builder.getInstance().config(FlashCallVerificationConfig.Builder.getInstance().globalConfig(SinchGlobalConfig.Builder.getInstance().applicationContext(CallAppApplication.get()).authorizationMethod(new AppKeyAuthorizationMethod(CallAppRemoteConfigManager.get().a("sinchAppKey"))).build()).number(phone.a()).custom(str).build()).initializationListener(PhoneLoginActivity.this).verificationListener(PhoneLoginActivity.this).build();
                build.initiate();
                new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.24.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (PhoneLoginActivity.this.H) {
                            Verification verification = build;
                            if (verification != null) {
                                verification.stop();
                            }
                            PhoneLoginActivity.this.H = false;
                            if (PhoneLoginActivity.this.G != null) {
                                PhoneLoginActivity.this.G.b();
                            }
                            PhoneLoginActivity.this.a(ErrorType.FLASH_CALL_VERIFICATION);
                        }
                    }
                }, 50000L);
            }
        });
    }

    @Override // com.callapp.contacts.service.jobs.SmsReceivedServiceV1.RegistrationCodeListener
    public final void a(final String str) {
        if (com.callapp.framework.util.StringUtils.f(str) == 6) {
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.15
                @Override // java.lang.Runnable
                public void run() {
                    AnalyticsManager.get().a(Constants.REGISTRATION, "onReceiveCode success");
                    PhoneLoginActivity.this.y = str;
                    String valueOf = String.valueOf(PhoneLoginActivity.this.y.charAt(0));
                    String valueOf2 = String.valueOf(PhoneLoginActivity.this.y.charAt(1));
                    String valueOf3 = String.valueOf(PhoneLoginActivity.this.y.charAt(2));
                    String valueOf4 = String.valueOf(PhoneLoginActivity.this.y.charAt(3));
                    String valueOf5 = String.valueOf(PhoneLoginActivity.this.y.charAt(4));
                    String valueOf6 = String.valueOf(PhoneLoginActivity.this.y.charAt(5));
                    PhoneLoginActivity.this.m.setText(valueOf);
                    PhoneLoginActivity.this.n.setText(valueOf2);
                    PhoneLoginActivity.this.o.setText(valueOf3);
                    PhoneLoginActivity.this.p.setText(valueOf4);
                    PhoneLoginActivity.this.q.setText(valueOf5);
                    PhoneLoginActivity.this.r.setText(valueOf6);
                    EditText editText = PhoneLoginActivity.this.s;
                    editText.setText(valueOf + valueOf2 + valueOf3 + valueOf4 + valueOf5 + valueOf6);
                    if (!Prefs.gC.get().booleanValue()) {
                        PhoneLoginActivity.w(PhoneLoginActivity.this);
                    }
                }
            });
        }
    }

    @Override // com.callapp.contacts.util.SmsCodeUtils.SmsCodeEvents
    public final void a(String str, String str2) {
        this.x = str;
        this.z = str2;
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.18
            @Override // java.lang.Runnable
            public void run() {
                PhoneLoginActivity.this.K.setText(Activities.getString(2131887114));
                PhoneLoginActivity.this.L.setVisibility(8);
                PhoneLoginActivity.this.M.setVisibility(0);
                PhoneLoginActivity.this.M.post(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.18.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PhoneLoginActivity.this.M.setChecked(true);
                    }
                });
                new Handler().postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.18.2
                    @Override // java.lang.Runnable
                    public void run() {
                        PhoneLoginActivity.this.c(true);
                    }
                }, 1500L);
            }
        });
    }

    @Override // com.callapp.contacts.util.SinchCodeUtils.SinchCodeEvents
    public final void b() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.25
            @Override // java.lang.Runnable
            public void run() {
                PhoneLoginActivity.this.a(ErrorType.FLASH_CALL_SERVER_CODE);
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
            if (com.callapp.framework.util.StringUtils.b((CharSequence) id)) {
                AnalyticsManager.get().a(Constants.REGISTRATION, "SetPlayServicesAutoFill ");
                b(PhoneManager.get().a(id));
                c();
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.H) {
            return;
        }
        if (this.P) {
            AnalyticsManager.get().a(Constants.REGISTRATION, "ClickBackFromEnterSMSCode");
            this.s.setText("");
            b(false);
            return;
        }
        super.onBackPressed();
        AnalyticsManager.get().a(Constants.REGISTRATION, "Login cancelled using Phone Number");
    }

    @Override // com.callapp.contacts.activity.base.BaseFullScreenActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.R = Prefs.hI.get().booleanValue();
        AnalyticsManager.get().e(Constants.PHONE_LOGIN_ACTIVITY);
        this.Q = com.callapp.framework.util.StringUtils.b((CharSequence) CallAppRemoteConfigManager.get().a("loginCallMeFirst")) && CallAppRemoteConfigManager.get().c("loginCallMeFirst");
        Intent intent = getIntent();
        if (!(intent == null || intent.getExtras() == null)) {
            this.N = intent.getExtras().getBoolean("EXTRA_NEED_TO_SHOW_SOCIAL");
            Phone phone = (Phone) intent.getExtras().get("EXTRA_SUGGESTED_PHONE_NUMBER");
            this.O = phone;
            if (phone != null) {
                AnalyticsManager.get().a(Constants.REGISTRATION, "AddedAutoFillPhoneNumber ", this.O.getRawNumber());
            }
        }
        if (this.O == null && GooglePlayUtils.isGooglePlayServicesAvailable()) {
            HintRequest.a aVar = new HintRequest.a();
            aVar.f22473b = true;
            aVar.f22472a = false;
            CredentialPickerConfig.a aVar2 = new CredentialPickerConfig.a();
            aVar2.f22465a = false;
            aVar2.f22466b = false;
            aVar2.f22467c = 3;
            aVar.f22475d = (CredentialPickerConfig) o.a(aVar2.a());
            if (aVar.f22474c == null) {
                aVar.f22474c = new String[0];
            }
            if (aVar.f22472a || aVar.f22473b || aVar.f22474c.length != 0) {
                String str = null;
                HintRequest hintRequest = new HintRequest(aVar);
                b bVar = new b((Activity) this, (a.C0450a) c.e);
                Context context = bVar.f22613a;
                a.C0450a aVar3 = (a.C0450a) bVar.f22614b;
                String str2 = ((a.C0450a) bVar.f22614b).f22457d;
                o.a(context, "context must not be null");
                o.a(hintRequest, "request must not be null");
                if (aVar3 != null) {
                    str = aVar3.f22455b;
                }
                String a2 = TextUtils.isEmpty(str2) ? com.google.android.gms.internal.auth_api.b.a() : (String) o.a(str2);
                Intent putExtra = new Intent("com.google.android.gms.auth.api.credentials.PICKER").putExtra("claimedCallingPackage", str);
                putExtra.putExtra("logSessionId", a2);
                com.google.android.gms.common.internal.safeparcel.b.a(hintRequest, putExtra, "com.google.android.gms.credentials.HintRequest");
                PendingIntent activity = PendingIntent.getActivity(context, 2000, putExtra, 134217728);
                try {
                    AnalyticsManager.get().a(Constants.REGISTRATION, "GetPlayServicesAutoFill ");
                    startIntentSenderForResult(activity.getIntentSender(), 7744, null, 0, 0, 0);
                } catch (IntentSender.SendIntentException e) {
                    CLog.a(PhoneLoginActivity.class, e);
                }
            } else {
                throw new IllegalStateException("At least one authentication method must be specified");
            }
        }
        this.f13943c = (EditText) findViewById(2131362670);
        this.f13944d = (ImageView) findViewById(2131362671);
        TextView textView = (TextView) findViewById(2131362485);
        this.e = textView;
        textView.setText(HtmlUtils.b(Activities.getString(2131886670)));
        this.f13944d.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneLoginActivity.this.a(false);
                AnalyticsManager.get().a(Constants.REGISTRATION, "ClickEditAutoFillPhoneNumberIcon ", (PhoneLoginActivity.this.f13943c == null || PhoneLoginActivity.this.f13943c.getText() == null) ? null : PhoneLoginActivity.this.f13943c.getText().toString());
            }
        });
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneLoginActivity.this.a(false);
                AnalyticsManager.get().a(Constants.REGISTRATION, "ClickEditAutoFillPhoneNumberLink ", (PhoneLoginActivity.this.f13943c == null || PhoneLoginActivity.this.f13943c.getText() == null) ? null : PhoneLoginActivity.this.f13943c.getText().toString());
            }
        });
        this.h = (CountryCodePicker) findViewById(2131362307);
        this.f = (TextView) findViewById(2131363227);
        this.g = (TextView) findViewById(2131363226);
        this.f13942b = (RelativeLayout) findViewById(2131363167);
        this.f.setText(Activities.getString(2131888125));
        this.g.setText(Activities.getString(2131888122));
        LinearLayout linearLayout = (LinearLayout) findViewById(2131363921);
        if (this.N) {
            a((SocialLoginButton) findViewById(2131362779), (SocialLoginButton) findViewById(2131364544), (SocialLoginButton) findViewById(2131362910), "PhoneLoginScreen");
            linearLayout.setVisibility(0);
        } else {
            linearLayout.setVisibility(8);
        }
        ViewUtils.c(this.f, 2131232047, ThemeUtils.getColor(2131099890));
        ViewUtils.c(this.g, 2131232047, ThemeUtils.getColor(2131099914));
        this.h.setDefaultCountryUsingNameCode(Phone.getCountryRegionProvider().a());
        this.h.setCcpDialogShowPhoneCode(true);
        this.h.e();
        CountryCodePicker countryCodePicker = this.h;
        this.w = "+" + countryCodePicker.r.i;
        ((TextView) findViewById(2131362713)).setText(Activities.getString(2131886829));
        ((TextView) findViewById(2131362333)).setText(Activities.getString(2131887563));
        a(false);
        Phone phone2 = this.O;
        if (phone2 != null) {
            b(phone2);
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
                if ((charSequence.toString().trim().length() - PhoneLoginActivity.this.w.length()) + 1 < 2) {
                    if (!PhoneLoginActivity.this.Q || PhoneLoginActivity.this.R) {
                        ViewUtils.c(PhoneLoginActivity.this.f, 2131232047, ThemeUtils.getColor(2131099890));
                        PhoneLoginActivity.this.f.setClickable(false);
                        PhoneLoginActivity.this.f.setEnabled(false);
                    } else {
                        ViewUtils.c(PhoneLoginActivity.this.g, 2131232047, ThemeUtils.getColor(2131099890));
                        PhoneLoginActivity.this.g.setClickable(false);
                        PhoneLoginActivity.this.g.setEnabled(false);
                    }
                    if (PhoneLoginActivity.this.f13943c.getText().toString().equals("")) {
                        PhoneLoginActivity.this.h.a((String) null);
                    }
                } else if (!PhoneLoginActivity.this.Q || PhoneLoginActivity.this.R) {
                    ViewUtils.c(PhoneLoginActivity.this.f, 2131232047, ThemeUtils.getColor(2131099914));
                    PhoneLoginActivity.this.f.setClickable(true);
                    PhoneLoginActivity.this.f.setEnabled(true);
                } else {
                    ViewUtils.c(PhoneLoginActivity.this.g, 2131232047, ThemeUtils.getColor(2131099914));
                    PhoneLoginActivity.this.g.setClickable(true);
                    PhoneLoginActivity.this.g.setEnabled(true);
                }
                String trim = charSequence.toString().trim();
                String str3 = trim;
                if (com.callapp.framework.util.StringUtils.e(trim, "+")) {
                    str3 = com.callapp.framework.util.StringUtils.a(trim, 1, trim.length());
                }
                if (com.callapp.framework.util.StringUtils.e(str3, "1")) {
                    PhoneLoginActivity.this.h.setDefaultCountryUsingNameCode("US");
                } else if (com.callapp.framework.util.StringUtils.e(str3, "7")) {
                    PhoneLoginActivity.this.h.setDefaultCountryUsingNameCode("RU");
                } else if (com.callapp.framework.util.StringUtils.e(str3, "358")) {
                    PhoneLoginActivity.this.h.setDefaultCountryUsingNameCode("FI");
                } else if (com.callapp.framework.util.StringUtils.e(str3, "44")) {
                    PhoneLoginActivity.this.h.setDefaultCountryUsingNameCode("GB");
                } else {
                    int min = Math.min(4, str3.length());
                    int d2 = PhoneLoginActivity.this.h.d();
                    for (int i4 = 1; i4 <= min; i4++) {
                        try {
                            PhoneLoginActivity.this.h.setDefaultCountryUsingPhoneCode(Integer.parseInt(com.callapp.framework.util.StringUtils.a(str3, 0, i4)));
                        } catch (Exception e2) {
                        }
                        if (d2 != PhoneLoginActivity.this.h.d()) {
                            break;
                        }
                    }
                }
                PhoneLoginActivity.this.h.e();
            }
        };
        this.j = textWatcher;
        this.f13943c.addTextChangedListener(textWatcher);
        this.h.setOnCountryChangeListener(new CountryCodePicker.f() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.4
        });
        this.h.setDialogEventsListener(new CountryCodePicker.c() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.5
            @Override // com.hbb20.CountryCodePicker.c
            public final void a() {
                PhoneLoginActivity phoneLoginActivity = PhoneLoginActivity.this;
                phoneLoginActivity.w = phoneLoginActivity.h.f();
                PhoneLoginActivity.this.a(true);
            }

            @Override // com.hbb20.CountryCodePicker.c
            public final void b() {
                PhoneLoginActivity phoneLoginActivity = PhoneLoginActivity.this;
                phoneLoginActivity.w = phoneLoginActivity.h.f();
                PhoneLoginActivity.this.a(true);
            }
        });
        this.f.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(Constants.REGISTRATION, "clickSendMeSms");
                PhoneLoginActivity.this.f.setBackgroundColor(ThemeUtils.getColor(2131099890));
                PhoneLoginActivity.this.f.setClickable(false);
                PhoneLoginActivity.this.f.setEnabled(false);
                Activities.b(PhoneLoginActivity.this.f13943c);
                PhoneLoginActivity.this.c();
            }
        });
        this.g.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (PhoneLoginActivity.this.Q) {
                    PhoneLoginActivity phoneLoginActivity = PhoneLoginActivity.this;
                    PhoneLoginActivity.b(phoneLoginActivity, phoneLoginActivity.f13943c.getText().toString());
                    return;
                }
                PhoneLoginActivity.i(PhoneLoginActivity.this);
            }
        });
        this.l = (RelativeLayout) findViewById(2131363172);
        ((TextView) findViewById(2131362381)).setText(Activities.getString(2131886827));
        this.m = (EditText) findViewById(2131363107);
        this.n = (EditText) findViewById(2131363108);
        this.o = (EditText) findViewById(2131363109);
        this.p = (EditText) findViewById(2131363110);
        this.q = (EditText) findViewById(2131363111);
        this.r = (EditText) findViewById(2131363112);
        this.s = (EditText) findViewById(2131362963);
        this.t = (TextView) findViewById(2131363421);
        this.u = (TextView) findViewById(2131363420);
        TextView textView2 = (TextView) findViewById(2131363087);
        this.v = textView2;
        textView2.setText(Activities.getString(2131887047));
        this.s.addTextChangedListener(this.S);
        this.m.setOnFocusChangeListener(this);
        this.n.setOnFocusChangeListener(this);
        this.o.setOnFocusChangeListener(this);
        this.p.setOnFocusChangeListener(this);
        this.q.setOnFocusChangeListener(this);
        this.r.setOnFocusChangeListener(this);
        this.m.setOnKeyListener(this);
        this.n.setOnKeyListener(this);
        this.o.setOnKeyListener(this);
        this.p.setOnKeyListener(this);
        this.q.setOnKeyListener(this);
        this.r.setOnKeyListener(this);
        this.s.setOnKeyListener(this);
        this.F = (RelativeLayout) findViewById(2131363168);
        ((TextView) findViewById(2131362839)).setText(Activities.getString(2131886913));
        ((TextView) findViewById(2131362838)).setText(Activities.getString(2131886912));
        this.J = (RelativeLayout) findViewById(2131363169);
        this.K = (TextView) findViewById(2131363219);
        this.L = (ProgressBar) findViewById(2131363218);
        this.M = (CheckBox) findViewById(2131363217);
        b(false);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        SmsReceivedServiceV1.d();
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.PHONE_LOGIN_ACTIVITY);
        CountDownTimer countDownTimer = this.B;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.C;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
        GlideUtils.GifPlayer gifPlayer = this.G;
        if (gifPlayer != null) {
            gifPlayer.b();
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
                ViewUtils.a(this.r, 2131230938, ThemeUtils.getColor(2131100228), (int) Activities.a(3.0f));
                break;
        }
        if (z) {
            setFocus(this.s);
            Activities.a(this.s, 200);
        }
    }

    @Override // com.sinch.verification.core.initiation.response.InitiationListener
    public void onInitializationFailed(Throwable th) {
        this.H = false;
        EditText editText = this.f13943c;
        AnalyticsManager.get().a(Constants.REGISTRATION, "Sinch initiation failed", (editText == null || editText.getText() == null) ? null : this.f13943c.getText().toString());
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.28
            @Override // java.lang.Runnable
            public void run() {
                PhoneLoginActivity.this.a(ErrorType.FLASH_CALL_INIT);
            }
        });
    }

    @Override // com.sinch.verification.core.initiation.response.InitiationListener
    public /* synthetic */ void onInitiated(FlashCallInitializationResponseData flashCallInitializationResponseData) {
        AnalyticsManager.get().a(Constants.REGISTRATION, "Sinch initiation success");
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0 || view.getId() != 2131362963 || i != 67) {
            return false;
        }
        if (this.s.getText().length() == 6) {
            this.r.setText("");
        } else if (this.s.getText().length() == 5) {
            this.q.setText("");
        } else if (this.s.getText().length() == 4) {
            this.p.setText("");
        } else if (this.s.getText().length() == 3) {
            this.o.setText("");
        } else if (this.s.getText().length() == 2) {
            this.n.setText("");
        } else if (this.s.getText().length() == 1) {
            this.m.setText("");
        }
        if (this.s.length() <= 0) {
            return true;
        }
        EditText editText = this.s;
        editText.setText(editText.getText().subSequence(0, this.s.length() - 1));
        EditText editText2 = this.s;
        editText2.setSelection(editText2.getText().length());
        return true;
    }

    @Override // com.sinch.verification.core.verification.response.VerificationListener
    public void onVerificationEvent(VerificationEvent verificationEvent) {
        CLog.a(PhoneLoginActivity.class, "onVerificationEvent: ".concat(String.valueOf(verificationEvent)));
    }

    @Override // com.sinch.verification.core.verification.response.VerificationListener
    public void onVerificationFailed(Throwable th) {
        this.H = false;
        EditText editText = this.f13943c;
        AnalyticsManager.get().a(Constants.REGISTRATION, "Sinch verified failed", (editText == null || editText.getText() == null) ? null : this.f13943c.getText().toString());
        new Task() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.29
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                List<CallLogEntry> a2 = CallLogUtils.a(PhoneLoginActivity.this.I);
                if (CollectionUtils.b(a2)) {
                    for (CallLogEntry callLogEntry : a2) {
                        if (DeviceIdLoader.a(PhoneManager.get().a(callLogEntry.getNumber()), 500) == 0) {
                            AnalyticsManager.get().a(Constants.REGISTRATION, "Sinch incoming call", callLogEntry.getNumber());
                            return;
                        }
                        continue;
                    }
                }
            }
        }.execute();
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.setup.phoneLogin.PhoneLoginActivity.30
            @Override // java.lang.Runnable
            public void run() {
                if (PhoneLoginActivity.this.G != null) {
                    PhoneLoginActivity.this.G.b();
                }
                PhoneLoginActivity.this.a(ErrorType.FLASH_CALL_VERIFICATION);
            }
        });
    }

    @Override // com.sinch.verification.core.verification.response.VerificationListener
    public void onVerified() {
        this.H = false;
        AnalyticsManager.get().a(Constants.REGISTRATION, "Sinch verified successfully");
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.FLASH_SCREEN);
        GlideUtils.GifPlayer gifPlayer = this.G;
        if (gifPlayer != null) {
            gifPlayer.b();
        }
        Intent intent = new Intent();
        Phone enteredPhone = getEnteredPhone();
        intent.putExtra("RESULT_USER_PHONE_NUMBER", enteredPhone.a());
        intent.putExtra("RESULT_USER_CALLAPP_TOKEN", enteredPhone.a());
        intent.putExtra("RESULT_USER_CALLAPP_TOKEN_TYPE", AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH.name());
        setResult(-1, intent);
        finish();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return false;
    }
}
