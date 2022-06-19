.class public Lcom/callapp/contacts/util/servermessage/ValidateClientTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/servermessage/ValidateClientTask$OnResultListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/util/servermessage/ValidateClientTask$OnResultListener;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask$OnResultListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->a:Lcom/callapp/contacts/util/servermessage/ValidateClientTask$OnResultListener;

    .line 60
    iput-object p2, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->b:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    if-eqz p4, :cond_0

    const p4, 0x7f1201e3

    goto :goto_0

    :cond_0
    const p4, 0x7f120400

    .line 208
    :goto_0
    new-instance v7, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$3;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$3;-><init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask;)V

    .line 225
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f12060f

    if-eqz v0, :cond_1

    .line 226
    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f1204c2

    .line 227
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$4;

    invoke-direct {v5, p0, p3, p1}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$4;-><init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v6, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$5;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$5;-><init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask;)V

    move-object v0, v8

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    goto :goto_1

    .line 244
    :cond_1
    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 245
    invoke-static {p4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$6;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$6;-><init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask;)V

    move-object v0, v8

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 252
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    invoke-virtual {p2, p1, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static a()Z
    .locals 5

    .line 154
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ac:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 155
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-long v0, v1

    const-wide/32 v2, 0xa4cb800

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static b()V
    .locals 1

    .line 256
    new-instance v0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$7;

    invoke-direct {v0}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$7;-><init>()V

    .line 261
    invoke-virtual {v0}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$7;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method static synthetic c()Lcom/callapp/common/model/json/JSONClientValidationResponse;
    .locals 1

    .line 46
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->d()Lcom/callapp/common/model/json/JSONClientValidationResponse;

    move-result-object v0

    return-object v0
.end method

.method private static d()Lcom/callapp/common/model/json/JSONClientValidationResponse;
    .locals 7

    .line 122
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2099
    new-instance v0, Lcom/callapp/common/model/json/JSONClientConfiguration;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONClientConfiguration;-><init>()V

    .line 2100
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setCallAppVersion(I)V

    .line 2101
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setManufacturer(Ljava/lang/String;)V

    .line 2102
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setModel(Ljava/lang/String;)V

    .line 2103
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setOsVersion(I)V

    .line 2104
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setHeight(I)V

    .line 2105
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setWidth(I)V

    .line 2106
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setDensity(I)V

    .line 2107
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getEncodedDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setEncodedDeviceId(Ljava/lang/String;)V

    const v2, 0x7f120688

    .line 2108
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setApkOrigin(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 2109
    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setCallappPlus(Z)V

    .line 2110
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setSetupCompleted(Z)V

    .line 2111
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setPhoneNumber(Ljava/lang/String;)V

    .line 2114
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 2115
    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONClientConfiguration;->setHasTelephony(Z)V

    .line 126
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "vc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    new-instance v3, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 129
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 130
    sget-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 131
    sget-object v4, Lcom/fasterxml/jackson/core/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 132
    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v3, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;

    invoke-direct {v3}, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;-><init>()V

    .line 135
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "Content-Type"

    const-string v6, "application/json"

    .line 136
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppServerHost()Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    new-instance v5, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v5, v2}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    .line 3090
    iput-object v3, v5, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 4080
    iput-object v4, v5, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->b:Ljava/util/Map;

    .line 139
    invoke-virtual {v5}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lcom/callapp/contacts/util/http/HttpRequestParams;Ljava/lang/String;)Z

    .line 142
    :cond_0
    invoke-virtual {v3}, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;->getResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v3}, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;->getResult()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/callapp/common/model/json/JSONClientValidationResponse;

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONClientValidationResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 147
    const-class v2, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static getNopMessage()Lcom/callapp/common/model/json/JSONClientValidationResponse;
    .locals 2

    .line 90
    new-instance v0, Lcom/callapp/common/model/json/JSONClientValidationResponse;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONClientValidationResponse;-><init>()V

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->setMessageType(I)V

    const-string v1, ""

    .line 92
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->setMessage(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->setUpdatedClientConfiguration(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getServerMessage()Lcom/callapp/common/model/json/JSONClientValidationResponse;
    .locals 5

    .line 71
    const-class v0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;

    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v1

    const-class v2, Lcom/callapp/common/model/json/JSONClientValidationResponse;

    const-string v3, "message_key"

    const/4 v4, 0x0

    .line 1215
    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    .line 71
    check-cast v1, Lcom/callapp/common/model/json/JSONClientValidationResponse;

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JSONClientValidationResponse from cache: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->d()Lcom/callapp/common/model/json/JSONClientValidationResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v2

    const-class v4, Lcom/callapp/common/model/json/JSONClientValidationResponse;

    invoke-virtual {v2, v4, v3, v1}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->ac:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    const-string v2, "JSONClientValidationResponse from server was OK"

    .line 80
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "JSONClientValidationResponse from server was null"

    .line 82
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->getNopMessage()Lcom/callapp/common/model/json/JSONClientValidationResponse;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public doTask()V
    .locals 14

    .line 66
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->getServerMessage()Lcom/callapp/common/model/json/JSONClientValidationResponse;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->a:Lcom/callapp/contacts/util/servermessage/ValidateClientTask$OnResultListener;

    .line 1160
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getMessageType()I

    move-result v3

    const/4 v4, 0x2

    const v5, 0x7f1204ea

    const v6, 0x7f12060f

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    const/4 v7, 0x0

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    const/4 v8, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    if-eqz v2, :cond_4

    .line 1198
    invoke-interface {v2, v0}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$OnResultListener;->a(Lcom/callapp/common/model/json/JSONClientValidationResponse;)V

    goto/16 :goto_0

    .line 1185
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->c:Ljava/lang/String;

    const-string v4, "Update CallApp displayed with message CANNOT_RUN"

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->c:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const-string v7, "CANNOT_RUN: %s"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 1188
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-instance v12, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$2;

    invoke-direct {v12, p0, v0}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$2;-><init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask;Lcom/callapp/common/model/json/JSONClientValidationResponse;)V

    const/4 v13, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 1187
    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 1181
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->c:Ljava/lang/String;

    const-string v4, "Update CallApp displayed with message FORCE_UPDATE"

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getUpgradeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0, v8}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1174
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->c:Ljava/lang/String;

    const-string v4, "Update CallApp displayed with message SUGGEST_UPDATE"

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1176
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getUpgradeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0, v7}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1177
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ac:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    return-void

    .line 1162
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->c:Ljava/lang/String;

    const-string v4, "Update CallApp displayed with message SHOW_MESSAGE"

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1164
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONClientValidationResponse;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 1165
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-instance v12, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$1;

    invoke-direct {v12, p0}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask$1;-><init>(Lcom/callapp/contacts/util/servermessage/ValidateClientTask;)V

    const/4 v13, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v13}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 1164
    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 1170
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ac:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method
