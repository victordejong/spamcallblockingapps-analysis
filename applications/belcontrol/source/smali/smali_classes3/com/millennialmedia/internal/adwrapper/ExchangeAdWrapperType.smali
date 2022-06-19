.class public Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adwrapper/AdWrapperType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExchangeAdWrapperType"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createAdWrapperFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapper;
    .locals 4

    const-string p2, "req"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "url"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enableEnhancedAdControl"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v2, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;

    invoke-direct {v2, v1, v0, p1}, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "postBody"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;->postBody:Ljava/lang/String;

    const-string p1, "postType"

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/millennialmedia/internal/adwrapper/ExchangeAdWrapperType$ExchangeAdWrapper;->postContentType:Ljava/lang/String;

    return-object v2
.end method
