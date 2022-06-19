.class public Lnet/pubnative/lite/sdk/config/ConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;
    }
.end annotation


# static fields
.field private static final KEY_CONFIG_TIMESTAMP:Ljava/lang/String; = "config_timestamp"

.field private static final PREFERENCES_CONFIG:Ljava/lang/String; = "net.pubnative.lite.config"

.field private static final TAG:Ljava/lang/String; = "ConfigManager"


# instance fields
.field private final mAppToken:Ljava/lang/String;

.field private mConfigModel:Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

.field private final mContext:Landroid/content/Context;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/config/ConfigManager;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lnet/pubnative/lite/sdk/config/ConfigManager;->mAppToken:Ljava/lang/String;

    const-string p2, "net.pubnative.lite.config"

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lnet/pubnative/lite/sdk/config/ConfigManager;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lnet/pubnative/lite/sdk/config/ConfigManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lnet/pubnative/lite/sdk/config/ConfigManager;Lnet/pubnative/lite/sdk/models/RemoteConfigModel;)Lnet/pubnative/lite/sdk/models/RemoteConfigModel;
    .locals 0

    .line 9
    iput-object p1, p0, Lnet/pubnative/lite/sdk/config/ConfigManager;->mConfigModel:Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    return-object p1
.end method

.method static synthetic access$200(Lnet/pubnative/lite/sdk/config/ConfigManager;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/config/ConfigManager;->storeConfigTimestamp()V

    return-void
.end method

.method private fetchConfig(Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;)V
    .locals 4

    .line 53
    new-instance v0, Lnet/pubnative/lite/sdk/config/ConfigRequest;

    invoke-direct {v0}, Lnet/pubnative/lite/sdk/config/ConfigRequest;-><init>()V

    .line 54
    iget-object v1, p0, Lnet/pubnative/lite/sdk/config/ConfigManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/config/ConfigManager;->mAppToken:Ljava/lang/String;

    new-instance v3, Lnet/pubnative/lite/sdk/config/ConfigManager$2;

    invoke-direct {v3, p0, p1}, Lnet/pubnative/lite/sdk/config/ConfigManager$2;-><init>(Lnet/pubnative/lite/sdk/config/ConfigManager;Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/config/ConfigRequest;->doRequest(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/lite/sdk/config/ConfigRequest$Listener;)V

    return-void
.end method

.method private storeConfigTimestamp()V
    .locals 4

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    iget-object v2, p0, Lnet/pubnative/lite/sdk/config/ConfigManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "config_timestamp"

    .line 100
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getConfig()Lnet/pubnative/lite/sdk/models/RemoteConfigModel;
    .locals 1

    .line 80
    iget-object v0, p0, Lnet/pubnative/lite/sdk/config/ConfigManager;->mConfigModel:Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    return-object v0
.end method

.method public initialize(Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/config/ConfigManager;->fetchConfig(Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;)V

    return-void
.end method

.method public isConfigOutdated()Z
    .locals 7

    .line 84
    iget-object v0, p0, Lnet/pubnative/lite/sdk/config/ConfigManager;->mConfigModel:Lnet/pubnative/lite/sdk/models/RemoteConfigModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, v0, Lnet/pubnative/lite/sdk/models/RemoteConfigModel;->ttl:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    .line 86
    iget-object v0, p0, Lnet/pubnative/lite/sdk/config/ConfigManager;->mPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    const-string v6, "config_timestamp"

    invoke-interface {v0, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public refreshConfig()V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/config/ConfigManager;->isConfigOutdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lnet/pubnative/lite/sdk/config/ConfigManager$1;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/config/ConfigManager$1;-><init>(Lnet/pubnative/lite/sdk/config/ConfigManager;)V

    invoke-direct {p0, v0}, Lnet/pubnative/lite/sdk/config/ConfigManager;->fetchConfig(Lnet/pubnative/lite/sdk/config/ConfigManager$ConfigListener;)V

    :cond_0
    return-void
.end method
