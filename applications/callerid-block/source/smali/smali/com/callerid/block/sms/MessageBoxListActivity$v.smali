.class Lcom/callerid/block/sms/MessageBoxListActivity$v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/klinker/android/send_message/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->Q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/sms/MessageBoxListActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$v;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$v;->a:Lcom/callerid/block/sms/MessageBoxListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callerid/block/sms/g;->b(Landroid/content/Context;Z)Lcom/callerid/block/sms/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/sms/MessageBoxListActivity;->W(Lcom/callerid/block/sms/MessageBoxListActivity;Lcom/callerid/block/sms/g;)Lcom/callerid/block/sms/g;

    return-void
.end method
