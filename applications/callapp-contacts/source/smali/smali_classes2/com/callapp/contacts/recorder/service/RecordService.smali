.class public Lcom/callapp/contacts/recorder/service/RecordService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/callapp/contacts/inCallService/AudioModeProvider$AudioModeListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;
    }
.end annotation


# static fields
.field public static final EXTRA_RECORDER_COMMAND_TYPE:Ljava/lang/String; = "EXTRA_RECORDER_COMMAND_TYPE"

.field public static final EXTRA_RECORDER_IS_INCOMING:Ljava/lang/String; = "EXTRA_RECORDER_IS_INCOMING"

.field public static final EXTRA_RECORDER_PHONE_NUMBER:Ljava/lang/String; = "EXTRA_RECORDER_PHONE_NUMBER"

.field public static final EXTRA_RECORDING_TEST_DATA:Ljava/lang/String; = "EXTRA_RECORDING_TEST_DATA"

.field private static final MEDIA_RECORDER_PREPARE_TIME_TO_COMPLETE:I = 0x7d0

.field public static final PRIVATE_NUMBER_STRING:Ljava/lang/String; = "private"

.field private static final RECORDER_AUDIO_ENCODING:I = 0x2

.field private static final RECORDER_CHANNELS:I = 0x10

.field private static final RECORDER_SAMPLE_RATE:I = 0x1f40

.field public static final RECORDING_DISABLED:I = 0x1

.field public static final RECORDING_ENABLED:I = 0x0

.field public static final RECORDING_POST_CALL:I = 0x3

.field public static final RECORDING_TALKING:I = 0x2

.field private static final SAMPLES:S = 0x10s

.field public static final THRESHOLD_MIN_DURATION_TO_SAVE_RECORDS:I = 0x5

.field private static final TIMER_INTERVAL:I = 0x78


# instance fields
.field private audioEncoder:Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

.field private audioFilePath:Ljava/lang/String;

.field private audioRecorder:Landroid/media/AudioRecord;

.field private buffer:[B

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

.field private contactData:Lcom/callapp/contacts/model/contact/ContactData;

.field private currentPhoneNumber:Lcom/callapp/framework/phone/Phone;

.field private currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

.field private final deleteFileLocker:Ljava/lang/Object;

.field private deviceCallVol:Ljava/lang/Integer;

.field private dynamicNormalizer:Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;

.field private final fileSavedFileLock:Ljava/lang/Object;

.field private isIncoming:Z

.field private isOnSpeaker:Z

.field private isReadyToSave:Z

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private memoryBroadcastReceiver:Lcom/callapp/contacts/activity/records/LowDeviceStorageBroadcastReceiver;

.field private final recordStateChangeLock:Ljava/lang/Object;

.field private final recordingLocker:Ljava/lang/Object;

.field private recordingTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

.field private shortBuffer:Ljava/nio/ShortBuffer;

.field private final stopAndReleaseLock:Ljava/lang/Object;

.field private updateHandler:Landroid/os/Handler;

.field private updateHandlerThread:Landroid/os/HandlerThread;

.field private updateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->recordingLocker:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->deleteFileLocker:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->fileSavedFileLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->stopAndReleaseLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->recordStateChangeLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->isReadyToSave:Z

    .line 108
    new-instance v1, Lcom/callapp/contacts/activity/records/LowDeviceStorageBroadcastReceiver;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/records/LowDeviceStorageBroadcastReceiver;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->memoryBroadcastReceiver:Lcom/callapp/contacts/activity/records/LowDeviceStorageBroadcastReceiver;

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->deviceCallVol:Ljava/lang/Integer;

    .line 112
    iput-boolean v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->isOnSpeaker:Z

    .line 147
    new-instance v1, Lcom/callapp/contacts/recorder/service/RecordService$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/service/RecordService$1;-><init>(Lcom/callapp/contacts/recorder/service/RecordService;)V

    iput-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateRunnable:Ljava/lang/Runnable;

    .line 207
    new-instance v1, Lcom/callapp/contacts/recorder/service/RecordService$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/service/RecordService$2;-><init>(Lcom/callapp/contacts/recorder/service/RecordService;)V

    iput-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 125
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->PRE_RECORD:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->IDLE:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    :goto_0
    iput-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    .line 128
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->memoryBroadcastReceiver:Lcom/callapp/contacts/activity/records/LowDeviceStorageBroadcastReceiver;

    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {p0, v3}, Lcom/callapp/contacts/recorder/service/RecordService;->getFileStorageIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 129
    :cond_1
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fi:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 131
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->memoryBroadcastReceiver:Lcom/callapp/contacts/activity/records/LowDeviceStorageBroadcastReceiver;

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {p0, v2}, Lcom/callapp/contacts/recorder/service/RecordService;->getFileStorageIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :catch_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "updateHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateHandlerThread:Landroid/os/HandlerThread;

    .line 138
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 140
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/media/AudioRecord;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/recorder/service/RecordService;)Landroid/os/Handler;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;)Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/recorder/service/RecordService;)Ljava/lang/Object;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->recordStateChangeLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->recordingTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->recordingTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/recorder/service/RecordService;)Ljava/lang/Integer;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->deviceCallVol:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/callapp/contacts/recorder/service/RecordService;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->deviceCallVol:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/framework/phone/Phone;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentPhoneNumber:Lcom/callapp/framework/phone/Phone;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/framework/phone/Phone;)Lcom/callapp/framework/phone/Phone;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentPhoneNumber:Lcom/callapp/framework/phone/Phone;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/recorder/service/RecordService;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->isIncoming:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/callapp/contacts/recorder/service/RecordService;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->isIncoming:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/callapp/contacts/recorder/service/RecordService;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->initRecording()V

    return-void
