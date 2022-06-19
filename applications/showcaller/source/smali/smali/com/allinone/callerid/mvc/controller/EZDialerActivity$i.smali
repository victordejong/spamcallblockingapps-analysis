.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;
.super Ljava/lang/Object;
.source "EZDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->P0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Q0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->S0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Y(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->a0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/List;)Ljava/util/List;

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->b0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->N0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->c0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->e0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;Ljava/util/List;Ljava/util/HashMap;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->f0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$i;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->g0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    return-void
.end method
