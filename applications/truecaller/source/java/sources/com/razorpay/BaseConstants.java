package com.razorpay;

import proguard.annotation.Keep;
import proguard.annotation.KeepClassMembers;
@Keep
@KeepClassMembers
/* loaded from: classes3-dex2jar.jar:com/razorpay/BaseConstants.class */
public class BaseConstants {
    public static final int BASE_REQUEST_CODE_INTENT = 20;
    public static final String BHIM_PACKAGE_NAME = "in.org.npci.upiapp";
    public static final String CANCEL_PARAM = "/cancel?";
    public static final String CRED_PACKAGE = "com.dreamplug.androidapp";
    public static final String CRED_PKG = "com.dreamplug.androidapp";
    public static final String CRED_URL_SCHEMA = "credpay";
    public static final String DEFAULT_PROGRESS_COLOR = "#4aa3df";
    public static final String DEFAULT_SENDER = "razorpay";
    public static final String DEVELOPMENT = "development";
    public static final String GOOGLEPAY_CLASSNAME = "com.google.android.apps.nbu.paisa.inapp.client.api.PaymentsClient";
    public static final String GOOGLE_PAY_PKG = "com.google.android.apps.nbu.paisa.user";
    public static final int INCOMPATIBLE_PLUGIN = 7;
    public static final int INVALID_OPTIONS = 3;
    public static final String KEY_ID_PARAM = "key_id=";
    public static final String KEY_MISSING_EXCEPTION = "Please set your Razorpay API key in AndroidManifest.xml";
    public static final String METADATA_KEY = "com.razorpay.ApiKey";
    public static final String METADATA_PLUGIN_PREFIX = "com.razorpay.plugin.";
    public static final String NATIVE_OTP_URL = "payments/create/checkout/json";
    public static final int NETWORK_ERROR = 2;
    public static final int PARSING_ERROR = 4;
    public static final int PAYMENT_CANCELED = 0;
    public static final int PAYMENT_ERROR = 5;
    public static final String PAYMENT_PREFERENCES_CACHE_KEY = "rzp_payment_preferences";
    public static final String PRODUCTION = "production";
    public static final String RZP_PAYMENTS_ENDPOINT = "https://api.razorpay.com/v1/payments/";
    public static final String RZP_PROGRESS_COLOR = "#0783B4";
    public static final String RZP_URL = "https://api.razorpay.com";
    public static final int SMS_CONSENT_REQUEST = 1001;
    public static final String STATUS_PARAM = "/status?";
    public static final int TLS_ERROR = 6;
    public static final String TLS_ERROR_MESSAGE = "TLSv1  is not supported for security reasons";
    public static final String TRUE_CALLER_PKG = "com.truecaller";
    public static final String UNKNOWN = "unknown";
    public static final int UPI_REQUEST_CODE = 99;
    public static final String UPI_URL_SCHEMA = "upi://pay";
    public static final String VALIDATION_AMOUNT_ERROR = "Amount should be in paise. Minimum value is 100, which is equal to Re.1";
    public static final String VALIDATION_CARD_CVV_DIGITS = "Card cvv can only have digits 0-9";
    public static final String VALIDATION_CARD_CVV_LENGTH = "Card cvv needs to be in 3 or 4 digits";
    public static final String VALIDATION_CARD_DIGITS_ONLY = "Card number can only have digits 0-9";
    public static final String VALIDATION_CARD_EXPIRTY_DIGITS = "Card expiry month can only have digits 0-9";
    public static final String VALIDATION_CARD_EXPIRY_YEAR = "Card expiry year needs to be two digits";
    public static final String VALIDATION_CARD_LESS_DIGITS = "Card number cannot have lesser than 13 digits or more than 19 digits";
    public static final String VALIDATION_CARD_VALIDITY_ERROR = "Card expiry month needs to be between 01-12";
    public static final String VALIDATION_CONTACT_LENGTH_ERROR = "Contact length should be between [10-15]";
    public static final String VALIDATION_CONTACT_MISSING = "Please add contact element for this payment method";
    public static final String VALIDATION_CONTACT_PLUS_ERROR = "Contact can only include + in the start and following characters: + - ( ) 0-9 space";
    public static final String VALIDATION_CURRENCY_ERROR = "Currency should be 3 characters. Default value is INR";
    public static final String VALIDATION_EMAIL_FAILED = "e-Mail validation failed";
    public static final String VALIDATION_EMAIL_LENGTH = "e-Mail cannot be longer than 255 characters";
    public static final String VALIDATION_METHOD_EMPTY = "method is a required field";
}
