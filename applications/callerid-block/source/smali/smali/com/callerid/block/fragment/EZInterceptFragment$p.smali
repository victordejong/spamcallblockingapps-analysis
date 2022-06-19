.class Lcom/callerid/block/fragment/EZInterceptFragment$p;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/fragment/EZInterceptFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "p"
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/EZInterceptFragment;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZInterceptFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$p;->a:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$p;->a:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->Y1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/fragment/EZInterceptFragment$p;->a:Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZInterceptFragment;->Y1(Lcom/callerid/block/fragment/EZInterceptFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V
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
