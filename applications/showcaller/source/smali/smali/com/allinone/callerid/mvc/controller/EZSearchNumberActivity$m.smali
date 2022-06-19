.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$m;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->w1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$m;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$m;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->c1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$m;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->a1(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
