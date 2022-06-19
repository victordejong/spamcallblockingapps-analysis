package com.truecaller.android.sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.truecaller.android.sdk.clients.CustomDataBundle;
import e.m.d.y.n;
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/TruecallerSdkScope.class */
public class TruecallerSdkScope {
    public static final int BUTTON_SHAPE_RECTANGLE = 2048;
    public static final int BUTTON_SHAPE_ROUNDED = 1024;
    public static final int CONSENT_MODE_BOTTOMSHEET = 128;
    public static final int CONSENT_MODE_FULLSCREEN = 8;
    public static final int CONSENT_MODE_POPUP = 4;
    public static final int CTA_TEXT_PREFIX_CONTINUE_WITH = 1;
    public static final int CTA_TEXT_PREFIX_PROCEED_WITH = 2;
    public static final int CTA_TEXT_PREFIX_USE = 0;
    public static final int FOOTER_TYPE_ANOTHER_METHOD = 256;
    public static final int FOOTER_TYPE_CONTINUE = 2;
    public static final int FOOTER_TYPE_LATER = 4096;
    public static final int FOOTER_TYPE_MANUALLY = 512;
    public static final int FOOTER_TYPE_NONE = 64;
    public static final int FOOTER_TYPE_SKIP = 1;
    public static final int LOGIN_TEXT_PREFIX_FOR_NEW_UPDATES = 12;
    public static final int LOGIN_TEXT_PREFIX_TO_CHECKOUT = 4;
    public static final int LOGIN_TEXT_PREFIX_TO_COMPLETE_YOUR_BOOKING = 5;
    public static final int LOGIN_TEXT_PREFIX_TO_COMPLETE_YOUR_PURCHASE = 3;
    public static final int LOGIN_TEXT_PREFIX_TO_CONTINUE = 1;
    public static final int LOGIN_TEXT_PREFIX_TO_CONTINUE_READING = 10;
    public static final int LOGIN_TEXT_PREFIX_TO_CONTINUE_WITH_YOUR_BOOKING = 7;
    public static final int LOGIN_TEXT_PREFIX_TO_GET_DETAILS = 8;
    public static final int LOGIN_TEXT_PREFIX_TO_GET_STARTED = 0;
    public static final int LOGIN_TEXT_PREFIX_TO_GET_UPDATES = 13;
    public static final int LOGIN_TEXT_PREFIX_TO_PLACE_ORDER = 2;
    public static final int LOGIN_TEXT_PREFIX_TO_PROCEED = 11;
    public static final int LOGIN_TEXT_PREFIX_TO_PROCEED_WITH_YOUR_BOOKING = 6;
    public static final int LOGIN_TEXT_PREFIX_TO_SUBSCRIBE = 14;
    public static final int LOGIN_TEXT_PREFIX_TO_SUBSCRIBE_AND_GET_UPDATES = 15;
    public static final int LOGIN_TEXT_PREFIX_TO_VIEW_MORE = 9;
    public static final int LOGIN_TEXT_SUFFIX_PLEASE_LOGIN = 1;
    public static final int LOGIN_TEXT_SUFFIX_PLEASE_LOGIN_SIGNUP = 3;
    public static final int LOGIN_TEXT_SUFFIX_PLEASE_REGISTER = 4;
    public static final int LOGIN_TEXT_SUFFIX_PLEASE_SIGNUP = 2;
    public static final int LOGIN_TEXT_SUFFIX_PLEASE_SIGN_IN = 5;
    public static final int LOGIN_TEXT_SUFFIX_PLEASE_VERIFY_MOBILE_NO = 0;
    public static final int SDK_CONSENT_TITLE_GET_STARTED = 5;
    public static final int SDK_CONSENT_TITLE_LOG_IN = 0;
    public static final int SDK_CONSENT_TITLE_REGISTER = 4;
    public static final int SDK_CONSENT_TITLE_SIGN_IN = 2;
    public static final int SDK_CONSENT_TITLE_SIGN_UP = 1;
    public static final int SDK_CONSENT_TITLE_VERIFY = 3;
    public static final int SDK_OPTION_WITHOUT_OTP = 16;
    public static final int SDK_OPTION_WITH_OTP = 32;
    public final ITrueCallback callback;
    public final int consentTitleOption;
    public final Context context;
    public final CustomDataBundle customDataBundle;
    public final String partnerKey;
    public final int sdkFlag;

    @Keep
    /* loaded from: classes5-dex2jar.jar:com/truecaller/android/sdk/TruecallerSdkScope$Builder.class */
    public static class Builder {
        private int buttonColor;
        private int buttonTextColor;
        private final ITrueCallback callback;
        private final Context context;
        private int ctaTextPrefixOption;
        private int loginTextPrefixOption;
        private int loginTextSuffixOption;
        private final String partnerKey;
        private String privacyPolicyUrl;
        private int sdkFlag;
        private String termsOfServiceUrl;
        private int titleOption;

        public Builder(Context context, ITrueCallback iTrueCallback) {
            ApplicationInfo applicationInfo;
            this.context = context.getApplicationContext();
            this.callback = iTrueCallback;
            try {
                applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            } catch (PackageManager.NameNotFoundException e) {
                applicationInfo = null;
            }
            this.partnerKey = n.U(applicationInfo);
        }

        public TruecallerSdkScope build() throws RuntimeException {
            if (!TextUtils.isEmpty(this.partnerKey)) {
                return new TruecallerSdkScope(this);
            }
            throw new RuntimeException(TrueException.TYPE_PARTNER_KEY);
        }

        public Builder buttonColor(int i) {
            this.buttonColor = i;
            return this;
        }

        public Builder buttonShapeOptions(int i) {
            this.sdkFlag = i | (this.sdkFlag & (-3073));
            return this;
        }

        public Builder buttonTextColor(int i) {
            this.buttonTextColor = i;
            return this;
        }

        public Builder consentMode(int i) {
            this.sdkFlag = i | (this.sdkFlag & (-141));
            return this;
        }

        public Builder consentTitleOption(int i) {
            this.titleOption = i;
            return this;
        }

        public Builder ctaTextPrefix(int i) {
            this.ctaTextPrefixOption = i;
            return this;
        }

        public Builder footerType(int i) {
            this.sdkFlag = i | (this.sdkFlag & (-4932));
            return this;
        }

        public Builder loginTextPrefix(int i) {
            this.loginTextPrefixOption = i;
            return this;
        }

        public Builder loginTextSuffix(int i) {
            this.loginTextSuffixOption = i;
            return this;
        }

        public Builder privacyPolicyUrl(String str) {
            this.privacyPolicyUrl = str;
            return this;
        }

        public Builder sdkOptions(int i) {
            this.sdkFlag = i | (this.sdkFlag & (-49));
            return this;
        }

        public Builder termsOfServiceUrl(String str) {
            this.termsOfServiceUrl = str;
            return this;
        }
    }

    public TruecallerSdkScope(Builder builder) {
        this.context = builder.context;
        this.partnerKey = builder.partnerKey;
        this.sdkFlag = builder.sdkFlag;
        this.callback = builder.callback;
        this.consentTitleOption = builder.titleOption;
        this.customDataBundle = new CustomDataBundle(builder.buttonColor, builder.buttonTextColor, builder.privacyPolicyUrl, builder.termsOfServiceUrl, builder.ctaTextPrefixOption, builder.loginTextPrefixOption, builder.loginTextSuffixOption);
    }
}
