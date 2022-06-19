.class public Lcom/telguarder/features/postCallStatistics/CallHistoryItem;
.super Lio/realm/RealmObject;
.source "CallHistoryItem.java"

# interfaces
.implements Lio/realm/com_telguarder_features_postCallStatistics_CallHistoryItemRealmProxyInterface;


# instance fields
.field private date:J

.field private duration:I

.field private number:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lio/realm/RealmObject;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {v0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->realmGet$date()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->realmGet$duration()I

    move-result v0

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->realmGet$number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->realmGet$type()I

    move-result v0

    return v0
.end method

.method public realmGet$date()J
    .locals 2

    iget-wide v0, p0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->date:J

    return-wide v0
.end method

.method public realmGet$duration()I
    .locals 1

    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->duration:I

    return v0
.end method

.method public realmGet$number()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->number:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$type()I
    .locals 1

    iget v0, p0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->type:I

    return v0
.end method

.method public realmSet$date(J)V
    .locals 0

    iput-wide p1, p0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->date:J

    return-void
.end method

.method public realmSet$duration(I)V
    .locals 0

    iput p1, p0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->duration:I

    return-void
.end method

.method public realmSet$number(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->number:Ljava/lang/String;

    return-void
.end method

.method public realmSet$type(I)V
    .locals 0

    iput p1, p0, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->type:I

    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->realmSet$date(J)V

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->realmSet$duration(I)V

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->realmSet$number(Ljava/lang/String;)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallStatistics/CallHistoryItem;->realmSet$type(I)V

    return-void
.end method
