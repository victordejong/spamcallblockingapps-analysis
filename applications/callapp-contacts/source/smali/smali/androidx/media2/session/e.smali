.class public final Landroidx/media2/session/e;
.super Landroidx/media2/session/MediaController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/e$c;,
        Landroidx/media2/session/e$b;,
        Landroidx/media2/session/e$a;
    }
.end annotation


# static fields
.field static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaBrowser"

    const/4 v1, 0x3

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/e;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroidx/media2/session/e$a;)V
    .locals 0

    .line 94
    invoke-direct/range {p0 .. p5}, Landroidx/media2/session/MediaController;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaController$a;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroidx/media2/session/e$a;)V
    .locals 0

    .line 88
    invoke-direct/range {p0 .. p5}, Landroidx/media2/session/MediaController;-><init>(Landroid/content/Context;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaController$a;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic a()Landroidx/media2/session/MediaController$c;
    .locals 1

    .line 1109
    invoke-super {p0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/e$c;

    return-object v0
.end method

.method final synthetic a(Landroid/content/Context;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;)Landroidx/media2/session/MediaController$c;
    .locals 1

    .line 2100
    invoke-virtual {p2}, Landroidx/media2/session/SessionToken;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2101
    new-instance p3, Landroidx/media2/session/g;

    invoke-direct {p3, p1, p0, p2}, Landroidx/media2/session/g;-><init>(Landroid/content/Context;Landroidx/media2/session/e;Landroidx/media2/session/SessionToken;)V

    return-object p3

    .line 2103
    :cond_0
    new-instance v0, Landroidx/media2/session/f;

    invoke-direct {v0, p1, p0, p2, p3}, Landroidx/media2/session/f;-><init>(Landroid/content/Context;Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;)V

    return-object v0
.end method

.method final a(Landroidx/media2/session/e$b;)V
    .locals 2

    .line 281
    iget-object v0, p0, Landroidx/media2/session/e;->e:Landroidx/media2/session/MediaController$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/session/e;->f:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroidx/media2/session/e;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/media2/session/e$1;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/e$1;-><init>(Landroidx/media2/session/e;Landroidx/media2/session/e$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
