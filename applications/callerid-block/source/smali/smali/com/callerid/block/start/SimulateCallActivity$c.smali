.class Lcom/callerid/block/start/SimulateCallActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/SimulateCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/SimulateCallActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/SimulateCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity$c;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/start/SimulateCallActivity$c;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-static {v0}, Lcom/callerid/block/start/SimulateCallActivity;->Q(Lcom/callerid/block/start/SimulateCallActivity;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    sget-object v0, Lcom/callerid/block/f/b;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/start/SimulateCallActivity$c;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/f/c;->Z(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/start/SimulateCallActivity$c;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
