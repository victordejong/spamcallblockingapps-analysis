.class public Lcom/allinone/callerid/callscreen/bean/ActionInfo;
.super Ljava/lang/Object;
.source "ActionInfo.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "ActionInfo"
.end annotation


# instance fields
.field private data_id:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "data_id"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        autoGen = true
        isId = true
        name = "id"
        property = "NOT NULL"
    .end annotation
.end field

.field private isLike:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isLike"
    .end annotation
.end field

.field private isReport:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isReport"
    .end annotation
.end field

.field private like_counts:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "like_counts"
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
.method public getData_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->data_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->id:I

    return v0
.end method

.method public getLike_counts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->like_counts:I

    return v0
.end method

.method public isLike()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->isLike:Z

    return v0
.end method

.method public isReport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->isReport:Z

    return v0
.end method

.method public setData_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->data_id:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->id:I

    return-void
.end method

.method public setLike(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->isLike:Z

    return-void
.end method

.method public setLike_counts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->like_counts:I

    return-void
.end method

.method public setReport(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->isReport:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->data_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isLike="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->isLike:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", like_counts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->like_counts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/allinone/callerid/callscreen/bean/ActionInfo;->isReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
