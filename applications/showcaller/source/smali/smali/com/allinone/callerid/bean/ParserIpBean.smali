.class public Lcom/allinone/callerid/bean/ParserIpBean;
.super Ljava/lang/Object;
.source "ParserIpBean.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "parseripbean"
.end annotation


# instance fields
.field private city:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "city"
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "country"
    .end annotation
.end field

.field private country_full:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "country_full"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        autoGen = true
        isId = true
        name = "id"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "state"
    .end annotation
.end field

.field private state_full:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "state_full"
    .end annotation
.end field

.field private true_ip:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "true_ip"
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
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/ParserIpBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/ParserIpBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry_full()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/ParserIpBean;->country_full:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/bean/ParserIpBean;->id:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/ParserIpBean;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getState_full()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/ParserIpBean;->state_full:Ljava/lang/String;

    return-object v0
.end method

.method public getTrue_ip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/ParserIpBean;->true_ip:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/ParserIpBean;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/ParserIpBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setCountry_full(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/ParserIpBean;->country_full:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/bean/ParserIpBean;->id:I

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/ParserIpBean;->state:Ljava/lang/String;

    return-void
.end method

.method public setState_full(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/ParserIpBean;->state_full:Ljava/lang/String;

    return-void
.end method

.method public setTrue_ip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/ParserIpBean;->true_ip:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParserIpBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/allinone/callerid/bean/ParserIpBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", true_ip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/bean/ParserIpBean;->true_ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/ParserIpBean;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country_full=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/ParserIpBean;->country_full:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/ParserIpBean;->state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state_full=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/ParserIpBean;->state_full:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", city=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/bean/ParserIpBean;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
