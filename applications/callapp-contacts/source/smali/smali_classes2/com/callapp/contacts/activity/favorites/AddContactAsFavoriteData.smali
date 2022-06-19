.class public Lcom/callapp/contacts/activity/favorites/AddContactAsFavoriteData;
.super Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method
