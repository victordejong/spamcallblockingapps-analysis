.class public Lcom/callerid/block/bean/MessageBean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private date:Ljava/lang/String;

.field private date_time:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageOrVideo:I

.field private isMms:Z

.field private isSelect:Z

.field private isSendIng:Z

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private partId:Ljava/lang/String;

.field private spamtag:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private time:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/MessageBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDate_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/MessageBean;->date_time:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/MessageBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageOrVideo()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/bean/MessageBean;->imageOrVideo:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/MessageBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/MessageBean;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPartId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/MessageBean;->partId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpamtag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/MessageBean;->spamtag:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/MessageBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/callerid/block/bean/MessageBean;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/bean/MessageBean;->type:I

    return v0
.end method

.method public isMms()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callerid/block/bean/MessageBean;->isMms:Z

    return v0
.end method

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callerid/block/bean/MessageBean;->isSelect:Z

    return v0
.end method

.method public isSendIng()Z
    .locals 1

    iget-boolean v0, p0, Lcom/callerid/block/bean/MessageBean;->isSendIng:Z

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/MessageBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setDate_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/MessageBean;->date_time:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/MessageBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setImageOrVideo(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/bean/MessageBean;->imageOrVideo:I

    return-void
.end method

.method public setMms(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/bean/MessageBean;->isMms:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/MessageBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/MessageBean;->number:Ljava/lang/String;

    return-void
.end method

.method public setPartId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/MessageBean;->partId:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/bean/MessageBean;->isSelect:Z

    return-void
.end method

.method public setSendIng(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/bean/MessageBean;->isSendIng:Z

    return-void
.end method

.method public setSpamtag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/MessageBean;->spamtag:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/MessageBean;->text:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/callerid/block/bean/MessageBean;->time:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/bean/MessageBean;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageBean{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/bean/MessageBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/MessageBean;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", date=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/MessageBean;->date:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", date_time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/MessageBean;->date_time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/MessageBean;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", spamtag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/MessageBean;->spamtag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/callerid/block/bean/MessageBean;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callerid/block/bean/MessageBean;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", isMms="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/callerid/block/bean/MessageBean;->isMms:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", partId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/bean/MessageBean;->partId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", imageOrVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callerid/block/bean/MessageBean;->imageOrVideo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSendIng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callerid/block/bean/MessageBean;->isSendIng:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
