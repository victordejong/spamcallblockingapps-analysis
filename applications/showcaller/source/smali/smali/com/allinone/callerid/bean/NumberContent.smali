.class public Lcom/allinone/callerid/bean/NumberContent;
.super Ljava/lang/Object;
.source "NumberContent.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "com_allinone_callerid_bean_NumberContent"
.end annotation


# instance fields
.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        autoGen = true
        isId = true
        name = "id"
    .end annotation
.end field

.field private is_reported:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "is_reported"
    .end annotation
.end field

.field private is_reported_wrong:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "is_reported_wrong"
    .end annotation
.end field

.field private number:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "number"
    .end annotation
.end field

.field private reported_time:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "reported_time"
    .end annotation
.end field

.field private show_submit_comment_time:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "show_submit_comment_time"
    .end annotation
.end field

.field private submit_commentst_time:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "submit_commentst_time"
    .end annotation
.end field

.field private subtype_mark_time:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "subtype_mark_time"
    .end annotation
.end field

.field private suggest_time:J
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "suggest_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/bean/NumberContent;->id:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/NumberContent;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getReported_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/bean/NumberContent;->reported_time:J

    return-wide v0
.end method

.method public getShow_submit_comment_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/bean/NumberContent;->show_submit_comment_time:J

    return-wide v0
.end method

.method public getSubmit_commentst_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/bean/NumberContent;->submit_commentst_time:J

    return-wide v0
.end method

.method public getSubtype_mark_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/bean/NumberContent;->subtype_mark_time:J

    return-wide v0
.end method

.method public getSuggest_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/allinone/callerid/bean/NumberContent;->suggest_time:J

    return-wide v0
.end method

.method public is_reported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/bean/NumberContent;->is_reported:Z

    return v0
.end method

.method public is_reported_wrong()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/bean/NumberContent;->is_reported_wrong:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/bean/NumberContent;->id:I

    return-void
.end method

.method public setIs_reported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/bean/NumberContent;->is_reported:Z

    return-void
.end method

.method public setIs_reported_wrong(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/bean/NumberContent;->is_reported_wrong:Z

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/NumberContent;->number:Ljava/lang/String;

    return-void
.end method

.method public setReported_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/bean/NumberContent;->reported_time:J

    return-void
.end method

.method public setShow_submit_comment_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/bean/NumberContent;->show_submit_comment_time:J

    return-void
.end method

.method public setSubmit_commentst_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/bean/NumberContent;->submit_commentst_time:J

    return-void
.end method

.method public setSubtype_mark_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/bean/NumberContent;->subtype_mark_time:J

    return-void
.end method

.method public setSuggest_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/allinone/callerid/bean/NumberContent;->suggest_time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberContent{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/bean/NumberContent;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/bean/NumberContent;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", is_reported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/allinone/callerid/bean/NumberContent;->is_reported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_reported_wrong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/allinone/callerid/bean/NumberContent;->is_reported_wrong:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", suggest_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/allinone/callerid/bean/NumberContent;->suggest_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", reported_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/allinone/callerid/bean/NumberContent;->reported_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", submit_commentst_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/allinone/callerid/bean/NumberContent;->submit_commentst_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", subtype_mark_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/allinone/callerid/bean/NumberContent;->subtype_mark_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", show_submit_comment_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/allinone/callerid/bean/NumberContent;->show_submit_comment_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
