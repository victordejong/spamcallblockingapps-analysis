.class Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a$a;
.super Ljava/lang/Object;
.source "StrangerRecordFragment.java"

# interfaces
.implements Lcom/allinone/callerid/util/j1/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "record"

    const-string v1, "\u5f00\u542f\u4e86\u6743\u9650"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "permissions_enabled"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a$a;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/recorder/f;->t(Landroid/app/Activity;Lcom/allinone/callerid/i/a/c;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->h2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V

    :goto_0
    return-void
.end method
