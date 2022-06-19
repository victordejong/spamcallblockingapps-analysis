.class public Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$UpdateViewReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StrangerRecordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateViewReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$UpdateViewReceiver;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.allinone.callerid.UPDATEVIEW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$UpdateViewReceiver;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->o2()V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment$UpdateViewReceiver;->a:Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;->b2(Lcom/allinone/callerid/mvc/controller/recorder/StrangerRecordFragment;)Lcom/allinone/callerid/b/z/g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    :cond_0
    return-void
.end method
