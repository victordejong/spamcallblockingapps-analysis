.class Lcom/allinone/callerid/service/PhoneSceneService$p;
.super Landroid/os/Handler;
.source "PhoneSceneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/service/PhoneSceneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "p"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/allinone/callerid/service/PhoneSceneService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$p;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService;Lcom/allinone/callerid/service/PhoneSceneService$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/service/PhoneSceneService$p;-><init>(Lcom/allinone/callerid/service/PhoneSceneService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/service/PhoneSceneService;

    if-eqz v0, :cond_7

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "num"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "can_record"

    .line 4
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "incoming_number"

    .line 5
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-direct {v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;-><init>()V

    .line 7
    invoke-virtual {v2, v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setNumber(Ljava/lang/String;)V

    const/16 v1, 0x6e

    .line 8
    invoke-virtual {v2, v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setPhonestatus(I)V

    .line 9
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u81ea\u52a8\u5f55\u97f3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getPhonestatus()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "wbb"

    invoke-static {v3, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/service/b;->f()Lcom/allinone/callerid/service/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/service/b;->k(Lcom/allinone/callerid/bean/recorder/RecordCall;)V

    .line 12
    :cond_1
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_0

    .line 13
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "get_contact_exist"

    .line 15
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 16
    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/service/PhoneSceneService;->d(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/f0;->O(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 18
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isInBlackList"

    .line 20
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "is_in_custom_list"

    .line 21
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "contact_exist"

    .line 22
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "contact_name"

    .line 23
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "is_enable_block"

    .line 24
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "is_enable_unknow"

    .line 25
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "contacts_id"

    .line 26
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v7, :cond_2

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    :cond_2
    if-eqz v8, :cond_6

    if-nez v5, :cond_6

    .line 27
    :cond_3
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_4

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCalling:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/allinone/callerid/util/h1;->d:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "tony"

    invoke-static {v3, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_4
    sget-boolean v1, Lcom/allinone/callerid/util/h1;->d:Z

    if-nez v1, :cond_5

    .line 30
    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->m(Landroid/content/Context;)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/allinone/callerid/util/d;->h(Ljava/lang/String;J)V

    .line 32
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v3, "block_list"

    invoke-virtual {v1, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/allinone/callerid/service/PhoneSceneService$p$a;

    invoke-direct {v3, p0, v0, v2}, Lcom/allinone/callerid/service/PhoneSceneService$p$a;-><init>(Lcom/allinone/callerid/service/PhoneSceneService$p;Lcom/allinone/callerid/service/PhoneSceneService;Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/allinone/callerid/i/a/k/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/b;)V

    .line 34
    :cond_5
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 35
    :cond_6
    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3, v2, v6, v1}, Lcom/allinone/callerid/service/PhoneSceneService;->c(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 37
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
