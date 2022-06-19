.class final Landroidx/media2/session/m;
.super Landroidx/media2/session/n;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/MediaLibraryService$a$b;


# instance fields
.field private final j:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Landroidx/media2/session/MediaSession$a;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media2/common/SessionPlayer;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaSession$d;Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p8}, Landroidx/media2/session/n;-><init>(Landroidx/media2/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media2/common/SessionPlayer;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaSession$d;Landroid/os/Bundle;)V

    .line 50
    new-instance p1, Landroidx/b/a;

    invoke-direct {p1}, Landroidx/b/a;-><init>()V

    iput-object p1, p0, Landroidx/media2/session/m;->j:Landroidx/b/a;

    return-void
.end method

.method private static a(Landroidx/media2/session/LibraryResult;)Landroidx/media2/session/LibraryResult;
    .locals 1

    if-eqz p0, :cond_0

    return-object p0

    .line 149
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "LibraryResult shouldn\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroidx/media2/session/LibraryResult;I)Landroidx/media2/session/LibraryResult;
    .locals 3

    .line 156
    invoke-static {p0}, Landroidx/media2/session/m;->a(Landroidx/media2/session/LibraryResult;)Landroidx/media2/session/LibraryResult;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroidx/media2/session/LibraryResult;->a()I

    move-result v0

    if-nez v0, :cond_2

    .line 1211
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    .line 169
    invoke-static {v0}, Landroidx/media2/session/m;->a(Landroidx/media2/common/MediaItem;)Z

    goto :goto_0

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "List shouldn\'t contain items more than pageSize, size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2211
    iget-object p0, p0, Landroidx/media2/session/LibraryResult;->f:Ljava/util/List;

    .line 165
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", pageSize"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "List shouldn\'t be null for the success"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p0
.end method

.method private static a(Landroidx/media2/common/MediaItem;)Z
    .locals 1

    if-eqz p0, :cond_4

    .line 191
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    invoke-virtual {p0}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v0, "androidx.media2.metadata.BROWSABLE"

    .line 200
    invoke-virtual {p0, v0}, Landroidx/media2/common/MediaMetadata;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "androidx.media2.metadata.PLAYABLE"

    .line 204
    invoke-virtual {p0, v0}, Landroidx/media2/common/MediaMetadata;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 205
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "METADATA_KEY_PLAYABLE should be specified in metadata of an item"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 201
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "METADATA_KEY_BROWSABLE should be specified in metadata of an item"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Metadata of an item shouldn\'t be null for the success"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 192
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Media ID of an item shouldn\'t be empty for the success"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Item shouldn\'t be null for the success"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Landroidx/media2/session/LibraryResult;)Landroidx/media2/session/LibraryResult;
    .locals 1

    .line 178
    invoke-static {p0}, Landroidx/media2/session/m;->a(Landroidx/media2/session/LibraryResult;)Landroidx/media2/session/LibraryResult;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Landroidx/media2/session/LibraryResult;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 3196
    iget-object v0, p0, Landroidx/media2/session/LibraryResult;->c:Landroidx/media2/common/MediaItem;

    .line 180
    invoke-static {v0}, Landroidx/media2/session/m;->a(Landroidx/media2/common/MediaItem;)Z

    :cond_0
    return-object p0
.end method


# virtual methods
.method final bridge synthetic A()Landroidx/media/MediaBrowserServiceCompat;
    .locals 1

    .line 16079
    invoke-super {p0}, Landroidx/media2/session/n;->A()Landroidx/media/MediaBrowserServiceCompat;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/l;

    return-object v0
.end method

