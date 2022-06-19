.class final Landroidx/media/MediaBrowserServiceCompat$k$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/MediaBrowserServiceCompat$l;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/IBinder;

.field final synthetic d:Landroidx/media/MediaBrowserServiceCompat$k;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$k;Landroidx/media/MediaBrowserServiceCompat$l;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$k$4;->d:Landroidx/media/MediaBrowserServiceCompat$k;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$k$4;->a:Landroidx/media/MediaBrowserServiceCompat$l;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$k$4;->b:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media/MediaBrowserServiceCompat$k$4;->c:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1052
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$k$4;->a:Landroidx/media/MediaBrowserServiceCompat$l;

    invoke-interface {v0}, Landroidx/media/MediaBrowserServiceCompat$l;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 1054
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$k$4;->d:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->d:Landroidx/b/a;

    invoke-virtual {v1, v0}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$b;

    const-string v1, "MBServiceCompat"

    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "removeSubscription for callback that isn\'t registered id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$k$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1060
    :cond_0
    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$k$4;->d:Landroidx/media/MediaBrowserServiceCompat$k;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat$k;->a:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v3, p0, Landroidx/media/MediaBrowserServiceCompat$k$4;->b:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media/MediaBrowserServiceCompat$k$4;->c:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v0, v4}, Landroidx/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$b;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "removeSubscription called for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$k$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which is not subscribed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
