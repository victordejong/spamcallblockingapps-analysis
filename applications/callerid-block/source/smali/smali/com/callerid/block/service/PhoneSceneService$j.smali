.class Lcom/callerid/block/service/PhoneSceneService$j;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/service/PhoneSceneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/service/PhoneSceneService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/callerid/block/service/PhoneSceneService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/service/PhoneSceneService$j;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/callerid/block/service/PhoneSceneService$j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/service/PhoneSceneService;

    if-eqz v0, :cond_6

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "num"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "get_contact_exist2"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/callerid/block/util/n0;->l0(Landroid/content/Context;J)V

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/z;->o(Landroid/content/Context;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "get_contact_exist"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v1, "is_blocked"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0}, Lcom/callerid/block/service/PhoneSceneService;->c(Lcom/callerid/block/service/PhoneSceneService;)J

    move-result-wide v4

    move-object v1, v0

    move-object v6, v9

    move v7, v10

    invoke-static/range {v1 .. v8}, Lcom/callerid/block/service/PhoneSceneService;->d(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;IJLjava/lang/String;ZZ)V

    if-nez v10, :cond_6

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->E(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string p1, "0"

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/callerid/block/util/n0;->E(Landroid/content/Context;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v9, p1, v1}, Lcom/callerid/block/service/PhoneSceneService;->e(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/z;->q(Landroid/content/Context;)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isInBlackList"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "contact_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/callerid/block/util/n0;->y(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    sget-boolean p1, Lcom/callerid/block/util/t0;->b:Z

    if-nez p1, :cond_6

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lcom/callerid/block/util/n0;->D1(Landroid/content/Context;Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v1, "block_list"

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/n0;->z(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    sget-boolean p1, Lcom/callerid/block/util/t0;->b:Z

    if-nez p1, :cond_6

    :goto_2
    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/c;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/n0;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/callerid/block/util/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean p1, Lcom/callerid/block/util/t0;->b:Z

    if-nez p1, :cond_6

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v1, p1}, Lcom/callerid/block/service/PhoneSceneService;->b(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
