.class public Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;
.super Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;
.source "SourceFile"


# instance fields
.field private groups:[I

.field private isSubscription:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isSubscription"
    .end annotation
.end field

.field private originalPrice:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;-><init>()V

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

    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 46
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;

    .line 48
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->isSubscription:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->isSubscription:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 49
    :cond_3
    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->originalPrice:I

    iget v2, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->originalPrice:I

    if-eq v1, v2, :cond_4

    return v0

    .line 50
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->groups:[I

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->groups:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public getGroups()[I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->groups:[I

    return-object v0
.end method

.method public getOriginalPrice()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->originalPrice:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->groups:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->isSubscription:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->originalPrice:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isSubscription()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->isSubscription:Z

    return v0
.end method

.method public setGroups([I)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->groups:[I

    return-void
.end method

.method public setOriginalPrice(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->originalPrice:I

    return-void
.end method

.method public setSubscription(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;->isSubscription:Z

    return-void
.end method
