.class public Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallLogData"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

.field private b:I

.field private c:J

.field private d:J

.field private e:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;IJJLjava/util/Date;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->a:Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p2, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->b:I

    .line 50
    iput-wide p3, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->c:J

    .line 51
    iput-wide p5, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->d:J

    .line 52
    iput-object p7, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->e:Ljava/util/Date;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->b:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;

    .line 86
    iget v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->b:I

    iget v2, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->b:I

    if-eq v1, v2, :cond_2

    return v0

    .line 87
    :cond_2
    iget-wide v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->c:J

    iget-wide v3, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->c:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    return v0

    .line 88
    :cond_3
    iget-wide v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->d:J

    iget-wide v3, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    return v0

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->e:Ljava/util/Date;

    iget-object p1, p1, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->e:Ljava/util/Date;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public getCallId()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->c:J

    return-wide v0
.end method

.method public getCallType()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->b:I

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->e:Ljava/util/Date;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->d:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 95
    iget v0, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget-wide v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->c:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-wide v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->d:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData;->e:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
