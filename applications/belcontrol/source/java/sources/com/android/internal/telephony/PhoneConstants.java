package com.android.internal.telephony;
/* loaded from: classes-dex2jar.jar:com/android/internal/telephony/PhoneConstants.class */
public class PhoneConstants {
    public static final int APN_ALREADY_ACTIVE = 0;
    public static final int APN_ALREADY_INACTIVE = 4;
    public static final int APN_REQUEST_FAILED = 3;
    public static final int APN_REQUEST_STARTED = 1;
    public static final String APN_TYPE_ALL = "*";
    public static final String APN_TYPE_CBS = "cbs";
    public static final String APN_TYPE_DEFAULT = "default";
    public static final String APN_TYPE_DUN = "dun";
    public static final String APN_TYPE_FOTA = "fota";
    public static final String APN_TYPE_HIPRI = "hipri";
    public static final String APN_TYPE_IA = "ia";
    public static final String APN_TYPE_IMS = "ims";
    public static final String APN_TYPE_MMS = "mms";
    public static final int APN_TYPE_NOT_AVAILABLE = 2;
    public static final String APN_TYPE_SUPL = "supl";
    public static final String DATA_APN_KEY = "apn";
    public static final String DATA_APN_TYPE_KEY = "apnType";
    public static final String DATA_IFACE_NAME_KEY = "iface";
    public static final String DATA_LINK_CAPABILITIES_KEY = "linkCapabilities";
    public static final String DATA_LINK_PROPERTIES_KEY = "linkProperties";
    public static final String DATA_NETWORK_ROAMING_KEY = "networkRoaming";
    public static final String FAILURE_REASON_KEY = "reason";
    public static final String NETWORK_UNAVAILABLE_KEY = "networkUnvailable";
    public static final String PHONE_IN_ECM_STATE = "phoneinECMState";
    public static final String PHONE_NAME_KEY = "phoneName";
    public static final int PIN_GENERAL_FAILURE = 2;
    public static final int PIN_PASSWORD_INCORRECT = 1;
    public static final int PIN_RESULT_SUCCESS = 0;
    public static int PRESENTATION_ALLOWED = 1;
    public static int PRESENTATION_PAYPHONE = 4;
    public static int PRESENTATION_RESTRICTED = 2;
    public static int PRESENTATION_UNKNOWN = 3;
    public static final String REASON_LINK_PROPERTIES_CHANGED = "linkPropertiesChanged";
    public static final String STATE_CHANGE_REASON_KEY = "reason";
    public static final String STATE_KEY = "state";

    /* loaded from: classes-dex2jar.jar:com/android/internal/telephony/PhoneConstants$DataState.class */
    public enum DataState {
        CONNECTED,
        CONNECTING,
        DISCONNECTED,
        SUSPENDED
    }

    /* loaded from: classes-dex2jar.jar:com/android/internal/telephony/PhoneConstants$State.class */
    public enum State {
        IDLE,
        RINGING,
        OFFHOOK
    }
}
