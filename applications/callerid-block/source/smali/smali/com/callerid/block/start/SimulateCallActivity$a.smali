.class Lcom/callerid/block/start/SimulateCallActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity$a;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity$a;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SimulateCallActivity;->Q(Lcom/callerid/block/start/SimulateCallActivity;)Landroid/os/Vibrator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity$a;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SimulateCallActivity;->Q(Lcom/callerid/block/start/SimulateCallActivity;)Landroid/os/Vibrator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    sget-object p1, Lcom/callerid/block/f/b;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity$a;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-static {p1}, Lcom/callerid/block/f/c;->Z(Landroid/content/Context;)V

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity$a;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SimulateCallActivity;->R(Lcom/callerid/block/start/SimulateCallActivity;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity$a;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SimulateCallActivity;->S(Lcom/callerid/block/start/SimulateCallActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity$a;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SimulateCallActivity;->S(Lcom/callerid/block/start/SimulateCallActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/start/SimulateCallActivity$a;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-static {v0}, Lcom/callerid/block/start/SimulateCallActivity;->R(Lcom/callerid/block/start/SimulateCallActivity;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/start/SimulateCallActivity$a;->b:Lcom/callerid/block/start/SimulateCallActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
