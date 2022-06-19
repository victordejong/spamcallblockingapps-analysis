.class public Lcom/callapp/contacts/manager/phone/PhoneStateManager;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;,
        Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;,
        Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;,
        Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;,
        Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;,
        Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;
    }
.end annotation


# static fields
.field public static final CALL_STATE_OUTGOING_RINGING:I = -0x2

.field public static final CALL_STATE_OUTGOING_RINGING_STRING:Ljava/lang/String; = "OUTGOING"

.field private static final CALL_STATE_UNSET:I = -0x1

.field private static final LUNCHER_SCREEN_DELAY:I = 0x1388

.field private static final MAX_DELAY_TIME_BETWEEN:I = 0x64

.field private static final MAX_OUTGOING_CALL_AUDIO_QUERY_SLEEP_TIME:I = 0x12c

.field private static final MAX_OUTGOING_CALL_AUDIO_QUERY_TIME:I = 0xfa0

.field private static final MAX_TIME_WAIT_FOR_INCOMING_CALL:I = 0x3a98

.field private static final NUM_TO_RETRY_TO_WAIT_FOR_IS_RINGING:I = 0x14

.field private static final OPEN_CALL_SCREEN_DELAY:I = 0x3e8

.field private static final RE_TRY_REGISTER_AUDIO_FOCUS:I = 0x1388

.field private static final TIME_CLEAR_RINGING_FLAG:I = 0x3a98

.field public static blockedCallsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callActionSource:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

.field private final callDataToTelecomCall:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final callDetailsListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/manager/phone/CallDetailsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final callDetailsListenersLock:Ljava/lang/Object;

.field private final callList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/call/CallData;",
            ">;"
        }
    .end annotation
.end field

.field private final callListLock:Ljava/lang/Object;

.field private final callScreeningServiceHandleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telecom/Call$Details;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final callScreeningServiceHandleNonDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/framework/phone/Phone;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final callStateChangedFromTelecomLock:Ljava/lang/Object;

.field private final callStateChangedFromTelephonyManagerLock:Ljava/lang/Object;

.field private conferenceManager:Landroid/telecom/Call;

.field private final contactsByCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/call/CallData;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;>;"
        }
    .end annotation
.end field

.field private currRingerMode:I

.field private currStreamRingVolume:I

.field private currentCallState:Lcom/callapp/contacts/model/call/CallState;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isConferencesActivityVisible:Z

.field private isContactDetailsActivityVisible:Z

.field private isCurrentlyRinging:Z

.field private isFirstUpdateFromTelephonyManager:Z

.field private isIncomingCallOpenedOverlay:Z

.field private isLastCallIncoming:Ljava/lang/Boolean;

.field private isOffhookBeforeOutgoing:Z

.field private isStateBeforeMerge:Z

.field private isVibrating:Z

.field private lastHandledEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastOutgoingRingingPhoneHandled:Lcom/callapp/framework/phone/Phone;

.field private lastStateHandledFromTelephonyManager:I

.field private lastStateHandledGlobally:I

.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/manager/phone/CallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final listenersLock:Ljava/lang/Object;

.field private notificationHandler:Landroid/os/Handler;

.field private notificationHandlerThread:Landroid/os/HandlerThread;

.field private notify:Z

.field private requestAudioFocusResult:I

.field private ringerHandler:Landroid/os/Handler;

.field private ringerHandlerThread:Landroid/os/HandlerThread;

.field private ringerRunnable:Ljava/lang/Runnable;

.field private ringtoneMediaPlayer:Landroid/media/MediaPlayer;

.field private ringtoneMediaPlayerLock:Ljava/lang/Object;

.field private screenStateBeforeRinging:Z

.field private screenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final screenWakeLockLock:Ljava/lang/Object;

.field private shouldShowConference:Z

.field private shouldVibrateWhenRinging:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private textToSpeechWrapper:Lcom/callapp/contacts/manager/TextToSpeechWrapper;

.field private toneGenerator:Landroid/media/ToneGenerator;

.field private updateCallDetails:Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;

.field private updateLastCallStatusTask:Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;

.field private final waitForIncomingCallLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->blockedCallsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 135
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->waitForIncomingCallLock:Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    .line 152
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDataToTelecomCall:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->contactsByCalls:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->listenersLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Lcom/callapp/common/util/Sets;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->listeners:Ljava/util/Collection;

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDetailsListenersLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Lcom/callapp/common/util/Sets;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDetailsListeners:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandlerThread:Landroid/os/HandlerThread;

    .line 165
    new-instance v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/phone/PhoneStateManager$1;)V

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateLastCallStatusTask:Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;

    const/4 v1, 0x1

    .line 166
    iput-boolean v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notify:Z

    const/4 v2, -0x1

    .line 171
    iput v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastStateHandledFromTelephonyManager:I

    .line 172
    iput v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastStateHandledGlobally:I

    .line 173
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callStateChangedFromTelephonyManagerLock:Ljava/lang/Object;

    .line 174
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callStateChangedFromTelecomLock:Ljava/lang/Object;

    .line 175
    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastOutgoingRingingPhoneHandled:Lcom/callapp/framework/phone/Phone;

    .line 176
    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isLastCallIncoming:Ljava/lang/Boolean;

    const/4 v3, 0x0

    .line 177
    iput-boolean v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isOffhookBeforeOutgoing:Z

    .line 178
    iput v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->currRingerMode:I

    .line 179
    iput v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->currStreamRingVolume:I

    .line 180
    iput-boolean v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isFirstUpdateFromTelephonyManager:Z

    .line 181
    new-instance v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateCallDetails:Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;

    .line 185
    sget-object v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->NONE:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callActionSource:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    .line 186
    iput-boolean v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallOpenedOverlay:Z

    .line 190
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringtoneMediaPlayerLock:Ljava/lang/Object;

    .line 192
    iput-boolean v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isVibrating:Z

    .line 194
    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->toneGenerator:Landroid/media/ToneGenerator;

    .line 195
    iput-boolean v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isCurrentlyRinging:Z

    .line 196
    iput v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->requestAudioFocusResult:I

    .line 197
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->screenWakeLockLock:Ljava/lang/Object;

    .line 198
    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 199
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callScreeningServiceHandleMap:Ljava/util/Map;

    .line 200
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callScreeningServiceHandleNonDefaultMap:Ljava/util/Map;

    .line 203
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$1;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerRunnable:Ljava/lang/Runnable;

    .line 1146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastHandledEvents:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isCurrentlyRinging:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isVibrating:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isVibrating:Z

    return p1
.end method

