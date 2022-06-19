.class Lcom/callerid/block/util/s$a;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/util/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/util/s;


# direct methods
.method constructor <init>(Lcom/callerid/block/util/s;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/s$a;->a:Lcom/callerid/block/util/s;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/callerid/block/util/s$a;->a:Lcom/callerid/block/util/s;

    invoke-static {p2}, Lcom/callerid/block/util/s;->a(Lcom/callerid/block/util/s;)Lcom/callerid/block/util/s$b;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "homekey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/callerid/block/util/s$a;->a:Lcom/callerid/block/util/s;

    invoke-static {p1}, Lcom/callerid/block/util/s;->a(Lcom/callerid/block/util/s;)Lcom/callerid/block/util/s$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/callerid/block/util/s$b;->a()V

    goto :goto_0

    :cond_0
    const-string p2, "recentapps"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/util/s$a;->a:Lcom/callerid/block/util/s;

    invoke-static {p1}, Lcom/callerid/block/util/s;->a(Lcom/callerid/block/util/s;)Lcom/callerid/block/util/s$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/callerid/block/util/s$b;->b()V

    :cond_1
    :goto_0
    return-void
.end method
