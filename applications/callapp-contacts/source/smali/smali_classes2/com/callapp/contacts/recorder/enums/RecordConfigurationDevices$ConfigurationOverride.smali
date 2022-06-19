.class Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigurationOverride"
.end annotation


# instance fields
.field private final configPhone:Ljava/lang/String;

.field private final configVoip:Ljava/lang/String;

.field private final identifier:Ljava/lang/String;

.field private jsonPhone:Lorg/json/JSONObject;

.field private jsonVoip:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->identifier:Ljava/lang/String;

    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->configPhone:Ljava/lang/String;

    .line 272
    iput-object p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->configVoip:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$1;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    .line 1016
    invoke-static {p1}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 276
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->identifier:Ljava/lang/String;

    .line 277
    new-instance p1, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    .line 2016
    invoke-static {p2}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object p2

    .line 277
    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->configPhone:Ljava/lang/String;

    .line 278
    new-instance p1, Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/Base64Utils;->getInstance()Lcom/callapp/contacts/util/Base64Utils;

    .line 3016
    invoke-static {p3}, Lcom/callapp/repackaged/org/apache/commons/codec/binary/Base64;->a(Ljava/lang/String;)[B

    move-result-object p2

    .line 278
    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->configVoip:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$1;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;)Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method private getAudioSourceAndMethodFromConfigPhone(Lorg/json/JSONObject;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;",
            "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;",
            ">;"
        }
    .end annotation

    const-string v0, "s"

    const-string v1, ""

    .line 222
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 227
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "vcallsoft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "vcommsoft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "vrecsoft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "vcomm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "vcall"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "vrec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "mic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 250
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid audio source value "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :pswitch_0
    sget-object p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_CALL:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 232
    :pswitch_1
    sget-object p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 235
    :pswitch_2
    sget-object p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_RECOGNITION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 238
    :pswitch_3
    sget-object p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 241
    :pswitch_4
    sget-object p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_CALL:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 244
    :pswitch_5
    sget-object p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_RECOGNITION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 247
    :pswitch_6
    sget-object p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->MIC:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x1a647 -> :sswitch_6
        0x375c5a -> :sswitch_5
        0x6ad4fd4 -> :sswitch_4
        0x6ad8482 -> :sswitch_3
        0x22539384 -> :sswitch_2
        0x33a967ac -> :sswitch_1
        0x4d4f39fe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFicFromJsonConfigPhone(Lorg/json/JSONObject;)Ljava/lang/Boolean;
    .locals 2

    const-string v0, "fic"

    const-string v1, ""

    .line 207
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "no"

    .line 212
    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const-string v0, "yes"

    .line 214
    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 217
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid fic value "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getJSONObjectFromConfigPhone()Lorg/json/JSONObject;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->jsonPhone:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 198
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->configPhone:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->jsonPhone:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->jsonPhone:Lorg/json/JSONObject;

    .line 203
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->jsonPhone:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public getFicConfigPhone()Ljava/lang/Boolean;
    .locals 1

    .line 256
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->getJSONObjectFromConfigPhone()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->getFicFromJsonConfigPhone(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSourceConfigPhone()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;",
            "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;",
            ">;"
        }
    .end annotation

    .line 260
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->getJSONObjectFromConfigPhone()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->getAudioSourceAndMethodFromConfigPhone(Lorg/json/JSONObject;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
