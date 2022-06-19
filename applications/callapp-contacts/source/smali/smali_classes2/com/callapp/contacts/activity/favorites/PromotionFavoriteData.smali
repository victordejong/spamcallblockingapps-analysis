.class public final Lcom/callapp/contacts/activity/favorites/PromotionFavoriteData;
.super Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/favorites/PromotionFavoriteData;",
        "Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;",
        "memoryContactItem",
        "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
        "jsonStickyData",
        "Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;",
        "(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;)V",
        "getJsonStickyData",
        "()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;",
        "setJsonStickyData",
        "(Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;)V",
        "equals",
        "",
        "other",
        "",
        "getStickyData",
        "getViewType",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/favorites/PromotionFavoriteData;->a:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/favorites/PromotionFavoriteData;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 17
    move-object v0, p0

    check-cast v0, Lcom/callapp/contacts/activity/favorites/PromotionFavoriteData;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getStickyData()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/PromotionFavoriteData;->a:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    return-object v0
.end method

.method public final getViewType()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method
