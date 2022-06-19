.class Lcom/callerid/block/main/MainActivity$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity;->t1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$m;->b:Lcom/callerid/block/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$m;->b:Lcom/callerid/block/main/MainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/callerid/block/main/MainActivity;->x0(Lcom/callerid/block/main/MainActivity;Z)Z

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity$m;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/callerid/block/main/MainActivity$m;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$m;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->y0(Lcom/callerid/block/main/MainActivity;)Ljava/util/TimerTask;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$m;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->y0(Lcom/callerid/block/main/MainActivity;)Ljava/util/TimerTask;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$m;->b:Lcom/callerid/block/main/MainActivity;

    new-instance p2, Lcom/callerid/block/main/MainActivity$m$a;

    invoke-direct {p2, p0}, Lcom/callerid/block/main/MainActivity$m$a;-><init>(Lcom/callerid/block/main/MainActivity$m;)V

    invoke-static {p1, p2}, Lcom/callerid/block/main/MainActivity;->z0(Lcom/callerid/block/main/MainActivity;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$m;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->q0(Lcom/callerid/block/main/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object p1, p0, Lcom/callerid/block/main/MainActivity$m;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {p1}, Lcom/callerid/block/main/MainActivity;->y0(Lcom/callerid/block/main/MainActivity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p2, "overlay_per_dialog_click"

    invoke-virtual {p1, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
