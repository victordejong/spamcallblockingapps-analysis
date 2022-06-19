.class public Lcom/callapp/contacts/model/contact/CallHistoryData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final callId:J

.field private final callType:I

.field private final duration:J

.field private final lastCallTimeStamp:Ljava/util/Date;

.field private simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;


# direct methods
.method public constructor <init>(JLjava/util/Date;IJLcom/callapp/contacts/manager/sim/SimManager$SimId;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/callapp/contacts/model/contact/CallHistoryData;->callId:J

    .line 17
    iput p4, p0, Lcom/callapp/contacts/model/contact/CallHistoryData;->callType:I

    .line 18
    iput-object p3, p0, Lcom/callapp/contacts/model/contact/CallHistoryData;->lastCallTimeStamp:Ljava/util/Date;

    .line 19
    iput-wide p5, p0, Lcom/callapp/contacts/model/contact/CallHistoryData;->duration:J

    .line 20
    iput-object p7, p0, Lcom/callapp/contacts/model/contact/CallHistoryData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-void
.end method


# virtual methods
.method public getCallHistorySimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CallHistoryData;->simId:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object v0
.end method

.method public getCallId()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/CallHistoryData;->callId:J

    return-wide v0
.end method

.method public getCallType()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/callapp/contacts/model/contact/CallHistoryData;->callType:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/callapp/contacts/model/contact/CallHistoryData;->duration:J

    return-wide v0
.end method

.method public getLastCallTimeStamp()Ljava/util/Date;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/CallHistoryData;->lastCallTimeStamp:Ljava/util/Date;

    return-object v0
.end method
