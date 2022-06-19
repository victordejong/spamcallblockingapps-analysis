.class public Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private premiumBannerUrl:Ljava/lang/String;

.field private price:I

.field private promotion:I

.field private textColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;

    .line 50
    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->price:I

    iget v3, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->price:I

    if-eq v2, v3, :cond_2

    return v1

    .line 51
    :cond_2
    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->promotion:I

    iget v3, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->promotion:I

    if-eq v2, v3, :cond_3

    return v1

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->premiumBannerUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->premiumBannerUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 54
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->textColor:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->textColor:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public getPremiumBannerUrl()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->premiumBannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->price:I

    return v0
.end method

.method public getPromotion()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->promotion:I

    return v0
.end method

.method public getTextColor()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->textColor:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->premiumBannerUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->price:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->promotion:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->textColor:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setPremiumBannerUrl(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->premiumBannerUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->price:I

    return-void
.end method

.method public setPromotion(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->promotion:I

    return-void
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;->textColor:Ljava/lang/String;

    return-void
.end method
