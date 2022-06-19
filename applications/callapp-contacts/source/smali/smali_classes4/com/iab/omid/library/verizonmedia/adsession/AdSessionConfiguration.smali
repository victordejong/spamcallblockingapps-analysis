.class public Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private final creativeType:Lcom/iab/omid/library/verizonmedia/adsession/e;

.field private final impressionOwner:Lcom/iab/omid/library/verizonmedia/adsession/h;

.field private final impressionType:Lcom/iab/omid/library/verizonmedia/adsession/g;

.field private final isolateVerificationScripts:Z

.field private final mediaEventsOwner:Lcom/iab/omid/library/verizonmedia/adsession/h;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/verizonmedia/adsession/e;Lcom/iab/omid/library/verizonmedia/adsession/g;Lcom/iab/omid/library/verizonmedia/adsession/h;Lcom/iab/omid/library/verizonmedia/adsession/h;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->creativeType:Lcom/iab/omid/library/verizonmedia/adsession/e;

    iput-object p2, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->impressionType:Lcom/iab/omid/library/verizonmedia/adsession/g;

    iput-object p3, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->impressionOwner:Lcom/iab/omid/library/verizonmedia/adsession/h;

    if-nez p4, :cond_0

    sget-object p1, Lcom/iab/omid/library/verizonmedia/adsession/h;->NONE:Lcom/iab/omid/library/verizonmedia/adsession/h;

    iput-object p1, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->mediaEventsOwner:Lcom/iab/omid/library/verizonmedia/adsession/h;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->mediaEventsOwner:Lcom/iab/omid/library/verizonmedia/adsession/h;

    :goto_0
    iput-boolean p5, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->isolateVerificationScripts:Z

    return-void
.end method

.method public static createAdSessionConfiguration(Lcom/iab/omid/library/verizonmedia/adsession/e;Lcom/iab/omid/library/verizonmedia/adsession/g;Lcom/iab/omid/library/verizonmedia/adsession/h;Lcom/iab/omid/library/verizonmedia/adsession/h;Z)Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;
    .locals 8

    const-string v0, "CreativeType is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ImpressionType is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Impression owner is null"

    invoke-static {p2, v0}, Lcom/iab/omid/library/verizonmedia/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    sget-object v0, Lcom/iab/omid/library/verizonmedia/adsession/h;->NONE:Lcom/iab/omid/library/verizonmedia/adsession/h;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/iab/omid/library/verizonmedia/adsession/e;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/verizonmedia/adsession/e;

    const-string v1, "ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript"

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/iab/omid/library/verizonmedia/adsession/h;->NATIVE:Lcom/iab/omid/library/verizonmedia/adsession/h;

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lcom/iab/omid/library/verizonmedia/adsession/g;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/verizonmedia/adsession/g;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/iab/omid/library/verizonmedia/adsession/h;->NATIVE:Lcom/iab/omid/library/verizonmedia/adsession/h;

    if-eq p2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance v0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;-><init>(Lcom/iab/omid/library/verizonmedia/adsession/e;Lcom/iab/omid/library/verizonmedia/adsession/g;Lcom/iab/omid/library/verizonmedia/adsession/h;Lcom/iab/omid/library/verizonmedia/adsession/h;Z)V

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Impression owner is none"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public isNativeImpressionOwner()Z
    .locals 2

    sget-object v0, Lcom/iab/omid/library/verizonmedia/adsession/h;->NATIVE:Lcom/iab/omid/library/verizonmedia/adsession/h;

    iget-object v1, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->impressionOwner:Lcom/iab/omid/library/verizonmedia/adsession/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNativeMediaEventsOwner()Z
    .locals 2

    sget-object v0, Lcom/iab/omid/library/verizonmedia/adsession/h;->NATIVE:Lcom/iab/omid/library/verizonmedia/adsession/h;

    iget-object v1, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->mediaEventsOwner:Lcom/iab/omid/library/verizonmedia/adsession/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->impressionOwner:Lcom/iab/omid/library/verizonmedia/adsession/h;

    const-string v2, "impressionOwner"

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/verizonmedia/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->mediaEventsOwner:Lcom/iab/omid/library/verizonmedia/adsession/h;

    const-string v2, "mediaEventsOwner"

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/verizonmedia/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->creativeType:Lcom/iab/omid/library/verizonmedia/adsession/e;

    const-string v2, "creativeType"

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/verizonmedia/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->impressionType:Lcom/iab/omid/library/verizonmedia/adsession/g;

    const-string v2, "impressionType"

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/verizonmedia/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/iab/omid/library/verizonmedia/adsession/AdSessionConfiguration;->isolateVerificationScripts:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isolateVerificationScripts"

    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/verizonmedia/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
