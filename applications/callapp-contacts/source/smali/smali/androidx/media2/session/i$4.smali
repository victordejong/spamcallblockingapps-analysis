.class final Landroidx/media2/session/i$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/i;


# direct methods
.method constructor <init>(Landroidx/media2/session/i;)V
    .locals 0

    .line 871
    iput-object p1, p0, Landroidx/media2/session/i$4;->a:Landroidx/media2/session/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 874
    iget-object v0, p0, Landroidx/media2/session/i$4;->a:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i$4;->a:Landroidx/media2/session/i;

    new-instance v2, Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v3, v1, Landroidx/media2/session/i;->c:Landroid/content/Context;

    iget-object v4, p0, Landroidx/media2/session/i$4;->a:Landroidx/media2/session/i;

    iget-object v4, v4, Landroidx/media2/session/i;->d:Landroidx/media2/session/SessionToken;

    .line 1210
    iget-object v4, v4, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v4}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->f()Landroid/content/ComponentName;

    move-result-object v4

    .line 875
    new-instance v5, Landroidx/media2/session/i$a;

    iget-object v6, p0, Landroidx/media2/session/i$4;->a:Landroidx/media2/session/i;

    invoke-direct {v5, v6}, Landroidx/media2/session/i$a;-><init>(Landroidx/media2/session/i;)V

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$b;Landroid/os/Bundle;)V

    iput-object v2, v1, Landroidx/media2/session/i;->i:Landroid/support/v4/media/MediaBrowserCompat;

    .line 877
    iget-object v1, p0, Landroidx/media2/session/i$4;->a:Landroidx/media2/session/i;

    iget-object v1, v1, Landroidx/media2/session/i;->i:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaBrowserCompat;->a()V

    .line 878
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
