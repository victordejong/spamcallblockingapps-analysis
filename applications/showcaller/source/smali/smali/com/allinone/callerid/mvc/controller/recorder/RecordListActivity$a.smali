.class Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$a;
.super Ljava/lang/Object;
.source "RecordListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/allinone/callerid/f/k/b;->d()Lcom/allinone/callerid/f/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/f/k/b;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "MMM dd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "mm:ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/bean/recorder/RecordCall;

    .line 6
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getStarttime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setRecordtime(Ljava/lang/String;)V

    .line 7
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getStarttime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/allinone/callerid/util/i;->m(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setRecordtimems(Ljava/lang/String;)V

    .line 8
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getTimespan()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setTimespanstring(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$a$a;

    invoke-direct {v2, p0, v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$a;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
