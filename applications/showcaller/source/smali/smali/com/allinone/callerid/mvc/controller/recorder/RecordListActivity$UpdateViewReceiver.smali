.class public Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$UpdateViewReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecordListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateViewReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$UpdateViewReceiver;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.allinone.callerid.UPDATERECORDLIST"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity$UpdateViewReceiver;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;->Z(Lcom/allinone/callerid/mvc/controller/recorder/RecordListActivity;)V

    :cond_0
    return-void
.end method
