.class public Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field private g:F

.field private h:I

.field private i:Lcom/callapp/contacts/manager/sim/SimManager$SimId;


# direct methods
.method public constructor <init>(IIIIFFLcom/callapp/contacts/manager/sim/SimManager$SimId;FI)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->a:I

    .line 20
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->b:I

    .line 21
    iput p3, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->c:I

    .line 22
    iput p4, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->d:I

    .line 23
    iput p5, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->e:F

    .line 24
    iput p6, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->f:F

    .line 25
    iput-object p7, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->i:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    .line 26
    iput p9, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->h:I

    .line 27
    iput p8, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->g:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 83
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->h:I

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 87
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->g:F

    long-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->g:F

    return-void
.end method

.method public getIncomingCalls()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->a:I

    return v0
.end method

.method public getIncomingDuration()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->f:F

    return v0
.end method

.method public getMissedCalls()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->c:I

    return v0
.end method

.method public getNotAnsweredCalls()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->d:I

    return v0
.end method

.method public getOutgoingCalls()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->b:I

    return v0
.end method

.method public getOutgoingDuration()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->e:F

    return v0
.end method

.method public getTotalCalls()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->h:I

    return v0
.end method

.method public getTotalDuration()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/MyCallsCardItem;->g:F

    return v0
.end method
