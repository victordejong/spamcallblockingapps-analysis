.class public Lcom/millennialmedia/internal/adwrapper/ContentDemandSourceAdWrapperType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/adwrapper/AdWrapperType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdWrapperFromJSON(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/millennialmedia/internal/adwrapper/AdWrapper;
    .locals 3

    const-string p2, "adContent"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "item"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableEnhancedAdControl"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v1, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2, p1}, Lcom/millennialmedia/internal/adwrapper/ContentAdWrapperType$ContentAdWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/internal/AdMetadata;Z)V

    return-object v1
.end method
