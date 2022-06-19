.class public Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;
.super Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    return-void
.end method


# virtual methods
.method public calculateCacheKey()Ljava/lang/String;
    .locals 6

    .line 19
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "FavItemData_%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->calculateCacheKey()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 41
    :cond_1
    instance-of v1, p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    if-nez v1, :cond_2

    return v2

    .line 43
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    .line 44
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->normalNumbers:Ljava/util/List;

    if-nez v1, :cond_3

    .line 45
    iget-object p1, p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->normalNumbers:Ljava/util/List;

    if-eqz p1, :cond_4

    return v2

    .line 47
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->normalNumbers:Ljava/util/List;

    iget-object p1, p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getStickyData()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 59
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 60
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->nameT9:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->nameT9:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->normalNumbers:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->normalNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method
