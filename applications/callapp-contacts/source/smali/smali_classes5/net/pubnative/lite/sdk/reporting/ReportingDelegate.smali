.class public Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportingDelegate"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReportingUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;->mReportingUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getAuthString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public reportEventRaw(Lorg/json/JSONObject;)V
    .locals 4

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;->getAuthString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;->mReportingUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate$1;

    invoke-direct {v3, p0}, Lnet/pubnative/lite/sdk/reporting/ReportingDelegate$1;-><init>(Lnet/pubnative/lite/sdk/reporting/ReportingDelegate;)V

    invoke-static {v1, v2, v0, p1, v3}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V

    return-void
.end method
