.class public Lcom/allinone/callerid/bean/QuickContactBean;
.super Ljava/lang/Object;
.source "QuickContactBean.java"


# instance fields
.field private bean:Lcom/allinone/callerid/search/CallLogBean;

.field private isquick:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Lcom/allinone/callerid/search/CallLogBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/QuickContactBean;->bean:Lcom/allinone/callerid/search/CallLogBean;

    return-object v0
.end method

.method public getIsquick()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/QuickContactBean;->isquick:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBean(Lcom/allinone/callerid/search/CallLogBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/QuickContactBean;->bean:Lcom/allinone/callerid/search/CallLogBean;

    return-void
.end method

.method public setIsquick(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/QuickContactBean;->isquick:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QuickContactBean{bean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/bean/QuickContactBean;->bean:Lcom/allinone/callerid/search/CallLogBean;

    .line 2
    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isquick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/bean/QuickContactBean;->isquick:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
