.class Lcom/allinone/callerid/main/LogActivity$d;
.super Ljava/lang/Object;
.source "LogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/main/LogActivity;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/main/LogActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/main/LogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/main/LogActivity$d;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$d;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->i0(Lcom/allinone/callerid/main/LogActivity;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    .line 4
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 5
    iput v2, v1, Landroid/os/Message;->what:I

    .line 6
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$d;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->e0(Lcom/allinone/callerid/main/LogActivity;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput v0, v1, Landroid/os/Message;->what:I

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$d;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->g0(Lcom/allinone/callerid/main/LogActivity;)I

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$d;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->k0(Lcom/allinone/callerid/main/LogActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v0, 0x3e8

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return-void
.end method
