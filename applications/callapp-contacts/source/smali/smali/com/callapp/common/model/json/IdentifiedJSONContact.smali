.class public Lcom/callapp/common/model/json/IdentifiedJSONContact;
.super Lcom/callapp/common/model/json/JSONContact;
.source "SourceFile"


# instance fields
.field private comType:I

.field private disableNotification:Z

.field private favorite:Z

.field private firstSeen:J

.field private groupName:Ljava/lang/String;

.field private lastNotificationShowed:J

.field private recognizedPersonOrigin:I

.field private seenCount:I

.field private senderName:Ljava/lang/String;

.field private when:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/callapp/common/model/json/JSONContact;-><init>()V

    return-void
.end method


# virtual methods
.method public getComType()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->comType:I

    return v0
.end method

.method public getFirstSeen()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->firstSeen:J

    return-wide v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastNotificationShowed()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->lastNotificationShowed:J

    return-wide v0
.end method

.method public getRecognizedPersonOrigin()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->recognizedPersonOrigin:I

    return v0
.end method

.method public getSeenCount()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->seenCount:I

    return v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->when:J

    return-wide v0
.end method

.method public isDisableNotification()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->disableNotification:Z

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->favorite:Z

    return v0
.end method

.method public setComType(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->comType:I

    return-void
.end method

.method public setDisableNotification(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->disableNotification:Z

    return-void
.end method

.method public setFavorite(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->favorite:Z

    return-void
.end method

.method public setFirstSeen(J)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->firstSeen:J

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setLastNotificationShowed(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->lastNotificationShowed:J

    return-void
.end method

.method public setRecognizedPersonOrigin(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->recognizedPersonOrigin:I

    return-void
.end method

.method public setSeenCount(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->seenCount:I

    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->senderName:Ljava/lang/String;

    return-void
.end method

.method public setWhen(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/callapp/common/model/json/IdentifiedJSONContact;->when:J

    return-void
.end method
