.class final Landroidx/media2/session/l$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/l;->a(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/MediaSession$b;

.field final synthetic b:Landroidx/media/MediaBrowserServiceCompat$i;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Landroidx/media2/session/l;


# direct methods
.method constructor <init>(Landroidx/media2/session/l;Landroidx/media2/session/MediaSession$b;Landroidx/media/MediaBrowserServiceCompat$i;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 297
    iput-object p1, p0, Landroidx/media2/session/l$5;->e:Landroidx/media2/session/l;

    iput-object p2, p0, Landroidx/media2/session/l$5;->a:Landroidx/media2/session/MediaSession$b;

    iput-object p3, p0, Landroidx/media2/session/l$5;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    iput-object p4, p0, Landroidx/media2/session/l$5;->c:Ljava/lang/String;

    iput-object p5, p0, Landroidx/media2/session/l$5;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 300
    iget-object v0, p0, Landroidx/media2/session/l$5;->e:Landroidx/media2/session/l;

    .line 1087
    iget-object v0, v0, Landroidx/media2/session/q;->j:Landroidx/media2/session/a;

    .line 300
    iget-object v1, p0, Landroidx/media2/session/l$5;->a:Landroidx/media2/session/MediaSession$b;

    const v2, 0xc355

    invoke-virtual {v0, v1, v2}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Landroidx/media2/session/l$5;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    invoke-virtual {v0}, Landroidx/media/MediaBrowserServiceCompat$i;->b()V

    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/l$5;->a:Landroidx/media2/session/MediaSession$b;

    .line 1990
    iget-object v0, v0, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    .line 309
    check-cast v0, Landroidx/media2/session/l$b;

    .line 310
    iget-object v2, p0, Landroidx/media2/session/l$5;->a:Landroidx/media2/session/MediaSession$b;

    iget-object v4, p0, Landroidx/media2/session/l$5;->c:Ljava/lang/String;

    iget-object v5, p0, Landroidx/media2/session/l$5;->d:Landroid/os/Bundle;

    iget-object v6, p0, Landroidx/media2/session/l$5;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    .line 2613
    iget-object v7, v0, Landroidx/media2/session/l$b;->a:Ljava/lang/Object;

    monitor-enter v7

    .line 2614
    :try_start_0
    iget-object v0, v0, Landroidx/media2/session/l$b;->b:Ljava/util/List;

    new-instance v8, Landroidx/media2/session/l$d;

    .line 2900
    iget-object v3, v2, Landroidx/media2/session/MediaSession$b;->a:Landroidx/media/b$b;

    move-object v1, v8

    .line 2614
    invoke-direct/range {v1 .. v6}, Landroidx/media2/session/l$d;-><init>(Landroidx/media2/session/MediaSession$b;Landroidx/media/b$b;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$i;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2616
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v0, p0, Landroidx/media2/session/l$5;->e:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    .line 312
    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->F()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/session/l$5;->d:Landroid/os/Bundle;

    .line 311
    invoke-static {v0, v1}, Landroidx/media2/session/s;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 313
    iget-object v0, p0, Landroidx/media2/session/l$5;->e:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->x()Landroidx/media2/session/MediaLibraryService$a$a;

    iget-object v0, p0, Landroidx/media2/session/l$5;->e:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->w()Landroidx/media2/session/MediaLibraryService$a;

    return-void

    :catchall_0
    move-exception v0

    .line 2616
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
