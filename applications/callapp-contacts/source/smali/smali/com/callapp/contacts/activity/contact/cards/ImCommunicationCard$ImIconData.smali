.class public Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImIconData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;",
        "Ljava/lang/Comparable<",
        "Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/callapp/contacts/manager/Singletons$SenderType;


# direct methods
.method public constructor <init>(ILcom/callapp/contacts/manager/Singletons$SenderType;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;-><init>()V

    .line 1064
    iput p1, v0, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;->a:I

    .line 121
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalIconGalleryItemData$Builder;)V

    .line 123
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;->a:Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 118
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;

    .line 1128
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;->a:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons$SenderType;->getUseCount()J

    move-result-wide v0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;->a:Lcom/callapp/contacts/manager/Singletons$SenderType;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons$SenderType;->getUseCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;

    .line 138
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;->a:Lcom/callapp/contacts/manager/Singletons$SenderType;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;->a:Lcom/callapp/contacts/manager/Singletons$SenderType;

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/ImCommunicationCard$ImIconData;->a:Lcom/callapp/contacts/manager/Singletons$SenderType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons$SenderType;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
