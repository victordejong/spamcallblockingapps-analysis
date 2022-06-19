.class public Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->a:I

    .line 10
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->b:I

    .line 11
    iput p3, p0, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->c:I

    return-void
.end method


# virtual methods
.method public getContactConfirm()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->a:I

    return v0
.end method

.method public getProfilePhotoChecked()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->c:I

    return v0
.end method

.method public getSpammersReport()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/CommunityCardItem;->b:I

    return v0
.end method
