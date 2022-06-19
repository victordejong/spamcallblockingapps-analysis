.class final Landroidx/media2/session/l$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/l;->b(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroidx/media2/session/MediaSession$b;

.field final synthetic c:Landroidx/media/MediaBrowserServiceCompat$i;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Landroidx/media2/session/l;


# direct methods
.method constructor <init>(Landroidx/media2/session/l;Ljava/lang/String;Landroidx/media2/session/MediaSession$b;Landroidx/media/MediaBrowserServiceCompat$i;Landroid/os/Bundle;)V
    .locals 0

    .line 327
    iput-object p1, p0, Landroidx/media2/session/l$6;->e:Landroidx/media2/session/l;

    iput-object p2, p0, Landroidx/media2/session/l$6;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media2/session/l$6;->b:Landroidx/media2/session/MediaSession$b;

    iput-object p4, p0, Landroidx/media2/session/l$6;->c:Landroidx/media/MediaBrowserServiceCompat$i;

    iput-object p5, p0, Landroidx/media2/session/l$6;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 330
    new-instance v0, Landroidx/media2/session/SessionCommand;

    iget-object v1, p0, Landroidx/media2/session/l$6;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 331
    iget-object v1, p0, Landroidx/media2/session/l$6;->e:Landroidx/media2/session/l;

    .line 1087
    iget-object v1, v1, Landroidx/media2/session/q;->j:Landroidx/media2/session/a;

    .line 331
    iget-object v2, p0, Landroidx/media2/session/l$6;->b:Landroidx/media2/session/MediaSession$b;

    invoke-virtual {v1, v2, v0}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommand;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Landroidx/media2/session/l$6;->c:Landroidx/media/MediaBrowserServiceCompat$i;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Landroidx/media/MediaBrowserServiceCompat$i;->b()V

    :cond_0
    return-void

    .line 341
    :cond_1
    iget-object v0, p0, Landroidx/media2/session/l$6;->e:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->x()Landroidx/media2/session/MediaLibraryService$a$a;

    iget-object v0, p0, Landroidx/media2/session/l$6;->e:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    .line 342
    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->w()Landroidx/media2/session/MediaLibraryService$a;

    .line 341
    invoke-static {}, Landroidx/media2/session/MediaLibraryService$a$a;->e()Landroidx/media2/session/SessionResult;

    move-result-object v0

    .line 344
    iget-object v1, p0, Landroidx/media2/session/l$6;->c:Landroidx/media/MediaBrowserServiceCompat$i;

    .line 1185
    iget-object v0, v0, Landroidx/media2/session/SessionResult;->c:Landroid/os/Bundle;

    .line 344
    invoke-virtual {v1, v0}, Landroidx/media/MediaBrowserServiceCompat$i;->b(Ljava/lang/Object;)V

    return-void
.end method
