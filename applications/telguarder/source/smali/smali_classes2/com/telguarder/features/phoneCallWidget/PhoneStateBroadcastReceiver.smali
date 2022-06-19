.class public Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static dumpIntent(Landroid/content/Intent;)V
    .locals 4

    .line 92
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumping Intent start. ACTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    .line 97
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Dumping Intent end"

    .line 101
    invoke-static {p0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getIncomingNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const-string v0, "incoming_number"

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleOutGoingCallEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> Outgoing call detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 112
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->cleanAdNetworkFlowDebugInfo(Z)V

    .line 113
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getPhoneStateCallData(Ljava/lang/String;Z)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 115
    iput-object v2, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    .line 116
    iput-object p2, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallNumber:Ljava/lang/String;

    .line 117
    iput-object v2, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastBlockedCallNumber:Ljava/lang/String;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallTimestamp:J

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallOffHookTimestamp:J

    const/4 v2, 0x2

    .line 120
    iput v2, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallType:I

    .line 121
    iput-boolean v0, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->ring:Z

    .line 122
    iput-boolean v0, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->callReceived:Z

    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$edOIq8wPDuxjfbhNRozJav6ynMo;

    invoke-direct {v1, p2, p1}, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$edOIq8wPDuxjfbhNRozJav6ynMo;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic lambda$handleOutGoingCallEvent$0(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 124
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    invoke-static {p0}, Lcom/telguarder/helpers/contact/ContactUtils;->isTestNumber(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mLastNumberWasTestNumber:Z

    .line 125
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->shouldDoOutgoingPhoneNumberLookup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->OUTGOING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-static {p1, v0, p0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onTelephonyManagerCallstateidle$2(Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;Landroid/content/Context;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    :cond_0
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->shouldDoIncomingPhoneNumberLookup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->shouldDoOutgoingPhoneNumberLookup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    :cond_1
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallNumber:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->openPhoneCallLogIfEnabledBySetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    :cond_2
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->cleanPhoneStateCallData()V

    .line 288
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object p0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->outgoingLookupAllowed:Ljava/lang/Boolean;

    .line 289
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object p0

    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->incomingLookupAllowed:Ljava/lang/Boolean;

    return-void
.end method

.method private sendBlockedNumberNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 203
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "telGuarder_notify_001"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/telguarder/features/main/MainActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    sget-object v3, Lcom/telguarder/helpers/ui/UiHelper$PageType;->BLOCKED_POSTCALL:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const-string v4, "extraOpenPage"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "pageToOpenParameter"

    .line 206
    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v4, v3

    const/4 v3, 0x0

    invoke-static {p1, v4, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v4, 0x7f100035

    .line 210
    invoke-static {p1, v4}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getBlockedNumberInfo(Ljava/lang/String;)Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;

    move-result-object v5

    const-string v6, ", "

    if-eqz v5, :cond_0

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->number:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->reason:Ljava/lang/String;

    invoke-static {v7}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->ofBackendKeyword(Ljava/lang/String;)Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    move-result-object v7

    invoke-virtual {v7}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->displayableNameId()I

    move-result v7

    invoke-static {p1, v7}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/telguarder/features/rateAndFeedback/ReportResult$ReportEntry;->owner:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 216
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v4, 0x7f100177

    .line 217
    invoke-static {p1, v4}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 220
    :goto_0
    new-instance v5, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 222
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f0700c1

    .line 223
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 224
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 225
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p2, 0x2

    .line 226
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p2, 0x1

    .line 227
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 228
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const-string p2, "notification"

    .line 230
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 231
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_1

    .line 232
    new-instance p2, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    const-string v4, "telGuarder"

    invoke-direct {p2, v2, v4, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 235
    :try_start_0
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public endCall(Landroid/content/Context;)Z
    .locals 5

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 172
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "telecom"

    .line 173
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->endCall()Z

    return v1

    :cond_0
    const-string v0, "android.permission.CALL_PHONE"

    .line 179
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 180
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "phone"

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getITelephony"

    new-array v4, v2, [Ljava/lang/Class;

    .line 185
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 187
    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "endCall"

    new-array v4, v2, [Ljava/lang/Class;

    .line 189
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    .line 190
    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 194
    sget-object v0, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneStateReceiver "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method public synthetic lambda$onTelephonyManagerCallstateringing$1$PhoneStateBroadcastReceiver(Ljava/lang/String;Landroid/content/Context;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupIdentificationHiddenNumber()V

    .line 149
    :cond_0
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->getInstance()Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockedNumberManager;->isNumberBlocked(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->endCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iput-object p1, p3, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastBlockedCallNumber:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupIdentificationBlockedNumber()V

    .line 152
    invoke-direct {p0, p2, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->sendBlockedNumberNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object p2

    invoke-virtual {p2, p1, v1, v1}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->saveLastLookedupNumber(Ljava/lang/String;IZ)V

    return-void

    .line 156
    :cond_1
    iput-boolean v1, p3, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->ring:Z

    const/4 v0, 0x0

    .line 157
    iput-object v0, p3, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastBlockedCallNumber:Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object p3

    invoke-static {p1}, Lcom/telguarder/helpers/contact/ContactUtils;->isTestNumber(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p3, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->mLastNumberWasTestNumber:Z

    .line 159
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->shouldDoIncomingPhoneNumberLookup(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_2

    return-void

    .line 162
    :cond_2
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isInstantiated()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->isActive()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 163
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->getInstance()Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->stop()V

    .line 165
    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->INCOMING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-static {p2, p3, p1, v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->show(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "state"

    .line 60
    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    invoke-direct {p0, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->getIncomingNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getPhoneStateCallData(Ljava/lang/String;Z)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object v1

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v1, :cond_1

    goto :goto_2

    .line 66
    :cond_1
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->onTelephonyManagerCallstateringing(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_2
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    iget-boolean v2, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->ring:Z

    if-nez v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-le v2, v3, :cond_3

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->handleOutGoingCallEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->onTelephonyManagerCallstateoffhook(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_4
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastBlockedCallNumber:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastBlockedCallNumber:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 75
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->onTelephonyManagerCallstateidle(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    :cond_6
    :goto_1
    iput-object v0, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallState:Ljava/lang/String;

    nop

    :cond_7
    :goto_2
    return-void
.end method

.method protected onTelephonyManagerCallstateidle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 265
    sget-object v0, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getPhoneStateCallData(Ljava/lang/String;Z)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    iput-object p2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallNumber:Ljava/lang/String;

    .line 269
    iget-wide v1, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallOffHookTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallOffHookTimestamp:J

    sub-long v3, v1, v3

    :cond_1
    iput-wide v3, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallDuration:J

    .line 270
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallState:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 273
    :cond_2
    iget-boolean p2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->ring:Z

    if-eqz p2, :cond_3

    iget-boolean p2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->callReceived:Z

    if-nez p2, :cond_3

    const/4 p2, 0x3

    .line 274
    iput p2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallType:I

    :cond_3
    const/4 p2, 0x0

    .line 276
    iput-boolean p2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->ring:Z

    .line 277
    iput-boolean p2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->callReceived:Z

    .line 278
    invoke-static {p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hide(Landroid/content/Context;)V

    .line 279
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendCallLength(J)V

    .line 280
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object p2

    iget-boolean p2, p2, Lcom/telguarder/features/advertisements/AdvertManager;->mHasPostCallAd:Z

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendKeepaliveAborted(J)V

    .line 281
    :cond_4
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$hPHkNiagnE4t2vgYFSURspgDru0;

    invoke-direct {v1, v0, p1}, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$hPHkNiagnE4t2vgYFSURspgDru0;-><init>(Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;Landroid/content/Context;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 290
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onTelephonyManagerCallstateoffhook(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 244
    sget-object v0, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Off hook "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getPhoneStateCallData(Ljava/lang/String;Z)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallNumber:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallOffHookTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iput-object p2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallNumber:Ljava/lang/String;

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallOffHookTimestamp:J

    .line 249
    iput-boolean v1, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->callReceived:Z

    .line 250
    iget p2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallType:I

    if-ne p2, v1, :cond_1

    .line 251
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->isInstantiated()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object p2

    invoke-virtual {p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->isWidgetVisible()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 252
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->setAutomaticCloseTimer(Landroid/content/Context;Z)V

    goto :goto_0

    .line 254
    :cond_1
    iget p2, v0, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallType:I

    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    .line 255
    invoke-static {p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->hide(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onTelephonyManagerCallstateringing(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> Incoming call detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 138
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->cleanAdNetworkFlowDebugInfo(Z)V

    .line 139
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler;->getPhoneStateCallData(Ljava/lang/String;Z)Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 141
    iput-object v3, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallLookupResult:Lcom/telguarder/features/numberLookup/PhoneNumberLookupResult;

    .line 142
    iput-object p2, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallNumber:Ljava/lang/String;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallTimestamp:J

    const-wide/16 v3, 0x0

    .line 144
    iput-wide v3, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallOffHookTimestamp:J

    .line 145
    iput v2, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->lastCallType:I

    .line 146
    iput-boolean v0, v1, Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;->callReceived:Z

    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$VzB865HJZNK1jecMMHYFDptd_vw;

    invoke-direct {v2, p0, p2, p1, v1}, Lcom/telguarder/features/phoneCallWidget/-$$Lambda$PhoneStateBroadcastReceiver$VzB865HJZNK1jecMMHYFDptd_vw;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneStateBroadcastReceiver;Ljava/lang/String;Landroid/content/Context;Lcom/telguarder/features/phoneCallWidget/PhonecallStateHandler$PhoneStateCallData;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
