.class final Landroidx/media2/session/l$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/l;->b(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/MediaSession$b;

.field final synthetic b:Landroidx/media/MediaBrowserServiceCompat$i;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroidx/media2/session/l;


# direct methods
.method constructor <init>(Landroidx/media2/session/l;Landroidx/media2/session/MediaSession$b;Landroidx/media/MediaBrowserServiceCompat$i;Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Landroidx/media2/session/l$4;->d:Landroidx/media2/session/l;

    iput-object p2, p0, Landroidx/media2/session/l$4;->a:Landroidx/media2/session/MediaSession$b;

    iput-object p3, p0, Landroidx/media2/session/l$4;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    iput-object p4, p0, Landroidx/media2/session/l$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 261
    iget-object v0, p0, Landroidx/media2/session/l$4;->d:Landroidx/media2/session/l;

    .line 1087
    iget-object v0, v0, Landroidx/media2/session/q;->j:Landroidx/media2/session/a;

    .line 261
    iget-object v1, p0, Landroidx/media2/session/l$4;->a:Landroidx/media2/session/MediaSession$b;

    const v2, 0xc354

    invoke-virtual {v0, v1, v2}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Landroidx/media2/session/l$4;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    invoke-virtual {v0}, Landroidx/media/MediaBrowserServiceCompat$i;->b()V

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/l$4;->d:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->x()Landroidx/media2/session/MediaLibraryService$a$a;

    iget-object v0, p0, Landroidx/media2/session/l$4;->d:Landroidx/media2/session/l;

    iget-object v0, v0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    .line 271
    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->w()Landroidx/media2/session/MediaLibraryService$a;

    .line 270
    invoke-static {}, Landroidx/media2/session/MediaLibraryService$a$a;->b()Landroidx/media2/session/LibraryResult;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroidx/media2/session/LibraryResult;->a()I

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    iget-object v0, p0, Landroidx/media2/session/l$4;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$i;->b(Ljava/lang/Object;)V

    return-void

    .line 275
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/l$4;->b:Landroidx/media/MediaBrowserServiceCompat$i;

    .line 1196
    iget-object v0, v0, Landroidx/media2/session/LibraryResult;->c:Landroidx/media2/common/MediaItem;

    .line 275
    invoke-static {v0}, Landroidx/media2/session/s;->b(Landroidx/media2/common/MediaItem;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media/MediaBrowserServiceCompat$i;->b(Ljava/lang/Object;)V

    return-void
.end method
