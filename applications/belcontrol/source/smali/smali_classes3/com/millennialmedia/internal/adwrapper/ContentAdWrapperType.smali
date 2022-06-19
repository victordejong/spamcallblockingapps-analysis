.class public Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adwrapper/AdWrapperType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentAdWrapperType"


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

    sget-object v0, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createAdWrapperFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapper;
    .locals 4

    const-string p2, "value"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "item"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableEnhancedAdControl"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3, v1}, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Z)V

    const-string p2, "creativeid"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;->creativeId:Ljava/lang/String;

    const-string p2, "adnet"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;->adnet:Ljava/lang/String;

    return-object v2
.end method
