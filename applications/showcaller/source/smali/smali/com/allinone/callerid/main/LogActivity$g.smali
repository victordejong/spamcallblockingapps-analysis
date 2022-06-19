.class Lcom/allinone/callerid/main/LogActivity$g;
.super Ljava/lang/Thread;
.source "LogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/main/LogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/main/LogActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/main/LogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/main/LogActivity$g;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "status"

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/main/LogActivity$g;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v1}, Lcom/allinone/callerid/main/LogActivity;->l0(Lcom/allinone/callerid/main/LogActivity;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    if-eqz v1, :cond_2

    .line 4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$g;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->g0(Lcom/allinone/callerid/main/LogActivity;)I

    const/16 v0, 0xd2

    .line 8
    iput v0, v2, Landroid/os/Message;->what:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0xd3

    .line 9
    iput v0, v2, Landroid/os/Message;->what:I

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$g;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->e0(Lcom/allinone/callerid/main/LogActivity;)I

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$g;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->g0(Lcom/allinone/callerid/main/LogActivity;)I

    const/16 v0, 0x14

    .line 12
    iput v0, v2, Landroid/os/Message;->what:I

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$g;->d:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->k0(Lcom/allinone/callerid/main/LogActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v0, 0x3e8

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    return-void
.end method
