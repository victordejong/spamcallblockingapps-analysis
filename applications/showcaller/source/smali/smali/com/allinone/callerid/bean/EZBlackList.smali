.class public Lcom/allinone/callerid/bean/EZBlackList;
.super Ljava/lang/Object;
.source "EZBlackList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "blacklist"
.end annotation


# instance fields
.field private address:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "address"
    .end annotation
.end field

.field private formatnumber:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "formatnumber"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        autoGen = true
        isId = true
        name = "_id"
    .end annotation
.end field

.field private ismyblocklist:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "ismyblocklist"
    .end annotation
.end field

.field private ismyblocklistfromspams:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "ismyblocklistfromspams"
    .end annotation
.end field

.field private isselected:Z
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "isselected"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "name"
    .end annotation
.end field

.field private number:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "number"
    .end annotation
.end field

.field private operator:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "operator"
    .end annotation
.end field

.field private report_count:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "report_count"
    .end annotation
.end field

.field private score_level:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "score_level"
    .end annotation
.end field

.field private spam_type:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "spam_type"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "type"
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
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->formatnumber:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->id:I

    return v0
.end method

.method public getIs_myblock()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->ismyblocklist:Ljava/lang/String;

    return-object v0
.end method

.method public getIsmyblocklistfromspams()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->ismyblocklistfromspams:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getReport_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->report_count:Ljava/lang/String;

    return-object v0
.end method

.method public getScore_level()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->score_level:Ljava/lang/String;

    return-object v0
.end method

.method public getSpam_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->spam_type:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isselected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/bean/EZBlackList;->isselected:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->address:Ljava/lang/String;

    return-void
.end method

.method public setFormat_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->formatnumber:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->id:I

    return-void
.end method

.method public setIs_myblock(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->ismyblocklist:Ljava/lang/String;

    return-void
.end method

.method public setIsmyblocklistfromspams(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->ismyblocklistfromspams:Ljava/lang/String;

    return-void
.end method

.method public setIsselected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->isselected:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->number:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->operator:Ljava/lang/String;

    return-void
.end method

.method public setReport_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->report_count:Ljava/lang/String;

    return-void
.end method

.method public setScore_level(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->score_level:Ljava/lang/String;

    return-void
.end method

.method public setSpam_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->spam_type:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/EZBlackList;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EZBlackList{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/bean/EZBlackList;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/EZBlackList;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", number=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/EZBlackList;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", formatnumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/EZBlackList;->formatnumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ismyblocklistfromspams=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/EZBlackList;->ismyblocklistfromspams:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ismyblocklist=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/EZBlackList;->ismyblocklist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/EZBlackList;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", spam_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/EZBlackList;->spam_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", operator=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/EZBlackList;->operator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", address=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/EZBlackList;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", report_count=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/EZBlackList;->report_count:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", score_level=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/EZBlackList;->score_level:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isselected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/allinone/callerid/bean/EZBlackList;->isselected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
