.class Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f$a;
.super Ljava/lang/Object;
.source "EZDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a(Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->Z(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->G0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->H0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->I0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f$a;->d:Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/EZDialerActivity$f;->a:Lcom/allinone/callerid/mvc/controller/EZDialerActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZDialerActivity;->H0(Lcom/allinone/callerid/mvc/controller/EZDialerActivity;)Lcom/allinone/callerid/mvc/controller/EZDialerActivity$r;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
