.class Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;
.super Ljava/lang/Object;
.source "StrangerRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->p2(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;->e:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    iput p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/allinone/callerid/f/k/b;->d()Lcom/allinone/callerid/f/k/b;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;->d:I

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/f/k/b;->j(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/allinone/callerid/bean/recorder/RecordCall;

    .line 5
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getStarttime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 6
    invoke-static {v4}, Lcom/allinone/callerid/util/i;->c(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setRecordtime(Ljava/lang/String;)V

    const/4 v5, 0x3

    .line 7
    invoke-static {v5}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setRecordtimems(Ljava/lang/String;)V

    .line 8
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v3}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getTimespan()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setTimespanstring(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;->e:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->b2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Lcom/allinone/callerid/b/z/g;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/allinone/callerid/b/z/b;->A(Ljava/util/ArrayList;Z)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;->e:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;->e:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f$b;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$f;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
