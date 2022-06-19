.class Lcom/callerid/block/fragment/b$i;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/fragment/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/b;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/b;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/b$i;->a:Lcom/callerid/block/fragment/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-string p1, "testbuy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u77ed\u4fe1\u63a5\u6536\u5e7f\u64ad\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.callerid.block.CLOSE_AD_VEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/b$i;->a:Lcom/callerid/block/fragment/b;

    invoke-static {p1}, Lcom/callerid/block/fragment/b;->P1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/b/k;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/b$i;->a:Lcom/callerid/block/fragment/b;

    invoke-static {p1}, Lcom/callerid/block/fragment/b;->P1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/b/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/b/k;->j()V

    iget-object p1, p0, Lcom/callerid/block/fragment/b$i;->a:Lcom/callerid/block/fragment/b;

    invoke-static {p1}, Lcom/callerid/block/fragment/b;->P1(Lcom/callerid/block/fragment/b;)Lcom/callerid/block/b/k;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