.end method

.method static synthetic access$1700(Lcom/callapp/contacts/recorder/service/RecordService;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->startRecorder()V

    return-void
.end method

.method static synthetic access$1800(Lcom/callapp/contacts/recorder/service/RecordService;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->releaseContact()V

    return-void
.end method

.method static synthetic access$1902(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p1
.end method

.method static synthetic access$200(Lcom/callapp/contacts/recorder/service/RecordService;)[B
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->buffer:[B

    return-object p0
.end method

.method static synthetic access$2000(Lcom/callapp/contacts/recorder/service/RecordService;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->saveFileIfNeeded()V

    return-void
.end method

.method static synthetic access$2100(Lcom/callapp/contacts/recorder/service/RecordService;ZZ)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/recorder/service/RecordService;->stopAndReleaseRecorder(ZZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/callapp/contacts/recorder/service/RecordService;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->startAudioRecord()V

    return-void
.end method

.method static synthetic access$2300(Lcom/callapp/contacts/recorder/service/RecordService;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->deleteFile()V

    return-void
.end method

.method static synthetic access$2400(Lcom/callapp/contacts/recorder/service/RecordService;Ljava/io/Serializable;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/callapp/contacts/recorder/service/RecordService;->notifyStateAndDataChanged(Ljava/io/Serializable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/recorder/service/RecordService;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->isOnSpeaker:Z

    return p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->dynamicNormalizer:Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/recorder/service/RecordService;[BIS)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/recorder/service/RecordService;->increaseVolumeAndClarity([BIS)V

    return-void
.end method

.method static synthetic access$600(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/encoder/AudioEncoder;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioEncoder:Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/recorder/service/RecordService;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    return-object p0
.end method

.method static synthetic access$702(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/contacts/recorder/enums/RecordConfiguration;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    return-object p1
.end method

.method static synthetic access$800(Lcom/callapp/contacts/recorder/service/RecordService;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->onError()V

    return-void
.end method

.method static synthetic access$900(Lcom/callapp/contacts/recorder/service/RecordService;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private deleteFile()V
    .locals 4

    .line 686
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    const-string v1, "deleteFile()"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 687
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->deleteFileLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 688
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "deleteFile(), CallRecorder file already deleted"

    .line 689
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 690
    monitor-exit v1

    return-void

    .line 693
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    const-string v2, "audioFilePath == null!!!!"

    .line 695
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 696
    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioFilePath:Ljava/lang/String;

    .line 697
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFileStorageIntentFilter(Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 1

    .line 740
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 741
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private getPhoneAsString()Ljava/lang/String;
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentPhoneNumber:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "private"

    :cond_0
    return-object v0
.end method

.method private increaseVolumeAndClarity([BIS)V
    .locals 7

    .line 180
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/16 v0, 0x10

    if-ne p3, v0, :cond_0

    .line 184
    iget-object p3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p3}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 185
    iget-object p3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p3}, Ljava/nio/ShortBuffer;->capacity()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 187
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v2

    int-to-float v2, v2

    const v3, 0x46fffe00    # 32767.0f

    div-float/2addr v2, v3

    .line 189
    iget-object v3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->dynamicNormalizer:Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->a(D)D

    move-result-wide v2

    .line 190
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService;->shortBuffer:Ljava/nio/ShortBuffer;

    const-wide v5, 0x40dfffc000000000L    # 32767.0

    mul-double v2, v2, v5

    double-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v4, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object p3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 194
    iget-object p3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_1

    .line 196
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42fe0000    # 127.0f

    div-float/2addr v2, v3

    .line 198
    iget-object v3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->dynamicNormalizer:Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;

    float-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->a(D)D

    move-result-wide v2

    .line 199
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService;->byteBuffer:Ljava/nio/ByteBuffer;

    const-wide v5, 0x405fc00000000000L    # 127.0

    mul-double v2, v2, v5

    double-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_1
    iget-object p3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 204
    iget-object p3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private initAudioRecorder()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 499
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eU:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    mul-int/lit16 v0, v0, 0x1f40

    .line 505
    iget-object v3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-virtual {v3}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->getAudioSource()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->getSource()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const/16 v3, 0x64

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v4, 0x78

    move v4, v3

    const/16 v3, 0x78

    :goto_1
    mul-int v3, v3, v0

    .line 513
    div-int/lit16 v3, v3, 0x3e8

    mul-int/lit8 v5, v3, 0x2

    const/16 v6, 0x10

    mul-int/lit8 v5, v5, 0x10

    mul-int/lit8 v5, v5, 0x1

    .line 514
    div-int/lit8 v5, v5, 0x8

    .line 515
    invoke-static {v0, v6, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 516
    invoke-static {v0, v6, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 518
    div-int/lit8 v3, v5, 0x4

    .line 519
    const-class v1, Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Increasing buffer size to "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_2
    move v1, v3

    move v9, v5

    .line 522
    new-instance v10, Landroid/media/AudioRecord;

    const/16 v6, 0x10

    const/4 v7, 0x2

    move-object v3, v10

    move v5, v0

    move v8, v9

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v10, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioRecorder:Landroid/media/AudioRecord;

    .line 523
    invoke-virtual {v10}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 529
    new-array v2, v9, [B

    iput-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->buffer:[B

    .line 531
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 532
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 533
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 534
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 536
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->getAudioEncoder()Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioEncoder:Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

    .line 537
    invoke-interface {v2, v0, v9}, Lcom/callapp/contacts/recorder/encoder/AudioEncoder;->a(II)V

    .line 539
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioRecorder:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    .line 540
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    .line 542
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->getVolumeLevel()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizerFactroy;->getDynamicNormalizer(I)Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->dynamicNormalizer:Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;

    return-void

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 525
    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioRecorder:Landroid/media/AudioRecord;

    .line 526
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "AudioRecord initialization failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initMediaRecorder()V
    .locals 2

    .line 489
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 490
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->getAudioSource()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->getSource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 491
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->getOutputFormat()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->getFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 492
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->getAudioEncoderType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 493
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 495
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    return-void
.end method

.method private initRecording()V
    .locals 5

    .line 375
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->recordingLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "init Recording"

    .line 376
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    sget-object v3, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->RECORDING:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-eq v2, v3, :cond_2

    .line 378
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->getPhoneAsString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/callapp/contacts/recorder/service/RecordService;->isIncoming:Z

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/recorder/CallRecorderUtils;->a(Lcom/callapp/contacts/recorder/enums/RecordConfiguration;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioFilePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :try_start_1
    sget-object v2, Lcom/callapp/contacts/recorder/service/RecordService$10;->a:[I

    iget-object v3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-virtual {v3}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->getAudioMethod()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->initAudioRecorder()V

    goto :goto_0

    .line 383
    :cond_1
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->initMediaRecorder()V

    .line 391
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->prepareRecording()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 393
    :try_start_2
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->onError()V

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init Recording error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 397
    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private notifyStateAndDataChanged(Ljava/io/Serializable;)V
    .locals 3

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->ordinal()I

    move-result v1

    const-string v2, "RECORDER_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->recordingTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    const-string v2, "EXTRA_RECORDING_TEST_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p1, :cond_0

    const-string v1, "RECORDER_DATA"

    .line 365
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 367
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private onError()V
    .locals 2

    .line 721
    sget-object v0, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->ERROR:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    const/4 v0, 0x0

    .line 722
    invoke-direct {p0, v0}, Lcom/callapp/contacts/recorder/service/RecordService;->notifyStateAndDataChanged(Ljava/io/Serializable;)V

    .line 724
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->terminateAndEraseFile()V

    const v0, 0x7f120586

    .line 726
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 727
    const-class v1, Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private prepareRecording()V
    .locals 4

    .line 413
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    const-string v1, "prepare Recording"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 415
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/recorder/service/RecordService$10;->a:[I

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->getAudioMethod()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioEncoder:Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioFilePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/callapp/contacts/recorder/encoder/AudioEncoder;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    const-wide/16 v1, 0x7d0

    .line 419
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    .line 428
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prepare Recording error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->onError()V

    return-void
.end method

.method private releaseContact()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    .line 566
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    :cond_0
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 625
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 626
    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method private saveFileIfNeeded()V
    .locals 10

    .line 632
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->fileSavedFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 633
    :try_start_0
    iget-boolean v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->isReadyToSave:Z

    if-eqz v2, :cond_2

    .line 634
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 637
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-virtual {v4}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->isInRecorderTest()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 640
    :cond_0
    iget-boolean v4, p0, Lcom/callapp/contacts/recorder/service/RecordService;->isIncoming:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 642
    :goto_0
    new-instance v6, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-direct {v6}, Lcom/callapp/contacts/model/objectbox/CallRecorder;-><init>()V

    .line 643
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "saveFileIfNeeded audiopath: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 644
    iget-object v7, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentPhoneNumber:Lcom/callapp/framework/phone/Phone;

    iget-object v8, p0, Lcom/callapp/contacts/recorder/service/RecordService;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setPhoneOrIdKey(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v6, v2, v3}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setDuration(J)V

    .line 646
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioFilePath:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setFileName(Ljava/lang/String;)V

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setDate(J)V

    .line 648
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->getPhoneAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setPhoneText(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v6, v4}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setCallType(I)V

    .line 650
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setContactId(J)V

    .line 652
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/recorder/service/RecordService$6;

    invoke-direct {v3, p0, v6}, Lcom/callapp/contacts/recorder/service/RecordService$6;-><init>(Lcom/callapp/contacts/recorder/service/RecordService;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    .line 676
    sget-object v2, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->FILE_READY:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    iput-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    .line 677
    invoke-direct {p0, v6}, Lcom/callapp/contacts/recorder/service/RecordService;->notifyStateAndDataChanged(Ljava/io/Serializable;)V

    const v2, 0x7f120585

    .line 678
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 679
    iput-boolean v5, p0, Lcom/callapp/contacts/recorder/service/RecordService;->isReadyToSave:Z

    .line 682
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static native setRecordingConf(Landroid/media/AudioRecord;IIZ)Z
.end method

.method private startAudioRecord()V
    .locals 2

    .line 752
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/recorder/service/RecordService$8;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/recorder/service/RecordService$8;-><init>(Lcom/callapp/contacts/recorder/service/RecordService;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startRecorder()V
    .locals 10

    .line 437
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->recordingLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    sget-object v3, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->RECORDING:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 442
    :try_start_1
    sget-object v4, Lcom/callapp/contacts/recorder/service/RecordService$10;->a:[I

    iget-object v5, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-virtual {v5}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->getAudioMethod()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 451
    :cond_0
    sget-boolean v4, Lcom/callapp/contacts/CallAppApplication;->a:Z

    if-nez v4, :cond_1

    goto :goto_0

    .line 454
    :cond_1
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateHandler:Landroid/os/Handler;

    new-instance v5, Lcom/callapp/contacts/recorder/service/RecordService$5;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/recorder/service/RecordService$5;-><init>(Lcom/callapp/contacts/recorder/service/RecordService;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    const-string v4, "start media Recorder"

    .line 444
    invoke-static {v0, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 445
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V

    .line 446
    sget-object v4, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->RECORDING:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    iput-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    const/4 v4, 0x0

    .line 447
    invoke-direct {p0, v4}, Lcom/callapp/contacts/recorder/service/RecordService;->notifyStateAndDataChanged(Ljava/io/Serializable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 466
    :try_start_2
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 471
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "Call recorders list"

    const-string v3, "Failed to record"

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->onError()V

    .line 473
    monitor-exit v1

    return-void

    .line 476
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Call recorders list"

    const-string v4, "Record success"

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->fs:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 478
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->fs:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 479
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const-string v5, "CallRecording"

    const-string v6, "create a record"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_4
    const v2, 0x7f120583

    .line 482
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 485
    :cond_5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private stopAndReleaseRecorder(ZZ)V
    .locals 6

    .line 571
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->stopAndReleaseLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "RecordService stopAndReleaseRecorder: "

    .line 572
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 576
    :try_start_1
    sget-object v4, Lcom/callapp/contacts/recorder/service/RecordService$10;->a:[I

    iget-object v5, p0, Lcom/callapp/contacts/recorder/service/RecordService;->configuration:Lcom/callapp/contacts/recorder/enums/RecordConfiguration;

    invoke-virtual {v5}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->getAudioMethod()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 588
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->stopAudioRecord()V

    goto :goto_0

    .line 578
    :cond_1
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService;->mediaRecorder:Landroid/media/MediaRecorder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_2

    .line 579
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 582
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    sget-object v5, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->RECORDING:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-ne v4, v5, :cond_3

    .line 583
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->releaseMediaRecorder()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_4
    const-string v2, "stopAndReleaseRecorder() ,Recording object Exception"

    .line 592
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 596
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v4, :cond_4

    const/4 v5, 0x0

    .line 597
    invoke-virtual {v4, v5}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    .line 598
    iput-object v5, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioRecorder:Landroid/media/AudioRecord;

    :cond_4
    if-eqz p2, :cond_5

    .line 602
    monitor-exit v1

    return-void

    :cond_5
    if-nez v2, :cond_8

    if-eqz p1, :cond_6

    goto :goto_2

    .line 611
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->contactData:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz p1, :cond_7

    .line 612
    iput-boolean v3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->isReadyToSave:Z

    .line 613
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->saveFileIfNeeded()V

    goto :goto_1

    .line 615
    :cond_7
    iput-boolean v3, p0, Lcom/callapp/contacts/recorder/service/RecordService;->isReadyToSave:Z

    .line 617
    :goto_1
    monitor-exit v1

    return-void

    .line 606
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->deleteFile()V

    const-string p1, "stopAndReleaseRecorder exception"

    .line 607
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 608
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 617
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private stopAudioRecord()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    .line 821
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 822
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    sget-object v1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->ERROR:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-eq v0, v1, :cond_0

    .line 824
    sget-object v0, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->IDLE:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 830
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 831
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 834
    :cond_2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 835
    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateHandler:Landroid/os/Handler;

    new-instance v2, Lcom/callapp/contacts/recorder/service/RecordService$9;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/recorder/service/RecordService$9;-><init>(Lcom/callapp/contacts/recorder/service/RecordService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x2710

    .line 848
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    return-void
.end method

.method public static native stopRecordingConf()V
.end method

.method private terminateAndEraseFile()V
    .locals 2

    .line 704
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    const-string v1, "RecordService terminateAndEraseFile"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 705
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/recorder/service/RecordService;->stopAndReleaseRecorder(ZZ)V

    .line 706
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->deleteFile()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 546
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    const-string v1, "RecordService destroy"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->memoryBroadcastReceiver:Lcom/callapp/contacts/activity/records/LowDeviceStorageBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 549
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/service/RecordService;->releaseContact()V

    .line 551
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->updateHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 556
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 559
    :cond_1
    sget-object v0, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->IDLE:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    iput-object v0, p0, Lcom/callapp/contacts/recorder/service/RecordService;->currentState:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    .line 560
    invoke-direct {p0, v1}, Lcom/callapp/contacts/recorder/service/RecordService;->notifyStateAndDataChanged(Ljava/io/Serializable;)V

    return-void
.end method

.method public onAudioMode(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 222
    :goto_0
    iput-boolean p1, p0, Lcom/callapp/contacts/recorder/service/RecordService;->isOnSpeaker:Z

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 711
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " what "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " extra "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 712
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/recorder/service/RecordService$7;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/recorder/service/RecordService$7;-><init>(Lcom/callapp/contacts/recorder/service/RecordService;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 732
    const-class v0, Lcom/callapp/contacts/recorder/service/RecordService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " what "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " extra "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 0

    return-void
.end method

.method public start(Landroid/content/Intent;Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const-string v1, "EXTRA_RECORDER_COMMAND_TYPE"

    .line 236
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/recorder/service/RecordService$4;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/callapp/contacts/recorder/service/RecordService$4;-><init>(Lcom/callapp/contacts/recorder/service/RecordService;Landroid/content/Intent;ILcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/recorder/service/RecordService$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/recorder/service/RecordService$3;-><init>(Lcom/callapp/contacts/recorder/service/RecordService;Landroid/content/Intent;Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
