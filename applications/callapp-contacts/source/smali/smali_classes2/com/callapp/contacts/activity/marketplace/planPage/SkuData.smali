.class public Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private disclaimer:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "disclaimer"
    .end annotation
.end field

.field private disclaimerColor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "disclaimerColor"
    .end annotation
.end field

.field private disclaimerSize:F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "disclaimerSize"
    .end annotation
.end field

.field private fillColor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "fillColor"
    .end annotation
.end field

.field private markWithStar:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "markWithStar"
    .end annotation
.end field

.field private outlineColor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "outlineColor"
    .end annotation
.end field

.field private priceBeforeColor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "priceBeforeColor"
    .end annotation
.end field

.field private priceColor:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "priceColor"
    .end annotation
.end field

.field private priceSize:F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "priceSize"
    .end annotation
.end field

.field showDisclaimer:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "showDisclaimer"
    .end annotation
.end field

.field private skuId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "skuId"
    .end annotation
.end field

.field private skuLocation:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "skuLocation"
    .end annotation
.end field

.field private strike:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "strike"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisclaimer()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->disclaimer:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerColor()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->disclaimerColor:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerSize()F
    .locals 1

    .line 68
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->disclaimerSize:F

    return v0
.end method

.method public getFillColor()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->fillColor:Ljava/lang/String;

    return-object v0
.end method

.method public getOutlineColor()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->outlineColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceBeforeColor()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->priceBeforeColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceColor()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->priceColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceSize()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->priceSize:F

    return v0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->skuId:Ljava/lang/String;

    return-object v0
.end method

.method public getSkuLocation()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->skuLocation:I

    return v0
.end method

.method public isMarkWithStar()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->markWithStar:Z

    return v0
.end method

.method public isStrike()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/SkuData;->strike:Z

    return v0
.end method
