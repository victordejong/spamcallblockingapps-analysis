.class public Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:F

.field public m:F

.field public n:F

.field private o:F

.field private p:Ljava/lang/String;

.field private q:Lcom/callapp/framework/phone/Phone;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->p:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->q:Lcom/callapp/framework/phone/Phone;

    .line 38
    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContactId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getIncomingCalls()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->g:I

    return v0
.end method

.method public getIncomingDay()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->a:I

    return v0
.end method

.method public getIncomingDuration()F
    .locals 1

    .line 139
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->m:F

    return v0
.end method

.method public getIncomingNight()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->b:I

    return v0
.end method

.method public getLongestCall()F
    .locals 1

    .line 147
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->o:F

    return v0
.end method

.method public getMissedCalls()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->i:I

    return v0
.end method

.method public getNotAnsweredCalls()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->j:I

    return v0
.end method

.method public getOutgoingCalls()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->h:I

    return v0
.end method

.method public getOutgoingDay()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->c:I

    return v0
.end method

.method public getOutgoingDuration()F
    .locals 1

    .line 135
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->l:F

    return v0
.end method

.method public getOutgoingNight()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->d:I

    return v0
.end method

.method public getTimeSlotData()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCalls()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->k:I

    return v0
.end method

.method public getTotalDuration()F
    .locals 1

    .line 143
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->n:F

    return v0
.end method

.method public getTotalIncoming()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->e:I

    return v0
.end method

.method public getTotalOutgoing()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->f:I

    return v0
.end method

.method public isHasVideo()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->t:Z

    return v0
.end method

.method public isShowData()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->u:Z

    return v0
.end method

.method public setHasVideo(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->t:Z

    return-void
.end method

.method public setLongestCall(F)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->o:F

    return-void
.end method

.method public setShowData(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->u:Z

    return-void
.end method

.method public setTimeSlotData(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->s:Ljava/lang/String;

    return-void
.end method