.method public final a(Landroidx/media2/session/MediaSession$b;)I
    .locals 2

    .line 11074
    invoke-super {p0}, Landroidx/media2/session/n;->y()Landroidx/media2/session/MediaSession$d;

    .line 12069
    invoke-super {p0}, Landroidx/media2/session/n;->z()Landroidx/media2/session/MediaSession;

    .line 274
    iget-object v0, p0, Landroidx/media2/session/m;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/m;->j:Landroidx/b/a;

    .line 12990
    iget-object p1, p1, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    .line 275
    invoke-virtual {v1, p1}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    monitor-exit v0

    const/4 p1, -0x6

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroidx/media2/session/MediaSession$b;Ljava/lang/String;)I
    .locals 4

    .line 249
    iget-object v0, p0, Landroidx/media2/session/m;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/m;->j:Landroidx/b/a;

    .line 7990
    iget-object v2, p1, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    .line 250
    invoke-virtual {v1, v2}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    .line 252
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 253
    iget-object v2, p0, Landroidx/media2/session/m;->j:Landroidx/b/a;

    .line 8990
    iget-object v3, p1, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    .line 253
    invoke-virtual {v2, v3, v1}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9074
    invoke-super {p0}, Landroidx/media2/session/n;->y()Landroidx/media2/session/MediaSession$d;

    .line 10069
    invoke-super {p0}, Landroidx/media2/session/n;->z()Landroidx/media2/session/MediaSession;

    .line 263
    iget-object p2, p0, Landroidx/media2/session/m;->b:Ljava/lang/Object;

    monitor-enter p2

    .line 264
    :try_start_1
    iget-object v0, p0, Landroidx/media2/session/m;->j:Landroidx/b/a;

    .line 10990
    iget-object p1, p1, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    .line 264
    invoke-virtual {v0, p1}, Landroidx/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    monitor-exit p2

    const/4 p1, -0x6

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 256
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method final a(Landroidx/media2/session/n$e;)V
    .locals 2

    .line 297
    invoke-super {p0, p1}, Landroidx/media2/session/n;->a(Landroidx/media2/session/n$e;)V

    .line 15079
    invoke-super {p0}, Landroidx/media2/session/n;->A()Landroidx/media/MediaBrowserServiceCompat;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/l;

    if-eqz v0, :cond_0

    .line 15358
    :try_start_0
    iget-object v0, v0, Landroidx/media2/session/l;->h:Landroidx/media2/session/MediaSession$a;

    const/4 v1, 0x0

    .line 301
    invoke-interface {p1, v0, v1}, Landroidx/media2/session/n$e;->a(Landroidx/media2/session/MediaSession$a;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MSImplBase"

    const-string v1, "Exception in using media1 API"

    .line 303
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final b(Landroidx/media2/session/MediaSession$b;)Z
    .locals 1

    .line 96
    invoke-super {p0, p1}, Landroidx/media2/session/n;->b(Landroidx/media2/session/MediaSession$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1079
    :cond_0
    invoke-super {p0}, Landroidx/media2/session/n;->A()Landroidx/media/MediaBrowserServiceCompat;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/l;

    if-eqz v0, :cond_1

    .line 1087
    iget-object v0, v0, Landroidx/media2/session/q;->j:Landroidx/media2/session/a;

    .line 101
    invoke-virtual {v0, p1}, Landroidx/media2/session/a;->b(Landroidx/media2/session/MediaSession$b;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final f(I)Landroidx/media2/session/LibraryResult;
    .locals 1

    .line 6074
    invoke-super {p0}, Landroidx/media2/session/n;->y()Landroidx/media2/session/MediaSession$d;

    .line 7069
    invoke-super {p0}, Landroidx/media2/session/n;->z()Landroidx/media2/session/MediaSession;

    .line 241
    invoke-static {}, Landroidx/media2/session/MediaLibraryService$a$a;->c()Landroidx/media2/session/LibraryResult;

    move-result-object v0

    .line 243
    invoke-static {v0, p1}, Landroidx/media2/session/m;->a(Landroidx/media2/session/LibraryResult;I)Landroidx/media2/session/LibraryResult;

    move-result-object p1

    return-object p1
.end method

.method public final g(I)Landroidx/media2/session/LibraryResult;
    .locals 2

    .line 13074
    invoke-super {p0}, Landroidx/media2/session/n;->y()Landroidx/media2/session/MediaSession$d;

    .line 14069
    invoke-super {p0}, Landroidx/media2/session/n;->z()Landroidx/media2/session/MediaSession;

    .line 14281
    new-instance v0, Landroidx/media2/session/LibraryResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    .line 292
    invoke-static {v0, p1}, Landroidx/media2/session/m;->a(Landroidx/media2/session/LibraryResult;I)Landroidx/media2/session/LibraryResult;

    move-result-object p1

    return-object p1
.end method

.method public final u()Landroidx/media2/session/LibraryResult;
    .locals 1

    .line 4074
    invoke-super {p0}, Landroidx/media2/session/n;->y()Landroidx/media2/session/MediaSession$d;

    .line 5069
    invoke-super {p0}, Landroidx/media2/session/n;->z()Landroidx/media2/session/MediaSession;

    .line 220
    invoke-static {}, Landroidx/media2/session/MediaLibraryService$a$a;->a()Landroidx/media2/session/LibraryResult;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroidx/media2/session/m;->b(Landroidx/media2/session/LibraryResult;)Landroidx/media2/session/LibraryResult;

    move-result-object v0

    return-object v0
.end method

.method public final v()Landroidx/media2/session/LibraryResult;
    .locals 1

    .line 5074
    invoke-super {p0}, Landroidx/media2/session/n;->y()Landroidx/media2/session/MediaSession$d;

    .line 6069
    invoke-super {p0}, Landroidx/media2/session/n;->z()Landroidx/media2/session/MediaSession;

    .line 233
    invoke-static {}, Landroidx/media2/session/MediaLibraryService$a$a;->b()Landroidx/media2/session/LibraryResult;

    move-result-object v0

    .line 234
    invoke-static {v0}, Landroidx/media2/session/m;->b(Landroidx/media2/session/LibraryResult;)Landroidx/media2/session/LibraryResult;

    move-result-object v0

    return-object v0
.end method

.method public final w()Landroidx/media2/session/MediaLibraryService$a;
    .locals 1

    .line 69
    invoke-super {p0}, Landroidx/media2/session/n;->z()Landroidx/media2/session/MediaSession;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/MediaLibraryService$a;

    return-object v0
.end method

.method public final x()Landroidx/media2/session/MediaLibraryService$a$a;
    .locals 1

    .line 74
    invoke-super {p0}, Landroidx/media2/session/n;->y()Landroidx/media2/session/MediaSession$d;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/MediaLibraryService$a$a;

    return-object v0
.end method

.method public final bridge synthetic y()Landroidx/media2/session/MediaSession$d;
    .locals 1

    .line 17074
    invoke-super {p0}, Landroidx/media2/session/n;->y()Landroidx/media2/session/MediaSession$d;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/MediaLibraryService$a$a;

    return-object v0
.end method

.method public final bridge synthetic z()Landroidx/media2/session/MediaSession;
    .locals 1

    .line 18069
    invoke-super {p0}, Landroidx/media2/session/n;->z()Landroidx/media2/session/MediaSession;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/MediaLibraryService$a;

    return-object v0
.end method
