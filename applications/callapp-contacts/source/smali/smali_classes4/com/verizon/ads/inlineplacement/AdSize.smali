.class public Lcom/verizon/ads/inlineplacement/AdSize;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/verizon/ads/Logger;


# instance fields
.field a:I

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/verizon/ads/inlineplacement/AdSize;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/inlineplacement/AdSize;->c:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/verizon/ads/inlineplacement/AdSize;->a:I

    .line 36
    iput p2, p0, Lcom/verizon/ads/inlineplacement/AdSize;->b:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/verizon/ads/inlineplacement/AdSize;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/verizon/ads/inlineplacement/AdSize;->a:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/verizon/ads/inlineplacement/AdSize;->b:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/verizon/ads/inlineplacement/AdSize;->a:I

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 87
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "width"

    .line 88
    iget v2, p0, Lcom/verizon/ads/inlineplacement/AdSize;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    .line 89
    iget v2, p0, Lcom/verizon/ads/inlineplacement/AdSize;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lcom/verizon/ads/inlineplacement/AdSize;->c:Lcom/verizon/ads/Logger;

    const-string v2, "Error converting AdSize to JSONObject"

    invoke-virtual {v1, v2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdSize{width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/verizon/ads/inlineplacement/AdSize;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/verizon/ads/inlineplacement/AdSize;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
