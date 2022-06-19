.class Lcom/callerid/block/start/LogActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/LogActivity;->v0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/LogActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/LogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/LogActivity$c;->b:Lcom/callerid/block/start/LogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$c;->b:Lcom/callerid/block/start/LogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/callerid/block/util/t0;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/start/LogActivity;->a0(Lcom/callerid/block/start/LogActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$c;->b:Lcom/callerid/block/start/LogActivity;

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->b0(Lcom/callerid/block/start/LogActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    if-eqz v0, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$c;->b:Lcom/callerid/block/start/LogActivity;

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->W(Lcom/callerid/block/start/LogActivity;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$c;->b:Lcom/callerid/block/start/LogActivity;

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->Y(Lcom/callerid/block/start/LogActivity;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$c;->b:Lcom/callerid/block/start/LogActivity;

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->d0(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/start/LogActivity$e;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-void
.end method
