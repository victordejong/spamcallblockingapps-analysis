.class public Lcom/callerid/block/bean/NumberContent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private id:I

.field private is_reported:Z

.field private number:Ljava/lang/String;

.field private reported_time:J

.field private suggest_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/bean/NumberContent;->id:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/NumberContent;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getReported_time()J
    .locals 2

    iget-wide v0, p0, Lcom/callerid/block/bean/NumberContent;->reported_time:J

    return-wide v0
.end method

.method public getSuggest_time()J
    .locals 2

    iget-wide v0, p0, Lcom/callerid/block/bean/NumberContent;->suggest_time:J

    return-wide v0
.end method

.method public isIs_reported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callerid/block/bean/NumberContent;->is_reported:Z

    return v0
.end method

.method public is_reported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callerid/block/bean/NumberContent;->is_reported:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/bean/NumberContent;->id:I

    return-void
.end method

.method public setIs_reported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/bean/NumberContent;->is_reported:Z

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/NumberContent;->number:Ljava/lang/String;

    return-void
.end method

.method public setReported_time(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callerid/block/bean/NumberContent;->reported_time:J

    return-void
.end method

.method public setSuggest_time(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callerid/block/bean/NumberContent;->suggest_time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberContent{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callerid/block/bean/NumberContent;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/bean/NumberContent;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", is_reported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callerid/block/bean/NumberContent;->is_reported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reported_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callerid/block/bean/NumberContent;->reported_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", suggest_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/callerid/block/bean/NumberContent;->suggest_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
