.class Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/MainActivity$d0;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity$d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;->d:Lcom/allinone/callerid/mvc/controller/MainActivity$d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->C1(J)V

    const-string v0, "3"

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->h2(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;->d:Lcom/allinone/callerid/mvc/controller/MainActivity$d0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->j0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;->d:Lcom/allinone/callerid/mvc/controller/MainActivity$d0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {}, Lcom/allinone/callerid/d/f/f;->l()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->l0(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)Z

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;->d:Lcom/allinone/callerid/mvc/controller/MainActivity$d0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/MainActivity$d0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c$a;-><init>(Lcom/allinone/callerid/mvc/controller/MainActivity$d0$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
