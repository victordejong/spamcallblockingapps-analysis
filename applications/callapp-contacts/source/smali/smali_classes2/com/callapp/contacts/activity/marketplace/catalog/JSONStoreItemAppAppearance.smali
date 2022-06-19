.class public abstract Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
.super Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/list/ImageLoaderData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 18
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;-><init>(Landroid/os/Parcel;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->price:F

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isEnabled:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->description:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->promotionPercent:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isPurchased:Z

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceWithCurrency:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isLoadedFromPlay:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isCustomizable:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 111
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    .line 113
    iget v1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->price:F

    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->price:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 114
    :cond_3
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isEnabled:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isEnabled:Z

    if-eq v1, v2, :cond_4

    return v0

    .line 115
    :cond_4
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isCustomizable:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isCustomizable:Z

    if-eq v1, v2, :cond_5

    return v0

    .line 116
    :cond_5
    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->promotionPercent:I

    iget v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->promotionPercent:I

    if-eq v1, v2, :cond_6

    return v0

    .line 117
    :cond_6
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isPurchased:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isPurchased:Z

    if-eq v1, v2, :cond_7

    return v0

    .line 118
    :cond_7
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isLoadedFromPlay:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isLoadedFromPlay:Z

    if-eq v1, v2, :cond_8

    return v0

    .line 119
    :cond_8
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->description:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 121
    :cond_9
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceWithCurrency:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceWithCurrency:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 123
    :cond_a
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceCurrencyCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceCurrencyCode:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    :goto_0
    return v0
.end method

.method public getDaysOfFreeSubscription()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->description:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getImageUrl(I)Ljava/lang/String;
.end method

.method public getPrice()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->price:F

    return v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceWithCurrency()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceWithCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionPercent()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->promotionPercent:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 129
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->price:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->price:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 132
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isCustomizable:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 133
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->description:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->promotionPercent:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isPurchased:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceWithCurrency:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceWithCurrency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isLoadedFromPlay:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceCurrencyCode:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceCurrencyCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public isCustomizable()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isCustomizable:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isEnabled:Z

    return v0
.end method

.method public isLoadedFromPlay()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isLoadedFromPlay:Z

    return v0
.end method

.method public isPurchased()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isPurchased:Z

    return v0
.end method

.method public needDefaultDialer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceCurrencyCode:Ljava/lang/String;

    return-void
.end method

.method public setCustomizable(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isCustomizable:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->description:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isEnabled:Z

    return-void
.end method

.method public setLoadedFromPlay(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isLoadedFromPlay:Z

    return-void
.end method

.method public setPrice(F)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->price:F

    return-void
.end method

.method public setPriceWithCurrency(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceWithCurrency:Ljava/lang/String;

    return-void
.end method

.method public setPromotionPercent(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->promotionPercent:I

    return-void
.end method

.method public setPurchased(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isPurchased:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 144
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 145
    iget p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->price:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 146
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 147
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceCurrencyCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->promotionPercent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isPurchased:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->priceWithCurrency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isCustomizable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
