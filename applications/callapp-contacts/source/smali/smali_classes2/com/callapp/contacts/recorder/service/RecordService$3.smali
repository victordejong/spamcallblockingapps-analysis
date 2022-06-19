.class Lcom/callapp/contacts/recorder/service/RecordService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/service/RecordService;->start(Landroid/content/Intent;Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;

.field final synthetic c:Lcom/callapp/contacts/recorder/service/RecordService;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/service/RecordService;Landroid/content/Intent;Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    iput-object p2, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->b:Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 243
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1100(Lcom/callapp/contacts/recorder/service/RecordService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 244
    :try_start_0
    const-class v1, Lcom/callapp/contacts/recorder/service/RecordService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start RECORDING_TALKING "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$100(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->IDLE:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$100(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->PRE_RECORD:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "RecordService"

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot init while current state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v3}, Lcom/callapp/contacts/recorder/service/RecordService;->access$100(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 246
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->a:Landroid/content/Intent;

    const-string v3, "EXTRA_RECORDING_TEST_DATA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-static {v1, v2}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1202(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 247
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1200(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    new-instance v8, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1200(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getAudioMethod()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    move-result-object v3

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v2}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1200(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getAudioSource()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    move-result-object v4

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v2}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1200(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getOutputFormat()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    move-result-object v5

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v2}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1200(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getVolumeLevel()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v2}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1200(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getForceInCommunicationMode()Z

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;-><init>(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;IZ)V

    invoke-static {v1, v8}, Lcom/callapp/contacts/recorder/service/RecordService;->access$702(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/contacts/recorder/enums/RecordConfiguration;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    goto :goto_1

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    new-instance v2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-direct {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;-><init>()V

    invoke-static {v1, v2}, Lcom/callapp/contacts/recorder/service/RecordService;->access$702(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/contacts/recorder/enums/RecordConfiguration;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    .line 252
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->a(Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "audio"

    .line 254
    invoke-static {v2}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    if-eqz v2, :cond_3

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1200c0

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1200c1

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 257
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1200c2

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1200c3

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 259
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 261
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->eT:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    .line 262
    iget-object v3, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1302(Lcom/callapp/contacts/recorder/service/RecordService;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 264
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    invoke-virtual {v2, v1, v3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :catch_0
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->a:Landroid/content/Intent;

    const-string v5, "EXTRA_RECORDER_PHONE_NUMBER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1402(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/framework/phone/Phone;)Lcom/callapp/framework/phone/Phone;

    .line 272
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    iget-object v3, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->a:Landroid/content/Intent;

    const-string v4, "EXTRA_RECORDER_IS_INCOMING"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v2, v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1502(Lcom/callapp/contacts/recorder/service/RecordService;Z)Z

    .line 274
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1600(Lcom/callapp/contacts/recorder/service/RecordService;)V

    .line 276
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1700(Lcom/callapp/contacts/recorder/service/RecordService;)V

    .line 279
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1800(Lcom/callapp/contacts/recorder/service/RecordService;)V

    .line 281
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v2

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1400(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    sget-object v7, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->DEVICE_ID:Ljava/util/EnumSet;

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object v1

    .line 282
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v2, v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1902(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;

    .line 283
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->c:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$2000(Lcom/callapp/contacts/recorder/service/RecordService;)V

    .line 287
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$3;->b:Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;

    if-eqz v0, :cond_4

    .line 290
    invoke-interface {v0}, Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;->a()V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 287
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
