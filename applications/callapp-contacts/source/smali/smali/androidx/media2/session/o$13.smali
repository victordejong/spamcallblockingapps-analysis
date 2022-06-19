.class final Landroidx/media2/session/o$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/b$b;

.field final synthetic b:Landroidx/media2/session/SessionCommand;

.field final synthetic c:I

.field final synthetic d:Landroidx/media2/session/o$d;

.field final synthetic e:Landroidx/media2/session/o;


# direct methods
.method constructor <init>(Landroidx/media2/session/o;Landroidx/media/b$b;Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V
    .locals 0

    .line 516
    iput-object p1, p0, Landroidx/media2/session/o$13;->e:Landroidx/media2/session/o;

    iput-object p2, p0, Landroidx/media2/session/o$13;->a:Landroidx/media/b$b;

    iput-object p3, p0, Landroidx/media2/session/o$13;->b:Landroidx/media2/session/SessionCommand;

    iput p4, p0, Landroidx/media2/session/o$13;->c:I

    iput-object p5, p0, Landroidx/media2/session/o$13;->d:Landroidx/media2/session/o$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 519
    iget-object v0, p0, Landroidx/media2/session/o$13;->e:Landroidx/media2/session/o;

    iget-object v0, v0, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/o$13;->e:Landroidx/media2/session/o;

    iget-object v0, v0, Landroidx/media2/session/o;->g:Landroidx/media2/session/a;

    iget-object v1, p0, Landroidx/media2/session/o$13;->a:Landroidx/media/b$b;

    .line 523
    invoke-virtual {v0, v1}, Landroidx/media2/session/a;->b(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$b;

    move-result-object v0

    if-nez v0, :cond_2

    .line 526
    new-instance v0, Landroidx/media2/session/MediaSession$b;

    iget-object v2, p0, Landroidx/media2/session/o$13;->a:Landroidx/media/b$b;

    const/4 v3, -0x1

    iget-object v1, p0, Landroidx/media2/session/o$13;->e:Landroidx/media2/session/o;

    iget-object v1, v1, Landroidx/media2/session/o;->i:Landroidx/media/b;

    iget-object v4, p0, Landroidx/media2/session/o$13;->a:Landroidx/media/b$b;

    .line 528
    invoke-virtual {v1, v4}, Landroidx/media/b;->a(Landroidx/media/b$b;)Z

    move-result v4

    new-instance v5, Landroidx/media2/session/o$b;

    iget-object v1, p0, Landroidx/media2/session/o$13;->e:Landroidx/media2/session/o;

    iget-object v6, p0, Landroidx/media2/session/o$13;->a:Landroidx/media/b$b;

    invoke-direct {v5, v1, v6}, Landroidx/media2/session/o$b;-><init>(Landroidx/media2/session/o;Landroidx/media/b$b;)V

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/media2/session/MediaSession$b;-><init>(Landroidx/media/b$b;IZLandroidx/media2/session/MediaSession$a;Landroid/os/Bundle;)V

    .line 531
    iget-object v1, p0, Landroidx/media2/session/o$13;->e:Landroidx/media2/session/o;

    iget-object v1, v1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v1}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object v1, p0, Landroidx/media2/session/o$13;->e:Landroidx/media2/session/o;

    iget-object v1, v1, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    .line 532
    invoke-interface {v1}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    .line 531
    invoke-static {}, Landroidx/media2/session/MediaSession$d;->d()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1990
    :try_start_0
    iget-object v0, v0, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    const/4 v1, 0x0

    .line 535
    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaSession$a;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 541
    :cond_1
    iget-object v2, p0, Landroidx/media2/session/o$13;->e:Landroidx/media2/session/o;

    iget-object v2, v2, Landroidx/media2/session/o;->g:Landroidx/media2/session/a;

    .line 2900
    iget-object v3, v0, Landroidx/media2/session/MediaSession$b;->a:Landroidx/media/b$b;

    .line 541
    invoke-virtual {v2, v3, v0, v1}, Landroidx/media2/session/a;->a(Ljava/lang/Object;Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommandGroup;)V

    .line 546
    :cond_2
    iget-object v1, p0, Landroidx/media2/session/o$13;->e:Landroidx/media2/session/o;

    iget-object v1, v1, Landroidx/media2/session/o;->l:Landroidx/media2/session/o$a;

    iget-object v2, p0, Landroidx/media2/session/o$13;->e:Landroidx/media2/session/o;

    iget-wide v2, v2, Landroidx/media2/session/o;->m:J

    const/16 v4, 0x3e9

    .line 2990
    invoke-virtual {v1, v4, v0}, Landroidx/media2/session/o$a;->removeMessages(ILjava/lang/Object;)V

    .line 2991
    invoke-virtual {v1, v4, v0}, Landroidx/media2/session/o$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2992
    invoke-virtual {v1, v4, v2, v3}, Landroidx/media2/session/o$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 548
    iget-object v1, p0, Landroidx/media2/session/o$13;->e:Landroidx/media2/session/o;

    iget-object v2, p0, Landroidx/media2/session/o$13;->b:Landroidx/media2/session/SessionCommand;

    iget v3, p0, Landroidx/media2/session/o$13;->c:I

    iget-object v4, p0, Landroidx/media2/session/o$13;->d:Landroidx/media2/session/o$d;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroidx/media2/session/o;->a(Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method
