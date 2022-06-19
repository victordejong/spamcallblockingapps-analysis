.class Lcom/callerid/block/sms/MessageBoxListActivity$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->o1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/sms/MessageBoxListActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-static {v2}, Lcom/callerid/block/sms/MessageBoxListActivity;->q0(Lcom/callerid/block/sms/MessageBoxListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->c0(Lcom/callerid/block/sms/MessageBoxListActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$k;->b:Lcom/callerid/block/sms/MessageBoxListActivity;

    new-instance v1, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/sms/MessageBoxListActivity$k$a;-><init>(Lcom/callerid/block/sms/MessageBoxListActivity$k;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
