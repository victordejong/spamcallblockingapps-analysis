.class public Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ERROR_CODE:Ljava/lang/String; = "[ERRORCODE]"

.field private static final LOG_TAG:Ljava/lang/String; = "ErrorLog"

.field private static sErrorLogUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initErrorLog(Ljava/lang/String;)V
    .locals 0

    .line 21
    sput-object p0, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->sErrorLogUrl:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized postError(Landroid/content/Context;Lnet/pubnative/lite/sdk/vpaid/enums/VastError;)V
    .locals 3

    const-class v0, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->sErrorLogUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 26
    monitor-exit v0

    return-void

    .line 29
    :cond_0
    :try_start_1
    sget-object v1, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->sErrorLogUrl:Ljava/lang/String;

    const-string v2, "[ERRORCODE]"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "[ERRORCODE]"

    .line 31
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 33
    :cond_1
    sget-object p1, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p1, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog$1;

    invoke-direct {p1}, Lnet/pubnative/lite/sdk/vpaid/helpers/ErrorLog$1;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v2, p1}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
