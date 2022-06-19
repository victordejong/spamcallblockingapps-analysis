.class Lcom/callapp/contacts/recorder/service/RecordService$4;
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

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;

.field final synthetic d:Lcom/callapp/contacts/recorder/service/RecordService;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/service/RecordService;Landroid/content/Intent;ILcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    iput-object p2, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->b:I

    iput-object p4, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->c:Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 301
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1100(Lcom/callapp/contacts/recorder/service/RecordService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$100(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->RECORDING:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$100(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->PRE_RECORD:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    .line 303
    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$100(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->ERROR:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-ne v1, v2, :cond_5

    .line 304
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b(Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "audio"

    .line 307
    invoke-static {v3}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 309
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1200c4

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f1200c5

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 310
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1200c6

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f1200c7

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 312
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 314
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->eT:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v4}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1300(Lcom/callapp/contacts/recorder/service/RecordService;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 316
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v4}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1300(Lcom/callapp/contacts/recorder/service/RecordService;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v2, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 317
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v4, v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1302(Lcom/callapp/contacts/recorder/service/RecordService;Ljava/lang/Integer;)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-object v3, v1

    .line 324
    :catch_1
    :cond_1
    :goto_0
    :try_start_3
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->a:Landroid/content/Intent;

    const-string v7, "EXTRA_RECORDER_PHONE_NUMBER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1402(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/framework/phone/Phone;)Lcom/callapp/framework/phone/Phone;

    .line 325
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    iget-object v5, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->a:Landroid/content/Intent;

    const-string v6, "EXTRA_RECORDER_IS_INCOMING"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1502(Lcom/callapp/contacts/recorder/service/RecordService;Z)Z

    .line 326
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v4}, Lcom/callapp/contacts/recorder/service/RecordService;->access$100(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->ERROR:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-eq v4, v5, :cond_3

    .line 328
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v4}, Lcom/callapp/contacts/recorder/service/RecordService;->access$700(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->isInRecorderTest()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->b:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 331
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v4, v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1202(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 333
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    const/4 v4, 0x1

    invoke-static {v1, v4, v2}, Lcom/callapp/contacts/recorder/service/RecordService;->access$2100(Lcom/callapp/contacts/recorder/service/RecordService;ZZ)V

    goto :goto_1

    .line 335
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1, v2, v2}, Lcom/callapp/contacts/recorder/service/RecordService;->access$2100(Lcom/callapp/contacts/recorder/service/RecordService;ZZ)V

    .line 338
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->access$1800(Lcom/callapp/contacts/recorder/service/RecordService;)V

    if-eqz v3, :cond_4

    .line 342
    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 345
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->d:Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/service/RecordService;->destroy()V

    .line 347
    :cond_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService$4;->c:Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;

    if-eqz v0, :cond_6

    .line 350
    invoke-interface {v0}, Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;->a()V

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    .line 347
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
