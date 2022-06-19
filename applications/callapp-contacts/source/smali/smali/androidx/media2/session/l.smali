.class final Landroidx/media2/session/l;
.super Landroidx/media2/session/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/l$c;,
        Landroidx/media2/session/l$b;,
        Landroidx/media2/session/l$a;,
        Landroidx/media2/session/l$d;
    }
.end annotation


# instance fields
.field final h:Landroidx/media2/session/MediaSession$a;

.field final i:Landroidx/media2/session/MediaLibraryService$a$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/session/MediaLibraryService$a$b;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/session/q;-><init>(Landroid/content/Context;Landroidx/media2/session/MediaSession$c;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 73
    iput-object p2, p0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    .line 74
    new-instance p1, Landroidx/media2/session/l$c;

    invoke-direct {p1, p0}, Landroidx/media2/session/l$c;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    iput-object p1, p0, Landroidx/media2/session/l;->h:Landroidx/media2/session/MediaSession$a;

    return-void
.end method

.method private b()Landroidx/media2/session/MediaSession$b;
    .locals 2

    .line 3087
    iget-object v0, p0, Landroidx/media2/session/q;->j:Landroidx/media2/session/a;

    .line 362
    invoke-virtual {p0}, Landroidx/media2/session/l;->a()Landroidx/media/b$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/session/a;->b(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$a;
    .locals 1

    .line 79
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/session/q;->a(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$a;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 83
    :cond_0
    invoke-direct {p0}, Landroidx/media2/session/l;->b()Landroidx/media2/session/MediaSession$b;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    .line 1087
    :cond_1
    iget-object p2, p0, Landroidx/media2/session/q;->j:Landroidx/media2/session/a;

    const v0, 0xc350

    .line 87
    invoke-virtual {p2, p1, v0}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    iget-object p1, p0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    .line 100
    invoke-interface {p1}, Landroidx/media2/session/MediaLibraryService$a$b;->F()Landroid/content/Context;

    move-result-object p1

    .line 99
    invoke-static {p1, p3}, Landroidx/media2/session/s;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 101
    iget-object p1, p0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {p1}, Landroidx/media2/session/MediaLibraryService$a$b;->x()Landroidx/media2/session/MediaLibraryService$a$a;

    iget-object p1, p0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    .line 102
    invoke-interface {p1}, Landroidx/media2/session/MediaLibraryService$a$b;->w()Landroidx/media2/session/MediaLibraryService$a;

    .line 101
    invoke-static {}, Landroidx/media2/session/MediaLibraryService$a$a;->a()Landroidx/media2/session/LibraryResult;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroidx/media2/session/LibraryResult;->a()I

    move-result p2

    if-nez p2, :cond_3

    .line 1196
    iget-object p2, p1, Landroidx/media2/session/LibraryResult;->c:Landroidx/media2/common/MediaItem;

    if-eqz p2, :cond_3

    .line 2196
    iget-object p2, p1, Landroidx/media2/session/LibraryResult;->c:Landroidx/media2/common/MediaItem;

    .line 105
    invoke-virtual {p2}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, "android.media.metadata.MEDIA_ID"

    .line 107
    invoke-virtual {p2, p3}, Landroidx/media2/common/MediaMetadata;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, ""

    .line 108
    :goto_0
    new-instance p3, Landroidx/media/MediaBrowserServiceCompat$a;

    .line 2221
    iget-object p1, p1, Landroidx/media2/session/LibraryResult;->e:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    .line 109
    invoke-static {p1}, Landroidx/media2/session/s;->a(Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Landroidx/media/MediaBrowserServiceCompat$a;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p3

    .line 119
    :cond_3
    sget-object p1, Landroidx/media2/session/s;->a:Landroidx/media/MediaBrowserServiceCompat$a;

    return-object p1
.end method

.method final a(Landroidx/media/b$b;)Landroidx/media2/session/MediaSession$b;
    .locals 7

    .line 352
    new-instance v6, Landroidx/media2/session/MediaSession$b;

    iget-object v0, p0, Landroidx/media2/session/l;->k:Landroidx/media/b;

    .line 353
    invoke-virtual {v0, p1}, Landroidx/media/b;->a(Landroidx/media/b$b;)Z

    move-result v3

    new-instance v4, Landroidx/media2/session/l$b;

    invoke-direct {v4, p0, p1}, Landroidx/media2/session/l$b;-><init>(Landroidx/media2/session/l;Landroidx/media/b$b;)V

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaSession$b;-><init>(Landroidx/media/b$b;IZLandroidx/media2/session/MediaSession$a;Landroid/os/Bundle;)V

    return-object v6
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 153
    invoke-direct {p0}, Landroidx/media2/session/l;->b()Landroidx/media2/session/MediaSession$b;

    move-result-object v0

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onUnsubscribe(): Ignoring empty id from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MLS2LegacyStub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 158
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v1}, Landroidx/media2/session/MediaLibraryService$a$b;->G()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/session/l$2;

    invoke-direct {v2, p0, v0, p1}, Landroidx/media2/session/l$2;-><init>(Landroidx/media2/session/l;Landroidx/media2/session/MediaSession$b;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 124
    invoke-direct {p0}, Landroidx/media2/session/l;->b()Landroidx/media2/session/MediaSession$b;

    move-result-object v0

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSubscribe(): Ignoring empty id from "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MLS2LegacyStub"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v1}, Landroidx/media2/session/MediaLibraryService$a$b;->G()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/session/l$1;

    invoke-direct {v2, p0, v0, p2, p1}, Landroidx/media2/session/l$1;-><init>(Landroidx/media2/session/l;Landroidx/media2/session/MediaSession$b;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$i;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$i<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Landroidx/media2/session/l;->b()Landroidx/media2/session/MediaSession$b;

    move-result-object v2

    .line 285
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Ignoring empty query from "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MLS2LegacyStub"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p3}, Landroidx/media/MediaBrowserServiceCompat$i;->b()V

    return-void

    .line 2990
    :cond_0
    iget-object v0, v2, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    .line 290
    instance-of v0, v0, Landroidx/media2/session/l$b;

    if-nez v0, :cond_1

    return-void

    .line 296
    :cond_1
    invoke-virtual {p3}, Landroidx/media/MediaBrowserServiceCompat$i;->a()V

    .line 297
    iget-object v0, p0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->G()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroidx/media2/session/l$5;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/l$5;-><init>(Landroidx/media2/session/l;Landroidx/media2/session/MediaSession$b;Landroidx/media/MediaBrowserServiceCompat$i;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$i<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media2/session/l;->a(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$i;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$i;Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$i<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Landroidx/media2/session/l;->b()Landroidx/media2/session/MediaSession$b;

    move-result-object v2

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "onLoadChildren(): Ignoring empty parentId from "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "MLS2LegacyStub"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$i;->b()V

    return-void

    .line 189
    :cond_0
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$i;->a()V

    .line 190
    iget-object v0, p0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->G()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroidx/media2/session/l$3;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/l$3;-><init>(Landroidx/media2/session/l;Landroidx/media2/session/MediaSession$b;Landroidx/media/MediaBrowserServiceCompat$i;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$i;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$i<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 324
    invoke-virtual {p3}, Landroidx/media/MediaBrowserServiceCompat$i;->a()V

    .line 326
    invoke-direct {p0}, Landroidx/media2/session/l;->b()Landroidx/media2/session/MediaSession$b;

    move-result-object v3

    .line 327
    iget-object v0, p0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$a$b;->G()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroidx/media2/session/l$6;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/l$6;-><init>(Landroidx/media2/session/l;Ljava/lang/String;Landroidx/media2/session/MediaSession$b;Landroidx/media/MediaBrowserServiceCompat$i;Landroid/os/Bundle;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$i<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Landroidx/media2/session/l;->b()Landroidx/media2/session/MediaSession$b;

    move-result-object v0

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ignoring empty itemId from "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MLS2LegacyStub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$i;->b()V

    return-void

    .line 257
    :cond_0
    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$i;->a()V

    .line 258
    iget-object v1, p0, Landroidx/media2/session/l;->i:Landroidx/media2/session/MediaLibraryService$a$b;

    invoke-interface {v1}, Landroidx/media2/session/MediaLibraryService$a$b;->G()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/session/l$4;

    invoke-direct {v2, p0, v0, p2, p1}, Landroidx/media2/session/l$4;-><init>(Landroidx/media2/session/l;Landroidx/media2/session/MediaSession$b;Landroidx/media/MediaBrowserServiceCompat$i;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
