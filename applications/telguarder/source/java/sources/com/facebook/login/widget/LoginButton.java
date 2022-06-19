package com.facebook.login.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.content.res.AppCompatResources;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.CallbackManager;
import com.facebook.FacebookButtonBase;
import com.facebook.FacebookCallback;
import com.facebook.FacebookSdk;
import com.facebook.Profile;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.common.C0948R;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.C1057R;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.facebook.login.widget.ToolTipPopup;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton.class */
public class LoginButton extends FacebookButtonBase {
    private static final String TAG = "com.facebook.login.widget.LoginButton";
    private AccessTokenTracker accessTokenTracker;
    private boolean confirmLogout;
    private LoginManager loginManager;
    private String loginText;
    private String logoutText;
    private boolean toolTipChecked;
    private ToolTipMode toolTipMode;
    private ToolTipPopup toolTipPopup;
    private LoginButtonProperties properties = new LoginButtonProperties();
    private String loginLogoutEventName = AnalyticsEvents.EVENT_LOGIN_VIEW_USAGE;
    private ToolTipPopup.Style toolTipStyle = ToolTipPopup.Style.BLUE;
    private long toolTipDisplayTime = 6000;

    /* renamed from: com.facebook.login.widget.LoginButton$3 */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$3.class */
    public static /* synthetic */ class C10683 {
        static final /* synthetic */ int[] $SwitchMap$com$facebook$login$widget$LoginButton$ToolTipMode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ToolTipMode.values().length];
            $SwitchMap$com$facebook$login$widget$LoginButton$ToolTipMode = iArr;
            try {
                iArr[ToolTipMode.AUTOMATIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$facebook$login$widget$LoginButton$ToolTipMode[ToolTipMode.DISPLAY_ALWAYS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$facebook$login$widget$LoginButton$ToolTipMode[ToolTipMode.NEVER_DISPLAY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$LoginButtonProperties.class */
    public static class LoginButtonProperties {
        private DefaultAudience defaultAudience = DefaultAudience.FRIENDS;

        /* renamed from: permissions */
        private List<String> f1660permissions = Collections.emptyList();
        private LoginBehavior loginBehavior = LoginBehavior.NATIVE_WITH_FALLBACK;
        private String authType = ServerProtocol.DIALOG_REREQUEST_AUTH_TYPE;

        LoginButtonProperties() {
        }

        public void clearPermissions() {
            this.f1660permissions = null;
        }

        public String getAuthType() {
            return this.authType;
        }

        public DefaultAudience getDefaultAudience() {
            return this.defaultAudience;
        }

        public LoginBehavior getLoginBehavior() {
            return this.loginBehavior;
        }

        List<String> getPermissions() {
            return this.f1660permissions;
        }

        public void setAuthType(String str) {
            this.authType = str;
        }

        public void setDefaultAudience(DefaultAudience defaultAudience) {
            this.defaultAudience = defaultAudience;
        }

        public void setLoginBehavior(LoginBehavior loginBehavior) {
            this.loginBehavior = loginBehavior;
        }

        public void setPermissions(List<String> list) {
            this.f1660permissions = list;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$LoginClickListener.class */
    public class LoginClickListener implements View.OnClickListener {
        public LoginClickListener() {
            LoginButton.this = r4;
        }

        protected LoginManager getLoginManager() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                LoginManager loginManager = LoginManager.getInstance();
                loginManager.setDefaultAudience(LoginButton.this.getDefaultAudience());
                loginManager.setLoginBehavior(LoginButton.this.getLoginBehavior());
                loginManager.setAuthType(LoginButton.this.getAuthType());
                return loginManager;
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
                return null;
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                LoginButton.this.callExternalOnClickListener(view);
                AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
                if (AccessToken.isCurrentAccessTokenActive()) {
                    performLogout(LoginButton.this.getContext());
                } else {
                    performLogin();
                }
                InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(LoginButton.this.getContext());
                Bundle bundle = new Bundle();
                bundle.putInt("logging_in", currentAccessToken != null ? 0 : 1);
                int i = 0;
                if (AccessToken.isCurrentAccessTokenActive()) {
                    i = 1;
                }
                bundle.putInt("access_token_expired", i);
                internalAppEventsLogger.logEventImplicitly(LoginButton.this.loginLogoutEventName, bundle);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }

        protected void performLogin() {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                LoginManager loginManager = getLoginManager();
                if (LoginButton.this.getFragment() != null) {
                    loginManager.logIn(LoginButton.this.getFragment(), LoginButton.this.properties.f1660permissions);
                } else if (LoginButton.this.getNativeFragment() != null) {
                    loginManager.logIn(LoginButton.this.getNativeFragment(), LoginButton.this.properties.f1660permissions);
                } else {
                    loginManager.logIn(LoginButton.this.getActivity(), LoginButton.this.properties.f1660permissions);
                }
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }

        protected void performLogout(Context context) {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                final LoginManager loginManager = getLoginManager();
                if (!LoginButton.this.confirmLogout) {
                    loginManager.logOut();
                    return;
                }
                String string = LoginButton.this.getResources().getString(C1057R.string.com_facebook_loginview_log_out_action);
                String string2 = LoginButton.this.getResources().getString(C1057R.string.com_facebook_loginview_cancel_action);
                Profile currentProfile = Profile.getCurrentProfile();
                String string3 = (currentProfile == null || currentProfile.getName() == null) ? LoginButton.this.getResources().getString(C1057R.string.com_facebook_loginview_logged_in_using_facebook) : String.format(LoginButton.this.getResources().getString(C1057R.string.com_facebook_loginview_logged_in_as), currentProfile.getName());
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setMessage(string3).setCancelable(true).setPositiveButton(string, new DialogInterface.OnClickListener() { // from class: com.facebook.login.widget.LoginButton.LoginClickListener.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        loginManager.logOut();
                    }
                }).setNegativeButton(string2, (DialogInterface.OnClickListener) null);
                builder.create().show();
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$ToolTipMode.class */
    public enum ToolTipMode {
        AUTOMATIC(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC, 0),
        DISPLAY_ALWAYS("display_always", 1),
        NEVER_DISPLAY("never_display", 2);
        
        public static ToolTipMode DEFAULT = AUTOMATIC;
        private int intValue;
        private String stringValue;

        ToolTipMode(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        public static ToolTipMode fromInt(int i) {
            ToolTipMode[] values;
            for (ToolTipMode toolTipMode : values()) {
                if (toolTipMode.getValue() == i) {
                    return toolTipMode;
                }
            }
            return null;
        }

        public int getValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }
    }

    public LoginButton(Context context) {
        super(context, null, 0, 0, AnalyticsEvents.EVENT_LOGIN_BUTTON_CREATE, AnalyticsEvents.EVENT_LOGIN_BUTTON_DID_TAP);
    }

    public LoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0, AnalyticsEvents.EVENT_LOGIN_BUTTON_CREATE, AnalyticsEvents.EVENT_LOGIN_BUTTON_DID_TAP);
    }

    public LoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0, AnalyticsEvents.EVENT_LOGIN_BUTTON_CREATE, AnalyticsEvents.EVENT_LOGIN_BUTTON_DID_TAP);
    }

    private void checkToolTipSettings() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            int i = C10683.$SwitchMap$com$facebook$login$widget$LoginButton$ToolTipMode[this.toolTipMode.ordinal()];
            if (i == 1) {
                final String metadataApplicationId = Utility.getMetadataApplicationId(getContext());
                FacebookSdk.getExecutor().execute(new Runnable() { // from class: com.facebook.login.widget.LoginButton.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CrashShieldHandler.isObjectCrashing(this)) {
                            return;
                        }
                        try {
                            final FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(metadataApplicationId, false);
                            LoginButton.this.getActivity().runOnUiThread(new Runnable() { // from class: com.facebook.login.widget.LoginButton.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (CrashShieldHandler.isObjectCrashing(this)) {
                                        return;
                                    }
                                    try {
                                        LoginButton.this.showToolTipPerSettings(queryAppSettings);
                                    } catch (Throwable th) {
                                        CrashShieldHandler.handleThrowable(th, this);
                                    }
                                }
                            });
                        } catch (Throwable th) {
                            CrashShieldHandler.handleThrowable(th, this);
                        }
                    }
                });
            } else if (i != 2) {
            } else {
                displayToolTip(getResources().getString(C1057R.string.com_facebook_tooltip_default));
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private void displayToolTip(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ToolTipPopup toolTipPopup = new ToolTipPopup(str, this);
            this.toolTipPopup = toolTipPopup;
            toolTipPopup.setStyle(this.toolTipStyle);
            this.toolTipPopup.setNuxDisplayTime(this.toolTipDisplayTime);
            this.toolTipPopup.show();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private int measureButtonWidth(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            return getCompoundPaddingLeft() + getCompoundDrawablePadding() + measureTextWidth(str) + getCompoundPaddingRight();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    private void parseLoginButtonAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.toolTipMode = ToolTipMode.DEFAULT;
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1057R.styleable.com_facebook_login_view, i, i2);
            this.confirmLogout = obtainStyledAttributes.getBoolean(C1057R.styleable.com_facebook_login_view_com_facebook_confirm_logout, true);
            this.loginText = obtainStyledAttributes.getString(C1057R.styleable.com_facebook_login_view_com_facebook_login_text);
            this.logoutText = obtainStyledAttributes.getString(C1057R.styleable.com_facebook_login_view_com_facebook_logout_text);
            this.toolTipMode = ToolTipMode.fromInt(obtainStyledAttributes.getInt(C1057R.styleable.com_facebook_login_view_com_facebook_tooltip_mode, ToolTipMode.DEFAULT.getValue()));
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void setButtonText() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Resources resources = getResources();
            if (!isInEditMode() && AccessToken.isCurrentAccessTokenActive()) {
                String str = this.logoutText;
                if (str == null) {
                    str = resources.getString(C1057R.string.com_facebook_loginview_log_out_button);
                }
                setText(str);
                return;
            }
            String str2 = this.loginText;
            if (str2 != null) {
                setText(str2);
                return;
            }
            String string = resources.getString(C1057R.string.com_facebook_loginview_log_in_button_continue);
            int width = getWidth();
            String str3 = string;
            if (width != 0) {
                str3 = string;
                if (measureButtonWidth(string) > width) {
                    str3 = resources.getString(C1057R.string.com_facebook_loginview_log_in_button);
                }
            }
            setText(str3);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void showToolTipPerSettings(FetchedAppSettings fetchedAppSettings) {
        if (!CrashShieldHandler.isObjectCrashing(this) && fetchedAppSettings != null) {
            try {
                if (!fetchedAppSettings.getNuxEnabled() || getVisibility() != 0) {
                    return;
                }
                displayToolTip(fetchedAppSettings.getNuxContent());
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }
    }

    public void clearPermissions() {
        this.properties.clearPermissions();
    }

    @Override // com.facebook.FacebookButtonBase
    public void configureButton(Context context, AttributeSet attributeSet, int i, int i2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.configureButton(context, attributeSet, i, i2);
            setInternalOnClickListener(getNewLoginClickListener());
            parseLoginButtonAttributes(context, attributeSet, i, i2);
            if (isInEditMode()) {
                setBackgroundColor(getResources().getColor(C0948R.C0949color.com_facebook_blue));
                this.loginText = "Continue with Facebook";
            } else {
                this.accessTokenTracker = new AccessTokenTracker() { // from class: com.facebook.login.widget.LoginButton.2
                    @Override // com.facebook.AccessTokenTracker
                    protected void onCurrentAccessTokenChanged(AccessToken accessToken, AccessToken accessToken2) {
                        LoginButton.this.setButtonText();
                    }
                };
            }
            setButtonText();
            setCompoundDrawablesWithIntrinsicBounds(AppCompatResources.getDrawable(getContext(), C0948R.C0950drawable.com_facebook_button_icon), (Drawable) null, (Drawable) null, (Drawable) null);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void dismissToolTip() {
        ToolTipPopup toolTipPopup = this.toolTipPopup;
        if (toolTipPopup != null) {
            toolTipPopup.dismiss();
            this.toolTipPopup = null;
        }
    }

    public String getAuthType() {
        return this.properties.getAuthType();
    }

    public DefaultAudience getDefaultAudience() {
        return this.properties.getDefaultAudience();
    }

    @Override // com.facebook.FacebookButtonBase
    public int getDefaultRequestCode() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            return CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    @Override // com.facebook.FacebookButtonBase
    protected int getDefaultStyleResource() {
        return C1057R.style.com_facebook_loginview_default_style;
    }

    public LoginBehavior getLoginBehavior() {
        return this.properties.getLoginBehavior();
    }

    LoginManager getLoginManager() {
        if (this.loginManager == null) {
            this.loginManager = LoginManager.getInstance();
        }
        return this.loginManager;
    }

    protected LoginClickListener getNewLoginClickListener() {
        return new LoginClickListener();
    }

    List<String> getPermissions() {
        return this.properties.getPermissions();
    }

    public long getToolTipDisplayTime() {
        return this.toolTipDisplayTime;
    }

    public ToolTipMode getToolTipMode() {
        return this.toolTipMode;
    }

    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onAttachedToWindow();
            AccessTokenTracker accessTokenTracker = this.accessTokenTracker;
            if (accessTokenTracker == null || accessTokenTracker.isTracking()) {
                return;
            }
            this.accessTokenTracker.startTracking();
            setButtonText();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onDetachedFromWindow();
            AccessTokenTracker accessTokenTracker = this.accessTokenTracker;
            if (accessTokenTracker != null) {
                accessTokenTracker.stopTracking();
            }
            dismissToolTip();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onDraw(canvas);
            if (this.toolTipChecked || isInEditMode()) {
                return;
            }
            this.toolTipChecked = true;
            checkToolTipSettings();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onLayout(z, i, i2, i3, i4);
            setButtonText();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
            int compoundPaddingTop = getCompoundPaddingTop();
            int ceil = (int) Math.ceil(Math.abs(fontMetrics.top) + Math.abs(fontMetrics.bottom));
            int compoundPaddingBottom = getCompoundPaddingBottom();
            Resources resources = getResources();
            String str = this.loginText;
            String str2 = str;
            if (str == null) {
                str2 = resources.getString(C1057R.string.com_facebook_loginview_log_in_button_continue);
                int measureButtonWidth = measureButtonWidth(str2);
                if (resolveSize(measureButtonWidth, i) < measureButtonWidth) {
                    str2 = resources.getString(C1057R.string.com_facebook_loginview_log_in_button);
                }
            }
            int measureButtonWidth2 = measureButtonWidth(str2);
            String str3 = this.logoutText;
            String str4 = str3;
            if (str3 == null) {
                str4 = resources.getString(C1057R.string.com_facebook_loginview_log_out_button);
            }
            setMeasuredDimension(resolveSize(Math.max(measureButtonWidth2, measureButtonWidth(str4)), i), compoundPaddingTop + ceil + compoundPaddingBottom);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onVisibilityChanged(View view, int i) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onVisibilityChanged(view, i);
            if (i == 0) {
                return;
            }
            dismissToolTip();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public void registerCallback(CallbackManager callbackManager, FacebookCallback<LoginResult> facebookCallback) {
        getLoginManager().registerCallback(callbackManager, facebookCallback);
    }

    public void setAuthType(String str) {
        this.properties.setAuthType(str);
    }

    public void setDefaultAudience(DefaultAudience defaultAudience) {
        this.properties.setDefaultAudience(defaultAudience);
    }

    public void setLoginBehavior(LoginBehavior loginBehavior) {
        this.properties.setLoginBehavior(loginBehavior);
    }

    void setLoginManager(LoginManager loginManager) {
        this.loginManager = loginManager;
    }

    public void setLoginText(String str) {
        this.loginText = str;
        setButtonText();
    }

    public void setLogoutText(String str) {
        this.logoutText = str;
        setButtonText();
    }

    public void setPermissions(List<String> list) {
        this.properties.setPermissions(list);
    }

    public void setPermissions(String... strArr) {
        this.properties.setPermissions(Arrays.asList(strArr));
    }

    void setProperties(LoginButtonProperties loginButtonProperties) {
        this.properties = loginButtonProperties;
    }

    public void setPublishPermissions(List<String> list) {
        this.properties.setPermissions(list);
    }

    public void setPublishPermissions(String... strArr) {
        this.properties.setPermissions(Arrays.asList(strArr));
    }

    public void setReadPermissions(List<String> list) {
        this.properties.setPermissions(list);
    }

    public void setReadPermissions(String... strArr) {
        this.properties.setPermissions(Arrays.asList(strArr));
    }

    public void setToolTipDisplayTime(long j) {
        this.toolTipDisplayTime = j;
    }

    public void setToolTipMode(ToolTipMode toolTipMode) {
        this.toolTipMode = toolTipMode;
    }

    public void setToolTipStyle(ToolTipPopup.Style style) {
        this.toolTipStyle = style;
    }

    public void unregisterCallback(CallbackManager callbackManager) {
        getLoginManager().unregisterCallback(callbackManager);
    }
}
