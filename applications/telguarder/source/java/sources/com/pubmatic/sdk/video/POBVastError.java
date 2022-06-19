package com.pubmatic.sdk.video;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/POBVastError.class */
public class POBVastError {
    public static final int AD_DISPLAY_TIMEOUT = 304;
    public static final int COMPANION_AD_DISPLAY_ERROR = 602;
    public static final int GENERAL_COMPANION_AD_ERROR = 600;
    public static final int GENERAL_LINEAR_ERROR = 400;
    public static final int GENERAL_NONLINEAR_AD_ERROR = 500;
    public static final int GENERAL_WRAPPER_ERROR = 300;
    public static final int INCORRECT_DURATION = 202;
    public static final int INCORRECT_LINEARITY = 201;
    public static final int INCORRECT_SIZE = 203;
    public static final int MEDIA_FILE_DISPLAY_ERROR = 405;
    public static final int MEDIA_FILE_NOT_FOUND = 401;
    public static final int MEDIA_FILE_TIMEOUT = 402;
    public static final int MISSING_AD_CATEGORY = 204;
    public static final int NO_COMPANION_AD_ERROR = 603;
    public static final int NO_NONLINEAR_AD = 502;
    public static final int NO_SUPPORTED_COMPANION_AD_RESOURCE = 604;
    public static final int NO_SUPPORTED_MEDIA_FILE = 403;
    public static final int NO_SUPPORTED_NONLINEAR_RESOURCE = 503;
    public static final int NO_VAST_RESPONSE = 303;
    public static final int RECEIVED_BLOCKED_AD_CATEGORIES = 205;
    public static final int SCHEMA_VALIDATION_ERROR = 101;
    public static final int TRAFFICKING_ERROR = 200;
    public static final int UNDEFINED_ERROR = 900;
    public static final int UNSUPPORTED_COMPANION_AD = 601;
    public static final int UNSUPPORTED_NONLINEAR_AD = 501;
    public static final int UNSUPPORTED_VAST_VERSION = 102;
    public static final int VERIFICATION_EXECUTION_ERROR = 407;
    public static final int WRAPPER_THRESHOLD = 302;
    public static final int WRAPPER_TIMEOUT = 301;
    public static final int XML_PARSING_ERROR = 100;

    /* renamed from: a */
    private int f865a;

    /* renamed from: b */
    private String f866b;

    public POBVastError(int i, String str) {
        String str2;
        this.f865a = i;
        if (i == 405) {
            str2 = "MEDIA_FILE_DISPLAY_ERROR";
        } else if (i == 407) {
            str2 = "VERIFICATION_EXECUTION_ERROR";
        } else if (i != 900) {
            switch (i) {
                case 100:
                    str2 = "XML_PARSING_ERROR";
                    break;
                case 101:
                    str2 = "SCHEMA_VALIDATION_ERROR";
                    break;
                case 102:
                    str2 = "UNSUPPORTED_VAST_VERSION";
                    break;
                default:
                    switch (i) {
                        case 200:
                            str2 = "TRAFFICKING_ERROR";
                            break;
                        case INCORRECT_LINEARITY /* 201 */:
                            str2 = "INCORRECT_LINEARITY";
                            break;
                        case INCORRECT_DURATION /* 202 */:
                            str2 = "INCORRECT_DURATION";
                            break;
                        case INCORRECT_SIZE /* 203 */:
                            str2 = "INCORRECT_SIZE";
                            break;
                        case MISSING_AD_CATEGORY /* 204 */:
                            str2 = "MISSING_AD_CATEGORY";
                            break;
                        case RECEIVED_BLOCKED_AD_CATEGORIES /* 205 */:
                            str2 = "RECEIVED_BLOCKED_AD_CATEGORIES";
                            break;
                        default:
                            switch (i) {
                                case 300:
                                    str2 = "GENERAL_WRAPPER_ERROR";
                                    break;
                                case WRAPPER_TIMEOUT /* 301 */:
                                    str2 = "WRAPPER_TIMEOUT";
                                    break;
                                case WRAPPER_THRESHOLD /* 302 */:
                                    str2 = "WRAPPER_THRESHOLD";
                                    break;
                                case NO_VAST_RESPONSE /* 303 */:
                                    str2 = "NO_VAST_RESPONSE";
                                    break;
                                case AD_DISPLAY_TIMEOUT /* 304 */:
                                    str2 = "AD_DISPLAY_TIMEOUT";
                                    break;
                                default:
                                    switch (i) {
                                        case GENERAL_LINEAR_ERROR /* 400 */:
                                            str2 = "GENERAL_LINEAR_ERROR";
                                            break;
                                        case MEDIA_FILE_NOT_FOUND /* 401 */:
                                            str2 = "MEDIA_FILE_NOT_FOUND";
                                            break;
                                        case MEDIA_FILE_TIMEOUT /* 402 */:
                                            str2 = "MEDIA_FILE_TIMEOUT";
                                            break;
                                        case NO_SUPPORTED_MEDIA_FILE /* 403 */:
                                            str2 = "NO_SUPPORTED_MEDIA_FILE";
                                            break;
                                        default:
                                            switch (i) {
                                                case 500:
                                                    str2 = "GENERAL_NONLINEAR_AD_ERROR";
                                                    break;
                                                case UNSUPPORTED_NONLINEAR_AD /* 501 */:
                                                    str2 = "UNSUPPORTED_NONLINEAR_AD";
                                                    break;
                                                case NO_NONLINEAR_AD /* 502 */:
                                                    str2 = "NO_NONLINEAR_AD";
                                                    break;
                                                case NO_SUPPORTED_NONLINEAR_RESOURCE /* 503 */:
                                                    str2 = "NO_SUPPORTED_NONLINEAR_RESOURCE";
                                                    break;
                                                default:
                                                    switch (i) {
                                                        case GENERAL_COMPANION_AD_ERROR /* 600 */:
                                                            str2 = "GENERAL_COMPANION_AD_ERROR";
                                                            break;
                                                        case UNSUPPORTED_COMPANION_AD /* 601 */:
                                                            str2 = "UNSUPPORTED_COMPANION_AD";
                                                            break;
                                                        case COMPANION_AD_DISPLAY_ERROR /* 602 */:
                                                            str2 = "COMPANION_AD_DISPLAY_ERROR";
                                                            break;
                                                        case NO_COMPANION_AD_ERROR /* 603 */:
                                                            str2 = "NO_COMPANION_AD_ERROR";
                                                            break;
                                                        case NO_SUPPORTED_COMPANION_AD_RESOURCE /* 604 */:
                                                            str2 = "NO_SUPPORTED_COMPANION_AD_RESOURCE";
                                                            break;
                                                        default:
                                                            str2 = "";
                                                            break;
                                                    }
                                            }
                                    }
                            }
                    }
            }
        } else {
            str2 = "UNDEFINED_ERROR";
        }
        this.f866b = "VAST error: " + str2 + ", Message: " + str;
    }

    public int getErrorCode() {
        return this.f865a;
    }

    public String getErrorMessage() {
        return this.f866b;
    }

    public void setErrorCode(int i) {
        this.f865a = i;
    }

    public void setErrorMessage(String str) {
        this.f866b = str;
    }

    public String toString() {
        return "POBVastError{errorCode=" + this.f865a + ", errorMessage='" + this.f866b + "'}";
    }
}
