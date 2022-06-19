.class Lcom/callerid/block/start/LogActivity$d;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/start/LogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/LogActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/LogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/LogActivity$d;->b:Lcom/callerid/block/start/LogActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$d;->b:Lcom/callerid/block/start/LogActivity;

    invoke-virtual {v0}, Lcom/callerid/block/start/LogActivity;->o0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    if-eqz v0, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$d;->b:Lcom/callerid/block/start/LogActivity;

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->W(Lcom/callerid/block/start/LogActivity;)I

    const/16 v0, 0x19b

    iput v0, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$d;->b:Lcom/callerid/block/start/LogActivity;

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->Y(Lcom/callerid/block/start/LogActivity;)I

    const/16 v0, 0x19a

    iput v0, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$d;->b:Lcom/callerid/block/start/LogActivity;

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->Y(Lcom/callerid/block/start/LogActivity;)I

    const/16 v0, 0x28

    iput v0, v1, Landroid/os/Message;->what:I

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$d;->b:Lcom/callerid/block/start/LogActivity;

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
