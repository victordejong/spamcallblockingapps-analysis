.class public Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;
.super Lcom/callapp/contacts/model/BaseStoreItem;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    value = {
        "isPurchased",
        "isLoadedFromPlay",
        "priceWithCurrency",
        "priceCurrencyCode"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected description:Ljava/lang/String;

.field isCustomizable:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isCustomizable"
    .end annotation
.end field

.field isEnabled:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isEnabled"
    .end annotation
.end field

.field isLoadedFromPlay:Z

.field isPurchased:Z

.field notValidForPromotion:Z

.field protected price:F

.field priceCurrencyCode:Ljava/lang/String;

.field priceWithCurrency:Ljava/lang/String;

.field promotionPercent:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "salePercent"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/model/BaseStoreItem;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable:Z

    .line 25
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isLoadedFromPlay:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 172
    invoke-direct {p0, p1}, Lcom/callapp/contacts/model/BaseStoreItem;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable:Z

    .line 25
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isLoadedFromPlay:Z

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->price:F

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isEnabled:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable:Z

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->description:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->promotionPercent:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isPurchased:Z

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceWithCurrency:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isLoadedFromPlay:Z

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceCurrencyCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/model/BaseStoreItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 118
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;

    .line 120
    iget v1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->price:F

    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->price:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v0

    .line 121
    :cond_3
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isEnabled:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isEnabled:Z

    if-eq v1, v2, :cond_4

    return v0

    .line 122
    :cond_4
    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->promotionPercent:I

    iget v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->promotionPercent:I

    if-eq v1, v2, :cond_5

    return v0

    .line 123
    :cond_5
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isPurchased:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isPurchased:Z

    if-eq v1, v2, :cond_6

    return v0

    .line 124
    :cond_6
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable:Z

    if-eq v1, v2, :cond_7

    return v0

    .line 125
    :cond_7
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isLoadedFromPlay:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isLoadedFromPlay:Z

    if-eq v1, v2, :cond_8

    return v0

    .line 126
    :cond_8
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->notValidForPromotion:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->notValidForPromotion:Z

    if-eq v1, v2, :cond_9

    return v0

    .line 127
    :cond_9
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->description:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 129
    :cond_a
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceWithCurrency:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceWithCurrency:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 131
    :cond_b
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceCurrencyCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceCurrencyCode:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_c
    :goto_0
    return v0
.end method

.method public getCustomUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->price:F

    return v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceWithCurrency()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceWithCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionPercent()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->promotionPercent:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 136
    invoke-super {p0}, Lcom/callapp/contacts/model/BaseStoreItem;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->price:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 139
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 140
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->description:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 141
    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->promotionPercent:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 142
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isPurchased:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 143
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceWithCurrency:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 144
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isLoadedFromPlay:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 145
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceCurrencyCode:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 146
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->notValidForPromotion:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isCustomizable()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isEnabled:Z

    return v0
.end method

.method public isLoadedFromPlay()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isLoadedFromPlay:Z

    return v0
.end method

.method public isNotValidForPromotion()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->notValidForPromotion:Z

    return v0
.end method

.method public isPurchased()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isPurchased:Z

    return v0
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceCurrencyCode:Ljava/lang/String;

    return-void
.end method

.method public setCustomizable(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->description:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isEnabled:Z

    return-void
.end method

.method public setLoadedFromPlay(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isLoadedFromPlay:Z

    return-void
.end method

.method public setNotValidForPromotion(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->notValidForPromotion:Z

    return-void
.end method

.method public setPrice(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->price:F

    return-void
.end method

.method public setPriceWithCurrency(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceWithCurrency:Ljava/lang/String;

    return-void
.end method

.method public setPromotionPercent(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->promotionPercent:I

    return-void
.end method

.method public setPurchased(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isPurchased:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/model/BaseStoreItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    iget p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->price:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 159
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 160
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isCustomizable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 161
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->promotionPercent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isPurchased:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 164
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isNotValidForPromotion()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 166
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceWithCurrency:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->isLoadedFromPlay:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->priceCurrencyCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
