.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i$a;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/y/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v1, p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->N0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->M0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->I0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->M0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->K0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "def_cc=="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->I0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "searchCC"

    invoke-static {v1, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->D1()V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i$a;->a:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->N0(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method
