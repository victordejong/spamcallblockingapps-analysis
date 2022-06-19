.class Lcom/allinone/callerid/util/recorder/f$o;
.super Ljava/lang/Object;
.source "RecorderUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/f;->u(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->f()Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->f()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/f;->g(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->h()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->j()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->h()Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Lcom/allinone/callerid/util/recorder/f;->j()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/f;->i(Landroid/os/Handler;)Landroid/os/Handler;

    .line 7
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/f;->k(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_1
    return-void
.end method
