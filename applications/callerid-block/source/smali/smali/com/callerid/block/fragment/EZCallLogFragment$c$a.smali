.class Lcom/callerid/block/fragment/EZCallLogFragment$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/EZCallLogFragment$c;->a(Ljava/util/ArrayList;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/fragment/EZCallLogFragment$c;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/EZCallLogFragment$c;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c$a;->b:Lcom/callerid/block/fragment/EZCallLogFragment$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c$a;->b:Lcom/callerid/block/fragment/EZCallLogFragment$c;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->b2(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c$a;->b:Lcom/callerid/block/fragment/EZCallLogFragment$c;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->c2(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/fragment/EZCallLogFragment$o;

    move-result-object v0

    const/16 v1, 0x3a99

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c$a;->b:Lcom/callerid/block/fragment/EZCallLogFragment$c;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->d2(Lcom/callerid/block/fragment/EZCallLogFragment;)V

    iget-object v0, p0, Lcom/callerid/block/fragment/EZCallLogFragment$c$a;->b:Lcom/callerid/block/fragment/EZCallLogFragment$c;

    iget-object v0, v0, Lcom/callerid/block/fragment/EZCallLogFragment$c;->a:Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-static {v0}, Lcom/callerid/block/fragment/EZCallLogFragment;->c2(Lcom/callerid/block/fragment/EZCallLogFragment;)Lcom/callerid/block/fragment/EZCallLogFragment$o;

    move-result-object v0

    const/16 v1, 0x3a9a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
