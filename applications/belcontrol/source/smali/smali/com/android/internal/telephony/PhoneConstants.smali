.class public Lcom/android/internal/telephony/PhoneConstants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneConstants$DataState;,
        Lcom/android/internal/telephony/PhoneConstants$State;
    }
.end annotation


# static fields
.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_ALREADY_INACTIVE:I = 0x4

.field public static final APN_REQUEST_FAILED:I = 0x3

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final APN_TYPE_ALL:Ljava/lang/String; = "*"

.field public static final APN_TYPE_CBS:Ljava/lang/String; = "cbs"

.field public static final APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final APN_TYPE_DUN:Ljava/lang/String; = "dun"

.field public static final APN_TYPE_FOTA:Ljava/lang/String; = "fota"

.field public static final APN_TYPE_HIPRI:Ljava/lang/String; = "hipri"

.field public static final APN_TYPE_IA:Ljava/lang/String; = "ia"

.field public static final APN_TYPE_IMS:Ljava/lang/String; = "ims"

.field public static final APN_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final APN_TYPE_NOT_AVAILABLE:I = 0x2

.field public static final APN_TYPE_SUPL:Ljava/lang/String; = "supl"

.field public static final DATA_APN_KEY:Ljava/lang/String; = "apn"

.field public static final DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final DATA_IFACE_NAME_KEY:Ljava/lang/String; = "iface"

.field public static final DATA_LINK_CAPABILITIES_KEY:Ljava/lang/String; = "linkCapabilities"

.field public static final DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final DATA_NETWORK_ROAMING_KEY:Ljava/lang/String; = "networkRoaming"

.field public static final FAILURE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final NETWORK_UNAVAILABLE_KEY:Ljava/lang/String; = "networkUnvailable"

.field public static final PHONE_IN_ECM_STATE:Ljava/lang/String; = "phoneinECMState"

.field public static final PHONE_NAME_KEY:Ljava/lang/String; = "phoneName"

.field public static final PIN_GENERAL_FAILURE:I = 0x2

.field public static final PIN_PASSWORD_INCORRECT:I = 0x1

.field public static final PIN_RESULT_SUCCESS:I = 0x0

.field public static PRESENTATION_ALLOWED:I = 0x1

.field public static PRESENTATION_PAYPHONE:I = 0x4

.field public static PRESENTATION_RESTRICTED:I = 0x2

.field public static PRESENTATION_UNKNOWN:I = 0x3

.field public static final REASON_LINK_PROPERTIES_CHANGED:Ljava/lang/String; = "linkPropertiesChanged"

.field public static final STATE_CHANGE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final STATE_KEY:Ljava/lang/String; = "state"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
