.class Lcom/callerid/block/fragment/EZCallLogFragment$p;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/fragment/EZCallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/EZCallLogFragment;


# direct methods
.method private constructor <init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$p;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callerid/block/fragment/EZCallLogFragment;Lcom/callerid/block/fragment/EZCallLogFragment$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/fragment/EZCallLogFragment$p;-><init>(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.callerid.block.RELOAD_DATA_VEST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "tony"

    const-string v0, "reload_data_vest"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$p;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-virtual {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->u2()V

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.callerid.block.CLOSE_AD_VEST"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$p;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->M1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$p;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {p1}, Lcom/callerid/block/fragment/EZCallLogFragment;->M1(Lcom/callerid/block/fragment/EZCallLogFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method
