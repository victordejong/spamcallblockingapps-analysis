.class public Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->a:I

    .line 13
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->b:I

    .line 14
    iput p3, p0, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->c:I

    .line 15
    iput p4, p0, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->d:I

    .line 16
    iput p5, p0, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->e:I

    .line 17
    iput p6, p0, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->f:I

    return-void
.end method


# virtual methods
.method public getIncomingNight()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->b:I

    return v0
.end method

.method public getOutgoingNight()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->d:I

    return v0
.end method

.method public getTotalIncoming()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->e:I

    return v0
.end method

.method public getTotalOutgoing()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;->f:I

    return v0
.end method
