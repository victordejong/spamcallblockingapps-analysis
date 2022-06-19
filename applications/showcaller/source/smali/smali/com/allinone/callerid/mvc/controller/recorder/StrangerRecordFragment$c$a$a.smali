.class Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a;
.super Ljava/lang/Object;
.source "StrangerRecordFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c;->d:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->f2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$c$a$a;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/recorder/f;->x(Landroid/app/Activity;Lcom/allinone/callerid/i/a/c;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
