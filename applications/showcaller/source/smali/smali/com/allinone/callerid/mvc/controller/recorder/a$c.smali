.class Lcom/allinone/callerid/mvc/controller/recorder/a$c;
.super Ljava/lang/Object;
.source "ContactRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/a;->k2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/recorder/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/allinone/callerid/f/k/b;->d()Lcom/allinone/callerid/f/k/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/f/k/b;->i()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/db/table/DbModel;

    .line 5
    new-instance v3, Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-direct {v3}, Lcom/allinone/callerid/bean/recorder/RecordCall;-><init>()V

    const-string v4, "number"

    .line 6
    invoke-virtual {v2, v4}, Lorg/xutils/db/table/DbModel;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/allinone/callerid/f/k/b;->d()Lcom/allinone/callerid/f/k/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/allinone/callerid/f/k/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {}, Lcom/allinone/callerid/f/k/b;->d()Lcom/allinone/callerid/f/k/b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/allinone/callerid/f/k/b;->e(Ljava/lang/String;)I

    move-result v5

    .line 9
    invoke-virtual {v3, v5}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setRecordcount(I)V

    .line 10
    invoke-virtual {v3, v4}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3, v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setNumber(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->a2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->a2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object v0

    new-instance v2, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;

    invoke-direct {v2, p0, v1}, Lcom/allinone/callerid/mvc/controller/recorder/a$c$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/a$c;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->a2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/a$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/a;->a2(Lcom/allinone/callerid/mvc/controller/recorder/a;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/a$c$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/a$c$b;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/a$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method