.method static synthetic access$102(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isCurrentlyRinging:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/lang/Object;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringtoneMediaPlayerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Landroid/media/MediaPlayer;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringtoneMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringtoneMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/lang/Object;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->waitForIncomingCallLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/util/Collection;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDetailsListeners:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/lang/Object;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDetailsListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)[I
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallsState()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handleRequestAudioFocus()V

    return-void
.end method

.method static synthetic access$1800(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onCallStateChanged(Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Lcom/callapp/contacts/manager/TextToSpeechWrapper;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->textToSpeechWrapper:Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/TextToSpeechWrapper;)Lcom/callapp/contacts/manager/TextToSpeechWrapper;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->textToSpeechWrapper:Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->screenStateBeforeRinging:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeCallScreenDueToWaitingCall(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/call/CallData;J)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->registerForContactDataChanges(Lcom/callapp/contacts/model/call/CallData;J)V

    return-void
.end method

.method static synthetic access$2302(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notify:Z

    return p1
.end method

.method static synthetic access$2400(Ljava/util/Date;)Z
    .locals 0

    .line 135
    invoke-static {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isDateRecent(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->openCallScreenIfNeeded(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 0

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->startFullDetailsActivity(Ljava/lang/String;Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/util/ArrayList;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->contactsByCalls:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->unRegisterForContactDataChanges(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/telecom/Call;)Ljava/lang/String;
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getPhoneNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/util/Map;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Landroid/os/Handler;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/telecom/Call;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateCallList(Landroid/telecom/Call;)V

    return-void
.end method

.method static synthetic access$700(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->manuallyRingOrVibrate(Lcom/callapp/contacts/model/call/CallData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldVibrateWhenRinging:Z

    return p0
.end method

.method static synthetic access$802(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)Z
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldVibrateWhenRinging:Z

    return p1
.end method

.method static synthetic access$900(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Z
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isShouldVibrateWhenRinging()Z

    move-result p0

    return p0
.end method

.method private acquireScreenWakeLock()V
    .locals 5

    .line 417
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->screenWakeLockLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const-string v1, "power"

    .line 420
    invoke-static {v1}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const v2, 0x3000001a

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 422
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 424
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addCall(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)Lcom/callapp/contacts/model/call/CallData;
    .locals 4

    .line 1490
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const-string v1, "addCall(number: %s, callState: %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1492
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notify:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->startTheServiceAsForeground(Ljava/lang/String;Z)V

    .line 1495
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeEndedCalls()V

    .line 1496
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->getActiveCalls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    .line 1497
    new-instance v1, Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {v1, p1, v0, p2, p3}, Lcom/callapp/contacts/model/call/CallData;-><init>(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)V

    .line 1499
    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result p2

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/model/call/CallData;->setMarkedAsIncognito(Z)V

    .line 1501
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    .line 1502
    invoke-virtual {v1, p1}, Lcom/callapp/contacts/model/call/CallData;->setCallId(Ljava/lang/String;)V

    .line 1503
    iget-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1504
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Calls"

    const-string v2, "addCall"

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "incoming"

    goto :goto_0

    :cond_1
    const-string p3, "outgoing"

    :goto_0
    invoke-virtual {p1, v0, v2, p3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1508
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/model/call/CallData;I)V

    const-wide/16 p1, 0x0

    .line 1509
    invoke-direct {p0, v1, p1, p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->registerForContactDataChanges(Lcom/callapp/contacts/model/call/CallData;J)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 1506
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private addTelecomCall(Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;Landroid/telecom/Call;)Lcom/callapp/contacts/model/call/CallData;
    .locals 7

    .line 1516
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallsState()[I

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ArrayUtils;->a([I)[Z

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/Constants;->CALL_BEFORE_MERGE:[Z

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isStateBeforeMerge:Z

    .line 1517
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getPhoneNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    const-string v2, "addTelecomCall(number: %s, callState: %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1518
    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1519
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v2

    .line 3321
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/16 v6, 0x17

    if-lt v3, v6, :cond_0

    .line 3322
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/sim/SimManager;->getDualSimOperators()Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3323
    invoke-virtual {p3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3324
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Landroid/telecom/PhoneAccountHandle;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v5

    goto :goto_0

    .line 3329
    :cond_0
    sget-object v5, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    .line 1521
    :cond_1
    :goto_0
    new-instance v2, Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {v2, v1, v5, p1, p2}, Lcom/callapp/contacts/model/call/CallData;-><init>(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)V

    .line 1523
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt p1, v3, :cond_2

    .line 1524
    invoke-virtual {p3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1527
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCallerNumberVerificationStatus()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/call/CallData;->setVerificationStatus(I)V

    .line 1532
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/call/CallData;->setMarkedAsIncognito(Z)V

    .line 1534
    invoke-direct {p0, p3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomId(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p1

    .line 1535
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/call/CallData;

    if-eqz v1, :cond_3

    const-string p2, "telecom id already exist "

    .line 1537
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v1

    :cond_3
    if-eqz p1, :cond_6

    .line 1542
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->startTheServiceAsForeground(Ljava/lang/String;Z)V

    .line 1545
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callScreeningServiceHandleMap:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 1547
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/manager/BlockManager;->a(Lcom/callapp/framework/phone/Phone;)Landroid/util/Pair;

    move-result-object v1

    .line 1548
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/model/call/CallData;->setBlocked(Z)V

    goto :goto_1

    .line 1550
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/model/call/CallData;->setBlocked(Z)V

    :goto_1
    const-string v1, "telecom id added "

    .line 1552
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1553
    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/call/CallData;->setCallId(Ljava/lang/String;)V

    .line 1554
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->b(Landroid/telecom/Call;)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/model/call/CallData;->setIsVoiceMail(Z)V

    .line 1555
    invoke-virtual {p3}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/model/call/CallData;->setConferenceManager(Z)V

    .line 1556
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1557
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1558
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDataToTelecomCall:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p3, "Calls"

    const-string v1, "addTelecomCall"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "incoming"

    goto :goto_2

    :cond_5
    const-string p2, "outgoing"

    :goto_2
    invoke-virtual {p1, p3, v1, p2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/model/call/CallData;I)V

    const-wide/16 p1, 0x0

    .line 1562
    invoke-direct {p0, v2, p1, p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->registerForContactDataChanges(Lcom/callapp/contacts/model/call/CallData;J)V

    .line 1563
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onCallDetailsChanged()V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 1560
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_6
    :goto_3
    return-object v2
.end method

.method private callToCallData(Landroid/telecom/Call;)Lcom/callapp/contacts/model/call/CallData;
    .locals 2

    .line 1024
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomId(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1026
    const-class p1, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const-string v0, "something went wrong telecom id is null"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1031
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/call/CallData;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1032
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private cancelNotification(Z)V
    .locals 2

    .line 2431
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$21;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$21;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private createContactLoader(Lcom/callapp/framework/phone/Phone;)V
    .locals 4

    .line 1809
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {p1, v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v0

    .line 1810
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->asyncCreateContactLoaderAndLoad(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    return-void
.end method

.method private findActiveOrBackgroundAndUpdateContactDetails(Z)V
    .locals 1

    .line 772
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getActiveOrBackgroundCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;Z)V

    :cond_0
    return-void
.end method

.method public static get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;
    .locals 1

    .line 2168
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getPhoneStateManager()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    return-object v0
.end method

.method private getCallsState()[I
    .locals 11

    .line 1090
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x17

    if-lt v0, v5, :cond_6

    .line 1091
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1092
    :try_start_0
    iget-object v5, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDataToTelecomCall:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telecom/Call;

    .line 1093
    invoke-virtual {v9}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v10

    if-nez v10, :cond_0

    .line 1094
    :cond_1
    invoke-virtual {v9}, Landroid/telecom/Call;->getState()I

    move-result v9

    if-eq v9, v4, :cond_4

    if-eq v9, v1, :cond_4

    if-eq v9, v2, :cond_3

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1108
    :cond_5
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1110
    :goto_1
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "["

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    new-array v0, v2, [I

    aput v6, v0, v3

    aput v7, v0, v4

    aput v8, v0, v1

    return-object v0
.end method

.method private getInternalSilenceRingerRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 796
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$5;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V

    return-object v0
.end method

.method private getPhoneNumber(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 3

    .line 1040
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 1041
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1043
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "conference number"

    .line 1044
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const p1, 0x7f120222

    .line 1045
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string p1, "phone pumber is null setting as private"

    .line 1047
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const p1, 0x7f120198

    .line 1048
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getStateName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2131
    :cond_0
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-object p1

    .line 2129
    :cond_1
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    return-object p1

    .line 2133
    :cond_2
    sget-object p1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, "OUTGOING"

    return-object p1
.end method

.method private getTelecomId(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 0

    .line 1036
    invoke-static {p1}, Lorg/apache/commons/lang3/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handlePostCall(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 5

    .line 2451
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2452
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getContactDataByCallData(Lcom/callapp/contacts/model/call/CallData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2454
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isCallWaiting()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bm:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isValidNumberToShowCallScreen(Lcom/callapp/contacts/model/call/CallData;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2455
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2456
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNames()Ljava/util/Collection;

    move-result-object v2

    .line 2457
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2458
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fullName"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2460
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    const-string v4, "contactId"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2461
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "postCallData"

    .line 2462
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 2464
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v0

    const-string v2, "isSpammer"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2466
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isBlocked()Z

    move-result p1

    const-string v0, "isBlocked"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 2467
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2468
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private handleRequestAudioFocus()V
    .locals 4

    .line 1203
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const-string v1, "audio"

    invoke-static {v1}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1205
    :try_start_0
    invoke-virtual {v1, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->requestAudioFocusResult:I

    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register to request Audio Focus. Result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->requestAudioFocusResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 1208
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method

.method private incrementNumOfCallsToday()V
    .locals 3

    .line 2552
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cF:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-nez v0, :cond_0

    .line 2554
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2555
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cF:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 2558
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/date/DateUtils;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2560
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 2561
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cF:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 2562
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cH:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 2563
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 2566
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x1

    .line 10039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 2567
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->by:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 2569
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Call number "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private static isDateRecent(Ljava/util/Date;)Z
    .locals 2

    const/16 v0, -0x1e

    const/16 v1, 0xd

    .line 2140
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/date/DateUtils;->a(II)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method private static isInCallAudioMode(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isShouldVibrateWhenRinging()Z
    .locals 3

    const/4 v0, 0x0

    .line 983
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    .line 984
    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    .line 983
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private isValidNumberToShowCallScreen(Lcom/callapp/contacts/model/call/CallData;)Z
    .locals 4

    .line 2244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2245
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2246
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "*"

    invoke-static {v0, v3}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2247
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method static synthetic lambda$onAudioStateChanged$0(Landroid/telecom/CallAudioState;)V
    .locals 5

    .line 223
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    .line 10052
    iget-object v1, v0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b:Landroid/telecom/CallAudioState;

    if-nez v1, :cond_0

    .line 10053
    new-instance v1, Landroid/telecom/CallAudioState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xf

    invoke-direct {v1, v2, v3, v4}, Landroid/telecom/CallAudioState;-><init>(ZII)V

    iput-object v1, v0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->b:Landroid/telecom/CallAudioState;

    .line 10055
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->a(Landroid/telecom/CallAudioState;Z)V

    .line 10056
    invoke-virtual {p0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result p0

    .line 10094
    iput p0, v0, Lcom/callapp/contacts/inCallService/AudioModeProvider;->a:I

    return-void
.end method

.method static synthetic lambda$updateNotificationAndWidget$1()V
    .locals 1

    .line 2279
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2280
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateCallAppInCallNotification()V

    .line 2281
    invoke-static {}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->get()Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->isRegisteredActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2282
    invoke-static {}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->get()Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->a()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2284
    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->a(I)V

    :cond_1
    return-void
.end method

.method private manuallyRingOrVibrate(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 5

    .line 901
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 902
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const-string p1, "PhoneStateManager ringerMode: "

    .line 972
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 915
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_5

    const-string v1, "handleRinger: strating ringtone"

    .line 916
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 922
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object p1

    .line 923
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getPhoneNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 924
    invoke-static {p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Landroid/net/Uri;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    const-string v4, "custom_ringtone"

    invoke-virtual {p1, v4}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 925
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 926
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, p1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 930
    :goto_0
    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    .line 931
    throw v0

    :catch_0
    move-object p1, v1

    .line 930
    :catch_1
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/database/Cursor;)V

    if-nez v1, :cond_3

    .line 935
    :try_start_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    .line 937
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    move-object v1, p1

    goto :goto_2

    .line 940
    :catch_2
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 949
    :try_start_3
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    .line 950
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 951
    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 952
    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 953
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 959
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringtoneMediaPlayerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 960
    :try_start_4
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringtoneMediaPlayer:Landroid/media/MediaPlayer;

    .line 961
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 962
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 964
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isShouldVibrateWhenRinging()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldVibrateWhenRinging:Z

    if-eqz p1, :cond_4

    .line 965
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->startVibrating()V

    :cond_4
    return-void

    :catchall_2
    move-exception p1

    .line 962
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catch_3
    move-exception p1

    .line 955
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void

    .line 907
    :cond_6
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->startVibrating()V

    const-string p1, "handleRinger: starting vibrate"

    .line 908
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_7
    const-string p1, "handleRinger: silent mode"

    .line 911
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private notifyIncomingCall()V
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->waitForIncomingCallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->waitForIncomingCallLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 781
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyListeners(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 1

    const/4 v0, 0x0

    .line 1281
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notifyListeners(Lcom/callapp/contacts/model/call/CallData;Z)V

    return-void
.end method

.method private notifyListeners(Lcom/callapp/contacts/model/call/CallData;Z)V
    .locals 4

    .line 1302
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notify:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    .line 1303
    :cond_0
    new-instance p2, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    .line 1304
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1305
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->listeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/manager/phone/CallStateListener;

    .line 1306
    new-instance v3, Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;

    invoke-direct {v3, p0, v2, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/phone/CallStateListener;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-virtual {p2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    goto :goto_0

    .line 1308
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    invoke-virtual {p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 1308
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private onCallDetailsChanged()V
    .locals 4

    .line 1073
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateCallDetails:Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1074
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateCallDetails:Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onCallStateChanged(Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;)V
    .locals 8

    .line 1638
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    if-eqz p1, :cond_9

    .line 1639
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setDefaultPhoneAppIfNeeded()V

    .line 1640
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "onCallStateChanged return because we are default phone app"

    .line 1641
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 1645
    :cond_0
    iget-object v1, p1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    .line 1646
    iget v2, p1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;->b:I

    .line 1647
    iget-object v3, p1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;->c:Ljava/lang/String;

    .line 1649
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Pulled request from callStateChangedEventQueue: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1651
    iget p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastStateHandledGlobally:I

    const-string v4, ", number: "

    const-string v5, ", eventSource: "

    const/4 v6, -0x2

    if-ne p1, v2, :cond_3

    if-ne v2, v6, :cond_2

    if-ne v2, v6, :cond_3

    .line 1653
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastOutgoingRingingPhoneHandled:Lcom/callapp/framework/phone/Phone;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v3, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1654
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "Already handled state: "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 1659
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastHandledEvents:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_4

    .line 1670
    iget-object v7, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v7, v1, :cond_4

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1671
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "Already handled state from different source: "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getStateName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 1676
    :cond_4
    iput v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastStateHandledGlobally:I

    .line 1677
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastHandledEvents:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    invoke-direct {p0, v2, v3, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->printState(ILjava/lang/String;Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;)V

    .line 1681
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    if-eq v2, v6, :cond_8

    if-eqz v2, :cond_7

    const/4 v0, 0x1

    if-eq v2, v0, :cond_6

    const/4 v0, 0x2

    if-eq v2, v0, :cond_5

    goto :goto_1

    .line 1691
    :cond_5
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onOffHookState(Lcom/callapp/framework/phone/Phone;)V

    return-void

    .line 1688
    :cond_6
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onRingingIncomingState(Lcom/callapp/framework/phone/Phone;)V

    return-void

    .line 1694
    :cond_7
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onIdleState()V

    :goto_1
    return-void

    .line 1685
    :cond_8
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onOutgoingCallStarted(Lcom/callapp/framework/phone/Phone;)V

    return-void

    :cond_9
    const-string p1, "onCallDetailsChanged was called with null callStateChangedEvent !"

    .line 1698
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private onIdleState()V
    .locals 4

    const/4 v0, 0x0

    .line 1882
    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isLastCallIncoming:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 1885
    iput-boolean v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isOffhookBeforeOutgoing:Z

    .line 1887
    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastOutgoingRingingPhoneHandled:Lcom/callapp/framework/phone/Phone;

    .line 1888
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateLastCallStatusTask:Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->cancel()V

    .line 1889
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->getActiveCalls()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1892
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->setSpeakerphoneOn(Z)V

    .line 1894
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    .line 6628
    iput-boolean v1, v0, Lcom/callapp/contacts/manager/phone/PhoneManager;->b:Z

    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1899
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 1900
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1902
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/call/CallData;

    .line 1903
    sget-object v2, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/call/CallData;->setState(Lcom/callapp/contacts/model/call/CallState;)V

    .line 1904
    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handlePostCall(Lcom/callapp/contacts/model/call/CallData;)V

    .line 1905
    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->isCallAnswered()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1906
    :goto_1
    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/model/call/CallData;J)V

    const/4 v2, 0x1

    .line 1907
    invoke-direct {p0, v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notifyListeners(Lcom/callapp/contacts/model/call/CallData;Z)V

    goto :goto_0

    .line 1909
    :cond_2
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->postCall()V

    return-void

    :catchall_0
    move-exception v1

    .line 1900
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onOffHookState(Lcom/callapp/framework/phone/Phone;)V
    .locals 5

    .line 1815
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->f:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x1

    .line 6039
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1816
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->by:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/16 v1, 0x1f4

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1817
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->e:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1819
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isLastCallIncoming:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1821
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getLastCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    goto :goto_0

    .line 1824
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isLastCallIncoming:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 1828
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bm:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1829
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1830
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->waitForCallMode()Z

    move-result p1

    .line 1831
    const-class v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v2, "waitForCallMode returned: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1834
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastOutgoingRingingPhoneHandled:Lcom/callapp/framework/phone/Phone;

    if-eqz p1, :cond_3

    .line 1836
    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addCall(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    .line 1837
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notifyListeners(Lcom/callapp/contacts/model/call/CallData;)V

    goto :goto_0

    .line 1841
    :cond_2
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isOffhookBeforeOutgoing:Z

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 1846
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 1849
    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/model/call/CallData;->setState(Lcom/callapp/contacts/model/call/CallState;)V

    .line 1851
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 1852
    new-instance v2, Lcom/callapp/contacts/manager/phone/PhoneStateManager$10;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$10;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/framework/phone/Phone;)V

    .line 1857
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$10;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 1859
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/callapp/contacts/manager/phone/PhoneStateManager$11;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$11;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1866
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notifyListeners(Lcom/callapp/contacts/model/call/CallData;)V

    .line 1868
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bm:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1870
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;Z)V

    :cond_5
    return-void

    :cond_6
    if-le v1, v0, :cond_7

    .line 1874
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateLastCallStatusTask:Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    :cond_7
    return-void
.end method

.method private onOutgoingCallStarted(Lcom/callapp/framework/phone/Phone;)V
    .locals 4

    .line 1703
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isLastCallIncoming:Ljava/lang/Boolean;

    .line 1704
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastOutgoingRingingPhoneHandled:Lcom/callapp/framework/phone/Phone;

    .line 1706
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->incrementNumOfCallsToday()V

    .line 1708
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isOffhookBeforeOutgoing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1720
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastOutgoingRingingPhoneHandled:Lcom/callapp/framework/phone/Phone;

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addCall(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)Lcom/callapp/contacts/model/call/CallData;

    const/4 p1, 0x0

    .line 1723
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notify:Z

    const/4 p1, 0x1

    .line 1725
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeCallScreenDueToWaitingCall(Z)V

    .line 1726
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateLastCallStatusTask:Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$UpdateLastCallStatusTask;->cancel()V

    return-void

    .line 1709
    :cond_1
    :goto_0
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {p1, v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v0

    .line 1710
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->asyncCreateContactLoaderAndLoad(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    .line 1712
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isOffhookBeforeOutgoing:Z

    if-eqz v0, :cond_2

    .line 1714
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onOffHookState(Lcom/callapp/framework/phone/Phone;)V

    :cond_2
    return-void
.end method

.method private onRingingIncomingState(Lcom/callapp/framework/phone/Phone;)V
    .locals 4

    .line 1731
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isLastCallIncoming:Ljava/lang/Boolean;

    .line 1733
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->incrementNumOfCallsToday()V

    .line 1735
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callScreeningServiceHandleNonDefaultMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1737
    invoke-static {p1}, Lcom/callapp/contacts/manager/BlockManager;->a(Lcom/callapp/framework/phone/Phone;)Landroid/util/Pair;

    move-result-object v0

    .line 1738
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 1739
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v2

    if-nez v2, :cond_0

    .line 1741
    invoke-virtual {p0, p1, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handleBlockedCall(Lcom/callapp/framework/phone/Phone;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 1747
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->createContactLoader(Lcom/callapp/framework/phone/Phone;)V

    .line 1749
    sget-object v2, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addCall(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v2

    .line 1750
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/model/call/CallData;->setBlocked(Z)V

    .line 1752
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dE:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v3, 0x1

    .line 4039
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1753
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hp:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 5039
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1754
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v0

    .line 1755
    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->speakNameIfNeeded(Lcom/callapp/contacts/model/call/CallData;)V

    .line 1757
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    if-lez v0, :cond_2

    if-le v0, v3, :cond_1

    .line 1761
    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeCallScreenDueToWaitingCall(Z)V

    .line 1762
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/call/CallData;->setCallWaiting(Z)V

    .line 1766
    :cond_1
    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notifyListeners(Lcom/callapp/contacts/model/call/CallData;)V

    .line 1767
    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;ZZZ)V

    :cond_2
    return-void
.end method

.method private openCallScreenIfNeeded(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    const-string v0, "EXTRA_OPEN_CONTACT_DETAILS"

    const/4 v1, 0x1

    .line 2401
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2403
    invoke-direct {p0, p2, p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->startFullDetailsActivity(Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 2404
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->acquireScreenWakeLock()V

    return-void

    .line 2410
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateNotificationAndWidget()V

    return-void
.end method

.method private postCall()V
    .locals 4

    const/4 v0, 0x0

    .line 1913
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallOpenedOverlay:Z

    .line 1914
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->textToSpeechWrapper:Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    if-eqz v1, :cond_0

    .line 1915
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/TextToSpeechWrapper;->a()V

    .line 1919
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v1

    .line 7235
    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/callapp/contacts/recorder/CallRecorderManager;->b:Lcom/callapp/contacts/model/call/CallData;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    .line 7261
    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(ILcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    .line 7238
    :cond_1
    iput-object v3, v1, Lcom/callapp/contacts/recorder/CallRecorderManager;->b:Lcom/callapp/contacts/model/call/CallData;

    .line 1921
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->cancelNotification(Z)V

    .line 1923
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object v1

    .line 8071
    monitor-enter v1

    .line 8072
    :try_start_0
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->a()V

    .line 8073
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1925
    invoke-static {}, Lcom/callapp/contacts/manager/ProximityManager;->get()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/ProximityManager;->a()V

    .line 1927
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeEndedCalls()V

    .line 1929
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->unregisterAllContactData()V

    .line 1931
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->restoreRingerMode()V

    const/4 v1, 0x1

    .line 1934
    iput-boolean v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notify:Z

    .line 1937
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isCurrentlyRinging:Z

    .line 1939
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->h:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1940
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 1943
    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1945
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->retryRequestAudioFocusIfNeeded()V

    .line 1948
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->internalSilenceRinger()V

    .line 1951
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callScreeningServiceHandleMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1952
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callScreeningServiceHandleNonDefaultMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1953
    iput-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    .line 1955
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a()V

    .line 1957
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setInRecorderTestMode(Z)V

    .line 1958
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setRecorderTestRawNumber(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1961
    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->a(I)V

    return-void

    :catchall_0
    move-exception v0

    .line 8073
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private printCalls(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .line 1138
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Call in Confrence"

    .line 1139
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call;

    .line 1141
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private printState(ILjava/lang/String;Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;)V
    .locals 10

    .line 2099
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CALL_STATE: [%s], number: [%s], eventSource: [%s]"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    .line 2100
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getStateName(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object p2, v3, p1

    const/4 p2, 0x2

    aput-object p3, v3, p2

    invoke-static {v0, v1, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2101
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "printCalls:\n"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2104
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2105
    :try_start_0
    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/model/call/CallData;

    const-string v7, "Call #%s {number: %s, state: %s}\n"

    new-array v8, v2, [Ljava/lang/Object;

    add-int/lit8 v9, v5, 0x1

    .line 2106
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-virtual {v6}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    aput-object v5, v8, p1

    invoke-virtual {v6}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v5

    aput-object v5, v8, p2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v9

    goto :goto_0

    .line 2108
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "printStateHistory:\n"

    .line 2109
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastHandledEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const-string v5, "\nType: %s, eventSource: %s, number %s"

    new-array v6, v2, [Ljava/lang/Object;

    .line 2111
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v7, v6, p1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v3, v6, p2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2113
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 2108
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method private registerForContactDataChanges(Lcom/callapp/contacts/model/call/CallData;J)V
    .locals 1

    .line 2475
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/call/CallData;J)V

    .line 2498
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$22;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private releaseScreenWakeLock()V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->screenWakeLockLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 430
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 432
    :try_start_1
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 434
    :try_start_2
    const-class v2, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 437
    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->screenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 439
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private removeCall(Ljava/lang/String;)V
    .locals 2

    .line 1331
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1332
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/call/CallData;

    .line 1334
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDataToTelecomCall:Ljava/util/Map;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1335
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDataToTelecomCall:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeCallScreenDueToWaitingCall(Z)V
    .locals 4

    .line 1481
    new-instance v0, Lcom/callapp/contacts/model/call/CallData;

    sget-object v1, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    sget-object v2, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/model/call/CallData;-><init>(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notifyListeners(Lcom/callapp/contacts/model/call/CallData;Z)V

    if-eqz p1, :cond_0

    .line 1483
    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->cancelNotification(Z)V

    :cond_0
    return-void
.end method

.method private removeEndedCalls()V
    .locals 6

    .line 1314
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1315
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1316
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1317
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/call/CallData;

    .line 1318
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/model/call/CallState;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1319
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1320
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1321
    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDataToTelecomCall:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    :cond_1
    const-class v3, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " phone "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " removed"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 1326
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private restoreRingerMode()V
    .locals 3

    .line 2005
    iget v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->currRingerMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2006
    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->setRingerMode(I)V

    .line 2007
    iput v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->currRingerMode:I

    .line 2010
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->currStreamRingVolume:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    .line 2011
    invoke-static {v2, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->setStreamVolume(II)V

    .line 2012
    iput v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->currStreamRingVolume:I

    :cond_1
    return-void
.end method

.method private retryRequestAudioFocusIfNeeded()V
    .locals 4

    .line 1192
    iget v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->requestAudioFocusResult:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$7;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$7;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setCallAsFirstCallInCallList(Landroid/telecom/Call;)V
    .locals 4

    .line 757
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomId(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p1

    .line 758
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/call/CallData;

    if-eqz v1, :cond_0

    .line 762
    new-instance v2, Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 763
    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 764
    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 767
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method private setRecorderTestData(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 2

    .line 724
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 726
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isConnectingOrOutgoing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setRecorderTestRawNumber(Ljava/lang/String;)V

    return-void

    .line 732
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isTalking()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 734
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setInRecorderTestMode(Z)V

    :cond_1
    return-void
.end method

.method private showBlockedNotification()V
    .locals 2

    .line 1800
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$9;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$9;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V

    const/16 v1, 0x1388

    .line 1805
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$9;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private showCallScreen(Lcom/callapp/contacts/model/call/CallData;ZZZ)V
    .locals 11

    .line 2257
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bm:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2258
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    move-result-object v0

    .line 9065
    monitor-enter v0

    .line 9066
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;->get()Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/keyguard/LockscreenKeyguardManager;->a()V

    .line 9067
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2261
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2262
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v2, v3}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v7

    const-wide/16 v3, 0x0

    .line 2263
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v10}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fillIntentWithCallData(Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    const-string v2, "EXTRA_SHOW_KEYPAD"

    .line 2264
    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "isBlocked"

    .line 2265
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isBlocked()Z

    move-result v2

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2266
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p2

    sget-object v2, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    if-ne p2, v2, :cond_2

    const-string p2, "isIncoming"

    .line 2267
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const-string p2, "EXTRA_IS_CALL_WAITING"

    .line 2269
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isCallWaiting()Z

    move-result v2

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2270
    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "EXTRA_INCOGNITO_CALL"

    .line 2271
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const-string p1, "EXTRA_OPEN_CONTACT_DETAILS"

    .line 2273
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2274
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, v0, p1, p4}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallScreen(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private speakNameIfNeeded(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 4

    .line 2051
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    return-void

    .line 2055
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 2056
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 2060
    :cond_1
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->c:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    const-string p1, "Not saying name because speakName is disabled"

    .line 2061
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 2065
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isBlocked()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Not saying name because speakName is blocked"

    .line 2066
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 2076
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getRingerMode()I

    move-result p1

    if-eqz p1, :cond_5

    if-ne p1, v2, :cond_4

    goto :goto_0

    .line 2082
    :cond_4
    new-instance p1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$14;

    invoke-direct {p1, p0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$14;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/framework/phone/Phone;)V

    .line 2095
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$14;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void

    :cond_5
    :goto_0
    const-string p1, "Not saying name because in silent/vibrate mode"

    .line 2078
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private startFullDetailsActivity(Ljava/lang/String;Landroid/content/Intent;Z)V
    .locals 10

    .line 2416
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->isStartedFromACall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2417
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {p1, v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v4

    if-nez p3, :cond_0

    .line 2418
    iget-boolean p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isContactDetailsActivityVisible:Z

    if-nez p1, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 2419
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "Incoming/outgoing Call"

    move-object v3, p2

    move v5, p3

    invoke-static/range {v2 .. v9}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->startFullDetailsActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Z)Z

    return-void
.end method

.method private startTheServiceAsForeground(Ljava/lang/String;Z)V
    .locals 4

    .line 2423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.callapp.contacts.ACTION_START_CALL_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/service/CallAppService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone"

    .line 2424
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isIncoming"

    .line 2425
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2427
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, v0, p2}, Lcom/callapp/contacts/service/CallAppService;->a(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method private startVibrating()V
    .locals 5

    const/4 v0, 0x1

    .line 991
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isVibrating:Z

    .line 992
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, 0x3

    new-array v1, v1, [J

    .line 993
    fill-array-data v1, :array_0

    .line 994
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    .line 995
    invoke-static {v1, v3}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_0

    .line 997
    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 1000
    :goto_0
    iput-boolean v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldVibrateWhenRinging:Z

    return-void

    :array_0
    .array-data 8
        0x0
        0x3e8
        0x3e8
    .end array-data
.end method

.method private telephonyOnCallStateChanged(ILjava/lang/String;)V
    .locals 6

    .line 1581
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callStateChangedFromTelephonyManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1582
    :try_start_0
    iget-boolean v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isFirstUpdateFromTelephonyManager:Z

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 1583
    iput-boolean v5, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isFirstUpdateFromTelephonyManager:Z

    const-string v2, "PhoneStateManager.onCallStateChanged first update from TelephonyManager called with PHONE_NUMBER = [%s], STATE = [%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    .line 1584
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getStateName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v0, v2, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1585
    monitor-exit v1

    return-void

    :cond_0
    const-string v2, "PhoneStateManager.onCallStateChanged called with PHONE_NUMBER = [%s], STATE = [%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    .line 1587
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getStateName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v2, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1589
    iget v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastStateHandledFromTelephonyManager:I

    if-ne v2, p1, :cond_1

    const-string p2, "Already handled state from TelephonyManager: "

    .line 1590
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1591
    monitor-exit v1

    return-void

    .line 1594
    :cond_1
    iput p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastStateHandledFromTelephonyManager:I

    .line 1596
    sget-object v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;->TELEPHONY_MANAGER:Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    invoke-virtual {p0, v0, p1, p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onCallStateChanged(Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;ILjava/lang/String;)V

    .line 1597
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private translateState(I)Lcom/callapp/contacts/model/call/CallState;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    .line 1132
    sget-object p1, Lcom/callapp/contacts/model/call/CallState;->NO_CALLS:Lcom/callapp/contacts/model/call/CallState;

    return-object p1

    .line 1119
    :cond_0
    sget-object p1, Lcom/callapp/contacts/model/call/CallState;->CONNECTING:Lcom/callapp/contacts/model/call/CallState;

    return-object p1

    .line 1128
    :cond_1
    sget-object p1, Lcom/callapp/contacts/model/call/CallState;->DISCONNECTED:Lcom/callapp/contacts/model/call/CallState;

    return-object p1

    .line 1125
    :cond_2
    sget-object p1, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    return-object p1

    .line 1130
    :cond_3
    sget-object p1, Lcom/callapp/contacts/model/call/CallState;->ON_HOLD:Lcom/callapp/contacts/model/call/CallState;

    return-object p1

    .line 1123
    :cond_4
    sget-object p1, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    return-object p1

    .line 1121
    :cond_5
    sget-object p1, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    return-object p1
.end method

.method private unRegisterForContactDataChanges(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 2502
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    return-void
.end method

.method private unregisterAllContactData()V
    .locals 3

    .line 1386
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->contactsByCalls:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1387
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->contactsByCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1388
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->unRegisterForContactDataChanges(Lcom/callapp/contacts/model/contact/ContactData;)V

    goto :goto_0

    .line 1390
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->contactsByCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1391
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateCallList(Landroid/telecom/Call;)V
    .locals 11

    .line 444
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callStateChangedFromTelecomLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_0
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->translateState(I)Lcom/callapp/contacts/model/call/CallState;

    move-result-object v2

    iput-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->currentCallState:Lcom/callapp/contacts/model/call/CallState;

    .line 446
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callToCallData(Landroid/telecom/Call;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v2

    .line 447
    iget-boolean v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->screenStateBeforeRinging:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isInDriveModeIncoming()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 448
    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callActionSource:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    sget-object v6, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->ACTIVITY:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    if-eq v3, v6, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v3

    if-le v3, v5, :cond_1

    iget-boolean v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isContactDetailsActivityVisible:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isConferencesActivityVisible:Z

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eqz v2, :cond_1d

    .line 450
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->translateState(I)Lcom/callapp/contacts/model/call/CallState;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/callapp/contacts/model/call/CallData;->setState(Lcom/callapp/contacts/model/call/CallState;)V

    .line 451
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v8

    if-eq v8, v6, :cond_18

    if-eq v8, v7, :cond_e

    const/4 v6, 0x7

    if-eq v8, v6, :cond_4

    const/16 p1, 0xa

    if-eq v8, p1, :cond_3

    goto/16 :goto_6

    .line 456
    :cond_3
    monitor-exit v1

    return-void

    .line 458
    :cond_4
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_5

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v6

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 459
    :goto_2
    invoke-static {v2, v6, v7}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;->a(Lcom/callapp/contacts/model/call/CallData;J)V

    .line 460
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->releaseScreenWakeLock()V

    .line 462
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz p1, :cond_6

    .line 463
    invoke-virtual {p1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 466
    :cond_6
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeCall(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "TelecommCallCallback STATE_DISCONNECTED post call"

    .line 468
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 470
    sget-object p1, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/model/call/CallData;->setState(Lcom/callapp/contacts/model/call/CallState;)V

    .line 471
    invoke-direct {p0, v2, v5}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notifyListeners(Lcom/callapp/contacts/model/call/CallData;Z)V

    .line 472
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onCallDetailsChanged()V

    .line 473
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->postCall()V

    .line 474
    monitor-exit v1

    return-void

    :cond_7
    if-nez v3, :cond_9

    .line 477
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getIsIncomingCallOpenedOverlay()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 p1, 0x1

    .line 479
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "TelecommCallCallback STATE_DISCONNECTED phone number: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->isConferenceManager()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 481
    iput-boolean v4, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldShowConference:Z

    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    .line 484
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->findActiveOrBackgroundAndUpdateContactDetails(Z)V

    .line 485
    monitor-exit v1

    return-void

    .line 488
    :cond_a
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getOldState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/model/call/CallState;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 490
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 494
    :cond_b
    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    if-eqz v3, :cond_d

    .line 495
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAllCallsInConference()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "TelecommCallCallback STATE_DISCONNECTED all calls inside conference, open conference screen"

    .line 496
    invoke-static {v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 498
    iput-boolean v5, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldShowConference:Z

    .line 500
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationManager;->e()V

    if-eqz p1, :cond_1c

    .line 502
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->startConferenceActivity(Landroid/content/Context;Z)V

    goto/16 :goto_6

    .line 506
    :cond_c
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->findActiveOrBackgroundAndUpdateContactDetails(Z)V

    goto/16 :goto_6

    .line 510
    :cond_d
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->findActiveOrBackgroundAndUpdateContactDetails(Z)V

    goto/16 :goto_6

    .line 553
    :cond_e
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->releaseScreenWakeLock()V

    .line 555
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz p1, :cond_f

    .line 556
    invoke-virtual {p1}, Landroid/media/ToneGenerator;->stopTone()V

    .line 559
    :cond_f
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->internalSilenceRinger()V

    .line 561
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a()V

    .line 563
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->isConferenceManager()Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "TelecommCallCallback STATE_ACTIVE conference manager is active"

    .line 564
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 565
    iput-boolean v5, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldShowConference:Z

    .line 566
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/NotificationManager;->e()V

    if-eqz v3, :cond_10

    .line 568
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->startConferenceActivity(Landroid/content/Context;Z)V

    .line 570
    :cond_10
    monitor-exit v1

    return-void

    .line 572
    :cond_11
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getOldState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallState;->isIncoming()Z

    move-result p1

    .line 573
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getOldState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/model/call/CallState;->isOnHold()Z

    move-result v6

    .line 574
    iget-object v7, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    if-eqz v7, :cond_15

    .line 575
    iget-boolean v7, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldShowConference:Z

    if-nez v7, :cond_14

    if-nez v6, :cond_12

    if-eqz p1, :cond_14

    .line 577
    :cond_12
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isCallDataInsideConference(Lcom/callapp/contacts/model/call/CallData;)Z

    move-result v4

    if-nez v4, :cond_17

    if-eqz p1, :cond_13

    .line 580
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 582
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "TelecommCallCallback STATE_ACTIVE swap from conference to call "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0, v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;Z)V

    goto :goto_5

    .line 587
    :cond_14
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object p1

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getContactDataByCallData(Lcom/callapp/contacts/model/call/CallData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v5, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/model/contact/ContactData;ZZ)V

    goto :goto_5

    :cond_15
    if-nez p1, :cond_16

    if-eqz v6, :cond_17

    .line 591
    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "TelecommCallCallback STATE_ACTIVE incoming call answered or swapped"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 594
    invoke-virtual {p0, v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;Z)V

    .line 598
    :cond_17
    :goto_5
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    .line 599
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$3;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$3;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/framework/phone/Phone;)V

    .line 604
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    goto :goto_6

    .line 518
    :cond_18
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAllCallsInConference()Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "TelecommCallCallback STATE_HOLDING hold pressed when all calls inside conference"

    .line 519
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 520
    iput-boolean v5, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldShowConference:Z

    .line 521
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->isConferenceManager()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 522
    monitor-exit v1

    return-void

    .line 528
    :cond_19
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->isConferenceManager()Z

    move-result p1

    if-eqz p1, :cond_1a

    const-string p1, "TelecommCallCallback STATE_HOLDING conference manager is on hold"

    .line 529
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 530
    iput-boolean v4, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldShowConference:Z

    .line 531
    monitor-exit v1

    return-void

    .line 535
    :cond_1a
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getAllHoldCalls()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne p1, v4, :cond_1b

    .line 538
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getActiveCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TelecommCallCallback STATE_HOLDING call "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " separated from conference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0, p1, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;Z)V

    goto :goto_6

    .line 545
    :cond_1b
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result p1

    if-ne p1, v5, :cond_1c

    .line 546
    invoke-virtual {p0, v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;Z)V

    .line 607
    :cond_1c
    :goto_6
    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setRecorderTestData(Lcom/callapp/contacts/model/call/CallData;)V

    .line 608
    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notifyListeners(Lcom/callapp/contacts/model/call/CallData;)V

    const-string p1, "showOrNotifyCallApp"

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "MAIN_NOTIFY     phone:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 610
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onCallDetailsChanged()V

    .line 611
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isInDriveModeIncoming()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 612
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gY:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 613
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Car mode"

    const-string v2, "CarModeIncomingCall"

    invoke-virtual {p1, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 617
    :cond_1d
    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v2

    if-ne v2, v7, :cond_1f

    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    if-nez v2, :cond_1f

    .line 618
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->translateState(I)Lcom/callapp/contacts/model/call/CallState;

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v2, v6, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addTelecomCall(Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;Landroid/telecom/Call;)Lcom/callapp/contacts/model/call/CallData;

    const-string v2, "TelecommCallCallback conference manager added"

    .line 619
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 620
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    .line 621
    iput-boolean v5, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldShowConference:Z

    if-eqz v3, :cond_1e

    .line 623
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->startConferenceActivity(Landroid/content/Context;Z)V

    goto :goto_7

    .line 625
    :cond_1e
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateNotificationAndWidget()V

    .line 627
    :goto_7
    monitor-exit v1

    return-void

    .line 629
    :cond_1f
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v2

    if-eq v2, v5, :cond_2a

    const/4 v8, 0x2

    const/16 v9, 0x8

    if-eq v2, v8, :cond_23

    if-eq v2, v6, :cond_22

    if-eq v2, v7, :cond_21

    if-eq v2, v9, :cond_20

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2a

    .line 713
    monitor-exit v1

    return-void

    .line 707
    :cond_20
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.telecom.action.CHANGE_PHONE_ACCOUNTS"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 708
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "TelecommCallCallback STATE_SELECT_PHONE_ACCOUNT"

    .line 710
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 711
    monitor-exit v1

    return-void

    .line 699
    :cond_21
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->releaseScreenWakeLock()V

    const-string v2, "TelecommCallCallback STATE_ACTIVE from another app"

    .line 701
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_8

    :cond_22
    const-string v2, "TelecommCallCallback STATE_HOLDING"

    .line 704
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :goto_8
    move v5, v3

    goto/16 :goto_a

    .line 631
    :cond_23
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->incrementNumOfCallsToday()V

    .line 633
    iput-boolean v4, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldShowConference:Z

    .line 634
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->translateState(I)Lcom/callapp/contacts/model/call/CallState;

    move-result-object v2

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v2, v6, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addTelecomCall(Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;Landroid/telecom/Call;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v2

    .line 635
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v6

    .line 637
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "TelecommCallCallback STATE_RINGING"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " added"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 639
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 640
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callScreeningServiceHandleMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_24

    .line 642
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handleBlockedCall(Lcom/callapp/framework/phone/Phone;Z)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 643
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notifyIncomingCall()V

    .line 644
    monitor-exit v1

    return-void

    .line 649
    :cond_24
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->h:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_26

    if-ne v6, v5, :cond_26

    .line 651
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandler:Landroid/os/Handler;

    if-eqz p1, :cond_25

    .line 652
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$4;

    invoke-direct {v0, p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$4;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 659
    :cond_25
    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->manuallyRingOrVibrate(Lcom/callapp/contacts/model/call/CallData;)V

    .line 663
    :cond_26
    :goto_9
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_27

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->h:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_29

    :cond_27
    if-le v6, v5, :cond_29

    .line 664
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->toneGenerator:Landroid/media/ToneGenerator;

    if-nez p1, :cond_28

    .line 665
    new-instance p1, Landroid/media/ToneGenerator;

    const/16 v0, 0x50

    invoke-direct {p1, v9, v0}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->toneGenerator:Landroid/media/ToneGenerator;

    .line 667
    :cond_28
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->toneGenerator:Landroid/media/ToneGenerator;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 670
    :cond_29
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notifyIncomingCall()V

    .line 671
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->createContactLoader(Lcom/callapp/framework/phone/Phone;)V

    .line 673
    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->speakNameIfNeeded(Lcom/callapp/contacts/model/call/CallData;)V

    .line 675
    invoke-virtual {p0, v2, v4, v3, v5}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;ZZZ)V

    .line 676
    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notifyListeners(Lcom/callapp/contacts/model/call/CallData;)V

    .line 677
    monitor-exit v1

    return-void

    .line 680
    :cond_2a
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->acquireScreenWakeLock()V

    .line 682
    iput-boolean v4, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldShowConference:Z

    .line 685
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->incrementNumOfCallsToday()V

    const-string v2, "TelecommCallCallback STATE_CONNECTING"

    .line 687
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getPhoneNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 691
    monitor-exit v1

    return-void

    .line 693
    :cond_2b
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isInDriveModeOutgoing()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 694
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/manager/phone/-$$Lambda$sAiLy-Bepix3lUwqD5YGmz9ATxg;->INSTANCE:Lcom/callapp/contacts/manager/phone/-$$Lambda$sAiLy-Bepix3lUwqD5YGmz9ATxg;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    .line 695
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v2, "Car mode"

    const-string v3, "CarModeOutgoingCall"

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_2c
    :goto_a
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->translateState(I)Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v2, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addTelecomCall(Lcom/callapp/contacts/model/call/CallState;Ljava/lang/Boolean;Landroid/telecom/Call;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    .line 716
    invoke-virtual {p0, p1, v5}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;Z)V

    .line 717
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setRecorderTestData(Lcom/callapp/contacts/model/call/CallData;)V

    .line 718
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notifyListeners(Lcom/callapp/contacts/model/call/CallData;)V

    .line 720
    :cond_2d
    :goto_b
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateNotificationAndWidget()V
    .locals 4

    .line 2278
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$iAqhUIMxZ2MvI53j4KX9MXGg7tU;->INSTANCE:Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$iAqhUIMxZ2MvI53j4KX9MXGg7tU;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private waitForCallMode()Z
    .locals 6

    .line 1462
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getCurrentAudioMode()I

    move-result v1

    .line 1463
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "waitForCallMode currentAudioMode="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1466
    :goto_0
    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isInCallAudioMode(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0xd

    if-ge v2, v4, :cond_0

    .line 1467
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tries="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / 13"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1468
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getCurrentAudioMode()I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v4, 0x12c

    .line 1471
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 1476
    :cond_0
    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isInCallAudioMode(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addDetailsListener(Lcom/callapp/contacts/manager/phone/CallDetailsListener;)V
    .locals 2

    .line 1266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDetailsListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1268
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onCallDetailsChanged()V

    :cond_0
    return-void
.end method

.method public addListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1246
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListenerIfNotPreCall(Lcom/callapp/contacts/manager/phone/CallStateListener;Z)Z

    return-void
.end method

.method public addListenerIfNotPreCall(Lcom/callapp/contacts/manager/phone/CallStateListener;Z)Z
    .locals 1

    .line 1255
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1256
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getLastCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 1259
    new-instance p2, Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;

    invoke-direct {p2, p0, p1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/phone/CallStateListener;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public addToCallScreeningServiceHandleList(Landroid/telecom/Call$Details;Lcom/callapp/framework/phone/Phone;Z)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callScreeningServiceHandleMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callScreeningServiceHandleNonDefaultMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cleanState()V
    .locals 1

    .line 2543
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastHandledEvents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, -0x1

    .line 2544
    iput v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastStateHandledFromTelephonyManager:I

    .line 2545
    iput v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastStateHandledGlobally:I

    const/4 v0, 0x0

    .line 2546
    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->lastOutgoingRingingPhoneHandled:Lcom/callapp/framework/phone/Phone;

    .line 2547
    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isLastCallIncoming:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 2548
    iput-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isOffhookBeforeOutgoing:Z

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1214
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const-string v1, "PhoneStateManager.destroy called!"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1215
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->listenToCallState(Z)V

    .line 1217
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1218
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDetailsListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1220
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1225
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1228
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notificationHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 1229
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1232
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 1233
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_3
    const-string v0, "audio"

    .line 1236
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1237
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public getActiveCallsInTestMode()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/callapp/contacts/model/call/CallData;",
            ">;"
        }
    .end annotation

    .line 2118
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2119
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllConferenceCalls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/call/CallData;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 313
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    if-eqz v1, :cond_1

    .line 314
    invoke-virtual {v1}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 315
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 316
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call;

    .line 317
    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callToCallData(Landroid/telecom/Call;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 319
    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callToCallData(Landroid/telecom/Call;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllConnectingOrConnectedCalls()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/call/CallData;",
            ">;"
        }
    .end annotation

    .line 1341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1342
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1343
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/call/CallData;

    .line 1345
    invoke-virtual {v3}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/model/call/CallState;->isConnectingOrConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1346
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1349
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1350
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllHoldCalls()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/call/CallData;",
            ">;"
        }
    .end annotation

    .line 1356
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1357
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1358
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/call/CallData;

    .line 1360
    invoke-virtual {v3}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/model/call/CallState;->isOnHold()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1361
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1364
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1365
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllHoldContactData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;"
        }
    .end annotation

    .line 1371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 1372
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1373
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/call/CallData;

    .line 1375
    invoke-virtual {v3}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/model/call/CallState;->isOnHold()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1376
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getContactDataByCallData(Lcom/callapp/contacts/model/call/CallData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1379
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1380
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallForPhone(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/call/CallData;
    .locals 4

    if-eqz p1, :cond_2

    .line 1415
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1416
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/call/CallData;

    .line 1417
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1418
    monitor-exit v0

    return-object v2

    .line 1421
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallForPhoneByTelecomId(Ljava/lang/String;)Lcom/callapp/contacts/model/call/CallData;
    .locals 1

    .line 1428
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/call/CallData;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallListSize()I
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCallNumberToday()I
    .locals 1

    .line 2579
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getConferenceManager()Landroid/telecom/Call;
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    return-object v0
.end method

.method public getContactDataByCallData(Lcom/callapp/contacts/model/call/CallData;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 4

    .line 1396
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->contactsByCalls:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1397
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->contactsByCalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1398
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v3, p1}, Lcom/callapp/contacts/model/call/CallData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1399
    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/callapp/contacts/model/contact/ContactData;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1403
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getFirstCallDataWithState(Lcom/callapp/contacts/model/call/CallState;)Lcom/callapp/contacts/model/call/CallData;
    .locals 4

    .line 376
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 377
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/call/CallData;

    .line 379
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 380
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->isConferenceManager()Z

    move-result v3

    if-nez v3, :cond_0

    .line 381
    monitor-exit v0

    return-object v2

    .line 385
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getFirstCallDataWithState(Ljava/util/List;)Lcom/callapp/contacts/model/call/CallData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/call/CallState;",
            ">;)",
            "Lcom/callapp/contacts/model/call/CallData;"
        }
    .end annotation

    .line 363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 364
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/call/CallState;

    .line 365
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getFirstCallDataWithState(Lcom/callapp/contacts/model/call/CallState;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIsIncomingCallOpenedOverlay()Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallOpenedOverlay:Z

    return v0
.end method

.method public getLastCall()Lcom/callapp/contacts/model/call/CallData;
    .locals 3

    .line 1436
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1437
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1438
    monitor-exit v0

    return-object v1

    .line 1441
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1442
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1443
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/call/CallData;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1444
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLongestCallDuration()J
    .locals 3

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 348
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, -0x1

    .line 350
    monitor-exit v0

    return-wide v1

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/call/CallData;

    .line 355
    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 357
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStateBeforeMerge()Z
    .locals 1

    .line 1008
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isStateBeforeMerge:Z

    return v0
.end method

.method public getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 393
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDataToTelecomCall:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/Call;

    monitor-exit v0

    return-object p1

    .line 396
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public handleBlockedCall(Lcom/callapp/framework/phone/Phone;Z)Z
    .locals 2

    .line 1772
    sget-object v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->blockedCallsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1773
    sget-object p1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$25;->a:[I

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bM:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    .line 1779
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_3

    .line 1780
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showBlockedNotification()V

    goto :goto_1

    .line 1784
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->muteRingerIfNeeded()V

    .line 1786
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->f()Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a()Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_3

    .line 1788
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showBlockedNotification()V

    :cond_3
    :goto_1
    return v0

    .line 1775
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->muteRingerIfNeeded()V

    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public handleRinger()V
    .locals 2

    .line 820
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->h:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 825
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 831
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 835
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getConnectingOrActiveCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    .line 840
    :cond_3
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isCurrentlyRinging:Z

    if-eqz v0, :cond_4

    .line 841
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void

    .line 846
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 847
    new-instance v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$6;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$6;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public init()V
    .locals 3

    .line 1154
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const-string v1, "phone"

    invoke-static {v1}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 1156
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handlerThread:Landroid/os/HandlerThread;

    .line 1157
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1158
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 1159
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handler:Landroid/os/Handler;

    .line 1161
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notificationHandlerThread:Landroid/os/HandlerThread;

    .line 1162
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1163
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notificationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 1164
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notificationHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notificationHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 1166
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->listenToCallState(Z)V

    .line 1167
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->initRingerHandlerIfNeeded()V

    return-void
.end method

.method public initRingerHandlerIfNeeded()V
    .locals 2

    .line 1171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1172
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1173
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RingerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandlerThread:Landroid/os/HandlerThread;

    .line 1174
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1175
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 1176
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandler:Landroid/os/Handler;

    .line 1177
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handleRequestAudioFocus()V

    :cond_0
    return-void
.end method

.method public internalSilenceRinger()V
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->textToSpeechWrapper:Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/TextToSpeechWrapper;->a()V

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 789
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getInternalSilenceRingerRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 791
    :cond_1
    invoke-direct {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getInternalSilenceRingerRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public isAllCallsInConference()Z
    .locals 4

    .line 1012
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    invoke-virtual {v3}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public isAnyCallActive()Z
    .locals 4

    .line 2159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2163
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingOrConnectingOrConnectedCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1

    .line 2160
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method public isAnyCallTalking()Z
    .locals 3

    .line 2152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2153
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getTalkingCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isCallDataInsideConference(Lcom/callapp/contacts/model/call/CallData;)Z
    .locals 3

    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDataToTelecomCall:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/Call;

    if-eqz p1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->conferenceManager:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 336
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 340
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isIncoming()Z
    .locals 2

    .line 2447
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->currentCallState:Lcom/callapp/contacts/model/call/CallState;

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIncomingCallRingingState()Z
    .locals 4

    .line 2144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2147
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1

    .line 2145
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-ne v0, v2, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public listenToCallState(Z)V
    .locals 3

    .line 1241
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "listenToCallState: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public muteRingerIfNeeded()V
    .locals 3

    .line 1965
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$12;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$12;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V

    .line 1982
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1984
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 1988
    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getStreamVolume(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 1991
    iput v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->currStreamRingVolume:I

    .line 1992
    invoke-static {v0, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->setStreamVolume(II)V

    .line 1996
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->currRingerMode:I

    .line 1997
    invoke-static {v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->setRingerMode(I)V

    :cond_2
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 1185
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isCurrentlyRinging:Z

    .line 1186
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->ringerRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1187
    const-class p1, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const-string v0, "Phone is ringing"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 2

    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$AP0xvp4Ph_d88oImyX4_cVPM7vM;

    invoke-direct {v1, p1}, Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$AP0xvp4Ph_d88oImyX4_cVPM7vM;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 3

    .line 230
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallAdded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "details "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setDefaultPhoneAppIfNeeded()V

    .line 233
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "onCallAdded return because we are not default phone app"

    .line 234
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 238
    :cond_0
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V

    .line 301
    invoke-virtual {p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 303
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call$Callback;->onStateChanged(Landroid/telecom/Call;I)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 1577
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->telephonyOnCallStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;ILjava/lang/String;)V
    .locals 1

    .line 1602
    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;ILjava/lang/String;)V

    .line 1604
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1605
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/callapp/contacts/manager/phone/PhoneStateManager$8;

    invoke-direct {p2, p0, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$8;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1612
    :cond_0
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onCallStateChanged(Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 2507
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2508
    iget-boolean p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notify:Z

    if-eqz p2, :cond_0

    .line 2509
    iget-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notificationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$23;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$23;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public removeDetailsListener(Lcom/callapp/contacts/manager/phone/CallDetailsListener;)V
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callDetailsListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V
    .locals 1

    .line 1273
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public separateCall(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 3

    .line 741
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 743
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getTelecomCallFromCallData(Lcom/callapp/contacts/model/call/CallData;)Landroid/telecom/Call;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 745
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setCallAsFirstCallInCallList(Landroid/telecom/Call;)V

    .line 746
    sget-object v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->ACTIVITY:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setCallActionSource(Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;)V

    .line 747
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    if-eqz p1, :cond_0

    .line 3145
    invoke-virtual {p1}, Landroid/telecom/Call;->splitFromConference()V

    return-void

    .line 3147
    :cond_0
    sget-object v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error separateCall, call not in call list "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setCallActionSource(Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->callActionSource:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    return-void
.end method

.method public setConferencesActivityVisible(Z)V
    .locals 0

    .line 405
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isConferencesActivityVisible:Z

    return-void
.end method

.method public setContactDetailsActivityVisible(Z)V
    .locals 0

    .line 401
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isContactDetailsActivityVisible:Z

    return-void
.end method

.method public setDefaultPhoneAppIfNeeded()V
    .locals 1

    .line 1570
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 1571
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->e()V

    :cond_0
    return-void
.end method

.method public setStateBeforeMerge(Z)V
    .locals 0

    .line 1004
    iput-boolean p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isStateBeforeMerge:Z

    return-void
.end method

.method public shouldConferenceScreenAppear()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldShowConference:Z

    return v0
.end method

.method public showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2018
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;ZZZ)V

    return-void
.end method

.method public showCallAppIfNeeded(Lcom/callapp/contacts/model/call/CallData;ZZZ)V
    .locals 3

    .line 2022
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notify:Z

    if-eqz v0, :cond_5

    .line 2024
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 2025
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2026
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bM:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->HANG_UP:Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    if-ne v1, v2, :cond_0

    return-void

    .line 2030
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->blockedCallsList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/util/List;)V

    .line 2033
    :cond_1
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isValidNumberToShowCallScreen(Lcom/callapp/contacts/model/call/CallData;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2034
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bl:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-nez v0, :cond_4

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bk:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2035
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallScreen(Lcom/callapp/contacts/model/call/CallData;ZZZ)V

    .line 2038
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result p2

    if-lez p2, :cond_5

    .line 2039
    iget-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notificationHandler:Landroid/os/Handler;

    new-instance p3, Lcom/callapp/contacts/manager/phone/PhoneStateManager$13;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$13;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/call/CallData;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public showCallScreen(Landroid/content/Intent;ZZ)V
    .locals 8

    .line 2291
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2292
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2294
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isIncoming"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2295
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "showCallScreen "

    const/16 v6, 0x3e8

    const/4 v7, 0x0

    if-eqz v3, :cond_7

    .line 2296
    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->get()Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;

    invoke-static {}, Lcom/callapp/contacts/manager/keyguard/KeyguardActivityStateManager;->b()Z

    move-result p2

    if-nez v2, :cond_1

    .line 2299
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2301
    invoke-static {}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/RomDetector;->isMIUI()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2302
    new-instance p2, Lcom/callapp/contacts/manager/phone/PhoneStateManager$15;

    invoke-direct {p2, p0, p1, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$15;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/content/Intent;Ljava/lang/String;)V

    .line 2307
    invoke-virtual {p2, v6}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$15;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 2309
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->openCallScreenIfNeeded(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_5

    .line 2311
    iget-boolean p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->screenStateBeforeRinging:Z

    if-nez p2, :cond_2

    goto :goto_0

    .line 2327
    :cond_2
    iget-boolean p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isContactDetailsActivityVisible:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isConferencesActivityVisible:Z

    if-nez p2, :cond_3

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2328
    iput-boolean v4, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallOpenedOverlay:Z

    .line 2329
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/manager/phone/PhoneStateManager$17;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$17;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/content/Intent;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    .line 2340
    :cond_3
    iput-boolean v7, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallOpenedOverlay:Z

    if-eqz p3, :cond_4

    .line 2342
    new-instance p2, Lcom/callapp/contacts/manager/phone/PhoneStateManager$18;

    invoke-direct {p2, p0, v1, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$18;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2348
    invoke-virtual {p2, v6}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$18;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 2350
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 2351
    invoke-direct {p0, v1, p1, v7}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->startFullDetailsActivity(Ljava/lang/String;Landroid/content/Intent;Z)V

    return-void

    .line 2312
    :cond_5
    :goto_0
    iput-boolean v7, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallOpenedOverlay:Z

    if-eqz p3, :cond_6

    .line 2314
    new-instance p2, Lcom/callapp/contacts/manager/phone/PhoneStateManager$16;

    invoke-direct {p2, p0, v1, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$16;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Ljava/lang/String;Landroid/content/Intent;)V

    .line 2320
    invoke-virtual {p2, v6}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$16;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 2322
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 2323
    invoke-direct {p0, v1, p1, v7}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->startFullDetailsActivity(Ljava/lang/String;Landroid/content/Intent;Z)V

    return-void

    .line 2355
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string v3, "EXTRA_IS_CALL_WAITING"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 2356
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->bm:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    if-nez p3, :cond_9

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_b

    .line 2359
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2360
    invoke-static {}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/RomDetector;->isMIUI()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 2361
    new-instance p3, Lcom/callapp/contacts/manager/phone/PhoneStateManager$19;

    invoke-direct {p3, p0, v1, p1, p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$19;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Ljava/lang/String;Landroid/content/Intent;Z)V

    .line 2366
    invoke-virtual {p3, v6}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$19;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 2368
    :cond_a
    invoke-direct {p0, v1, p1, p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->startFullDetailsActivity(Ljava/lang/String;Landroid/content/Intent;Z)V

    return-void

    .line 2372
    :cond_b
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object p2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/manager/OverlayManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 2373
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/manager/phone/PhoneStateManager$20;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$20;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/content/Intent;)V

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public updateCallAppInCallNotification()V
    .locals 2

    .line 2533
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->notificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$24;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$24;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
