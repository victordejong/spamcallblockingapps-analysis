.class public Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1;
.super Landroidx/core/app/SafeJobIntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;,
        Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$RegistrationCodeListener;
    }
.end annotation


# static fields
.field private static j:Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$RegistrationCodeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/core/app/SafeJobIntentService;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$RegistrationCodeListener;)V
    .locals 0

    .line 47
    sput-object p0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1;->j:Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$RegistrationCodeListener;

    return-void
.end method

.method private static b(Landroid/content/Intent;)Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;
    .locals 7

    .line 137
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 144
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 145
    array-length v0, p0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    array-length v2, p0

    const/4 v3, 0x0

    move-object v4, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v5, p0, v3

    if-eqz v5, :cond_3

    .line 154
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 157
    :cond_2
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_4
    new-instance p0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_5
    :goto_1
    return-object v1

    :catchall_0
    move-exception p0

    .line 163
    const-class v0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1;->j:Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$RegistrationCodeListener;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 7

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 58
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Sms"

    const-string v2, "SMS received"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1;->b(Landroid/content/Intent;)Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;

    move-result-object v0

    .line 60
    sget-object v2, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1;->j:Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$RegistrationCodeListener;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 61
    iget-object v3, v0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->message:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$RegistrationCodeListener;->a(Ljava/lang/String;)V

    :cond_0
    const-string v2, "Not showing SMS"

    if-eqz v0, :cond_3

    .line 63
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->m:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    iget-object v4, v0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/manager/BlockManager;->a(Lcom/callapp/framework/phone/Phone;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 64
    iget-object v3, v0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->phoneNumber:Ljava/lang/String;

    const-string v4, "phone"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v3, v0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->message:Ljava/lang/String;

    const-string v4, "smsText"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-static {p1}, Lcom/callapp/contacts/model/objectbox/SingleSmsData;->createFromIntent(Landroid/content/Intent;)Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    move-result-object p1

    .line 69
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    const-string v4, "Not showing SMS overlay"

    const-string v5, "keyguard locked"

    invoke-virtual {v3, v1, v4, v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-virtual {v3, v4}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 73
    invoke-static {}, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->a()V

    goto :goto_0

    .line 1115
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$1;

    invoke-direct {v4, p1}, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$1;-><init>(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)V

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 79
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    iget-object v3, v0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    const/16 v3, 0x1f4

    invoke-static {p1, v3}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    .line 83
    new-instance p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    invoke-direct {p1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;-><init>()V

    .line 84
    iget-object v0, v0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$SmsData;->phoneNumber:Ljava/lang/String;

    iput-object v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->TEXT:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    iput-object v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 86
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SMS_MESSAGE:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iput-object v0, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->when:J

    .line 88
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object p1

    .line 90
    invoke-static {}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->get()Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    :try_end_0
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 93
    :catch_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "exception"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez v0, :cond_4

    const-string p1, "no SMS data"

    goto :goto_1

    .line 99
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cant draw overlays"

    goto :goto_1

    .line 101
    :cond_5
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "setup not complete"

    goto :goto_1

    .line 103
    :cond_6
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->m:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "incoming sms disabled"

    goto :goto_1

    :cond_7
    const-string p1, "blocked"

    .line 109
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method
