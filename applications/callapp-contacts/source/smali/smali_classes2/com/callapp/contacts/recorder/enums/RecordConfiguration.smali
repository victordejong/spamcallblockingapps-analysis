.class public Lcom/callapp/contacts/recorder/enums/RecordConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/recorder/enums/RecordConfiguration$RecorderStatusConverter;,
        Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FileFormatConverter;,
        Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AudioSourceConverter;,
        Lcom/callapp/contacts/recorder/enums/RecordConfiguration$MethodConverter;,
        Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;,
        Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;,
        Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;,
        Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;
    }
.end annotation


# instance fields
.field private audioEncoder:Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

.field private audioEncoderType:I

.field private audioMethod:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

.field private audioSource:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

.field private emptyBufferCounter:I

.field private forceIncommunicationMode:Z

.field private isInRecorderTest:Z

.field private outputFormat:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

.field private volumeLevel:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    iput-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioMethod:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 182
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    iput-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioSource:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 183
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    iput-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->outputFormat:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    .line 184
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eT:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->volumeLevel:I

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    .line 187
    iput-boolean v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->forceIncommunicationMode:Z

    goto :goto_0

    .line 189
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eR:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->forceIncommunicationMode:Z

    .line 192
    :goto_0
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$1;->$SwitchMap$com$callapp$contacts$recorder$enums$RecordConfiguration$FILE_FORMAT:[I

    iget-object v2, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->outputFormat:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v0, -0x1

    .line 201
    iput v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioEncoderType:I

    goto :goto_1

    .line 198
    :cond_1
    iput v2, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioEncoderType:I

    goto :goto_1

    .line 194
    :cond_2
    iput v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioEncoderType:I

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->outputFormat:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/encoder/AudioEncoderFactory;->a(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;)Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioEncoder:Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;IZ)V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioMethod:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 246
    iput-object p2, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioSource:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 247
    iput-object p3, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->outputFormat:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/4 p1, 0x1

    .line 248
    iput-boolean p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->isInRecorderTest:Z

    .line 249
    iput p4, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->volumeLevel:I

    .line 250
    iput-boolean p5, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->forceIncommunicationMode:Z

    .line 252
    sget-object p2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$1;->$SwitchMap$com$callapp$contacts$recorder$enums$RecordConfiguration$FILE_FORMAT:[I

    invoke-virtual {p3}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->ordinal()I

    move-result p4

    aget p2, p2, p4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    const/4 p4, 0x3

    if-eq p2, p1, :cond_0

    if-eq p2, p4, :cond_0

    const/4 p1, -0x1

    .line 261
    iput p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioEncoderType:I

    goto :goto_0

    .line 258
    :cond_0
    iput p4, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioEncoderType:I

    goto :goto_0

    .line 254
    :cond_1
    iput p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioEncoderType:I

    .line 265
    :goto_0
    invoke-static {p3}, Lcom/callapp/contacts/recorder/encoder/AudioEncoderFactory;->a(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;)Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioEncoder:Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

    return-void
.end method

.method public static migrateOldConfiguration()V
    .locals 2

    .line 375
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eN:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 433
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 434
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 435
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 428
    :pswitch_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 429
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->MIC:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 430
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->WAV:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 423
    :pswitch_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 424
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->MIC:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 425
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 418
    :pswitch_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 419
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_RECOGNITION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 420
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->WAV:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 413
    :pswitch_3
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 414
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_RECOGNITION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 415
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 408
    :pswitch_4
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 409
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->MIC:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 410
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 403
    :pswitch_5
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 404
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 405
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 398
    :pswitch_6
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 399
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 400
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->MPEG_4:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 393
    :pswitch_7
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 394
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_CALL:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 395
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 388
    :pswitch_8
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 389
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 390
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 383
    :pswitch_9
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 384
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 385
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->WAV:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    .line 378
    :pswitch_a
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 379
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 380
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDefaults()V
    .locals 3

    .line 367
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices;->getRecordingConfiguration()Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationResult;

    move-result-object v0

    .line 368
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eO:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    iget-object v2, v0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationResult;->method:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 369
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    iget-object v2, v0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationResult;->audio_source:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 370
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eR:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    iget-boolean v0, v0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationResult;->fic:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 371
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eQ:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAudioEncoder()Lcom/callapp/contacts/recorder/encoder/AudioEncoder;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioEncoder:Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

    return-object v0
.end method

.method public getAudioEncoderType()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioEncoderType:I

    return v0
.end method

.method public getAudioMethod()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioMethod:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    return-object v0
.end method

.method public getAudioSource()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioSource:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    return-object v0
.end method

.method public getFileSuffix()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->outputFormat:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->getFileSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputFormat()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->outputFormat:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    return-object v0
.end method

.method public getVolumeLevel()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->volumeLevel:I

    return v0
.end method

.method public isEmptyRecord()Z
    .locals 2

    .line 169
    iget v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->emptyBufferCounter:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isForceIncommunicationMode()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->forceIncommunicationMode:Z

    return v0
.end method

.method public isInRecorderTest()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->isInRecorderTest:Z

    return v0
.end method

.method public setEmptyBufferCounter(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 174
    iget p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->emptyBufferCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->emptyBufferCounter:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 176
    iput p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->emptyBufferCounter:I

    return-void
.end method

.method public setVolumeLevel(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->volumeLevel:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecordConfiguration{audioMethod="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioMethod:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioSource:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->outputFormat:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioEncoderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioEncoderType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioEncoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->audioEncoder:Lcom/callapp/contacts/recorder/encoder/AudioEncoder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forceIncommunicationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration;->forceIncommunicationMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", accessiblityServiceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isCallAppAccessibilityServiceEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
