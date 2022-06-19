.class public Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;
.super Ljava/lang/Object;
.source "PhonecallStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneStateCallData"
.end annotation


# instance fields
.field public callReceived:Z

.field public lastBlockedCallNumber:Ljava/lang/String;

.field public lastCallDuration:J

.field public lastCallLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

.field public lastCallNumber:Ljava/lang/String;

.field public lastCallOffHookTimestamp:J

.field public lastCallState:Ljava/lang/String;

.field public lastCallTimestamp:J

.field public lastCallType:I

.field public ring:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->ring:Z

    .line 49
    iput-boolean v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->callReceived:Z

    const-wide/16 v1, 0x0

    .line 50
    iput-wide v1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallTimestamp:J

    .line 51
    iput-wide v1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallDuration:J

    .line 52
    iput-wide v1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallOffHookTimestamp:J

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallNumber:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastBlockedCallNumber:Ljava/lang/String;

    .line 55
    iput v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallType:I

    .line 56
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallState:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    return-void
.end method
