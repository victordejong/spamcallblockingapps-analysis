package com.callapp.common.authenticators.config;
/* loaded from: classes-dex2jar.jar:com/callapp/common/authenticators/config/AuthenticatorsConfiguration.class */
public class AuthenticatorsConfiguration {
    public static final String CALLAPP_AUTHENTICATOR_NAME = "callAppAuthenticator";
    public static final String FACEBOOK_AUTHENTICATOR_NAME = "facebookAuthenticator";
    public static final String GOOGLE_AUTHENTICATOR_NAME = "googleAuthenticator";
    public static final String PHONE_AUTHENTICATOR_NAME = "phoneAuthenticator";
    public static final String SINCH_AUTHENTICATOR_NAME = "sinchAuthenticator";
    public static final String TELEGRAM_AUTHENTICATOR_NAME = "telegramAuthenticator";
    public static final String USER_GOOGLE_AUTHENTICATOR_NAME = "userGoogleAuthenticator";
    public static final String VK_AUTHENTICATOR_NAME = "vkAuthenticator";
    public static final String WHATSAPP_AUTHENTICATOR_NAME = "whatsAppAuthenticator";

    /* loaded from: classes-dex2jar.jar:com/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES.class */
    public enum AUTHENTICATORS_TYPES {
        PHONE(AuthenticatorsConfiguration.PHONE_AUTHENTICATOR_NAME, "1", "PHONE"),
        FACEBOOK(AuthenticatorsConfiguration.FACEBOOK_AUTHENTICATOR_NAME, "2", "FACEBOOK"),
        GOOGLE(AuthenticatorsConfiguration.GOOGLE_AUTHENTICATOR_NAME, "3", "GOOGLE"),
        NONE("none", "4", "NONE"),
        USER_GOOGLE(AuthenticatorsConfiguration.USER_GOOGLE_AUTHENTICATOR_NAME, "5", "USER_GOOGLE"),
        VK(AuthenticatorsConfiguration.VK_AUTHENTICATOR_NAME, "6", "VK"),
        CALLAPP(AuthenticatorsConfiguration.CALLAPP_AUTHENTICATOR_NAME, "7", "CALLAPP"),
        SINCH(AuthenticatorsConfiguration.SINCH_AUTHENTICATOR_NAME, "8", "SINCH"),
        TELEGRAM(AuthenticatorsConfiguration.TELEGRAM_AUTHENTICATOR_NAME, "9", "TELEGRAM"),
        WHATSAPP(AuthenticatorsConfiguration.WHATSAPP_AUTHENTICATOR_NAME, "10", "WHATSAPP");
        
        public String beanName;
        public String name;
        public String numRep;

        AUTHENTICATORS_TYPES(String str, String str2, String str3) {
            this.beanName = str;
            this.numRep = str2;
            this.name = str3;
        }

        public static AUTHENTICATORS_TYPES fromNumRep(int i) {
            switch (i) {
                case 1:
                    return PHONE;
                case 2:
                    return FACEBOOK;
                case 3:
                    return GOOGLE;
                case 4:
                default:
                    return NONE;
                case 5:
                    return USER_GOOGLE;
                case 6:
                    return VK;
                case 7:
                    return CALLAPP;
                case 8:
                    return SINCH;
                case 9:
                    return TELEGRAM;
                case 10:
                    return WHATSAPP;
            }
        }

        public final int getNumRep() {
            return Integer.valueOf(this.numRep).intValue();
        }
    }
}
