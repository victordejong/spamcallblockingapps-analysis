.class final Landroidx/media2/player/e$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final a:Landroidx/media2/player/e$c;

.field final b:Landroidx/media2/exoplayer/external/ak;

.field final c:Landroidx/media2/exoplayer/external/source/h;

.field final d:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/player/e$d;",
            ">;"
        }
    .end annotation
.end field

.field e:J

.field f:J

.field private final g:Landroid/content/Context;

.field private final h:Landroidx/media2/exoplayer/external/upstream/f$a;

.field private final i:Landroidx/media2/player/e$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/ak;Landroidx/media2/player/e$c;)V
    .locals 0

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    iput-object p1, p0, Landroidx/media2/player/e$e;->g:Landroid/content/Context;

    .line 860
    iput-object p2, p0, Landroidx/media2/player/e$e;->b:Landroidx/media2/exoplayer/external/ak;

    .line 861
    iput-object p3, p0, Landroidx/media2/player/e$e;->a:Landroidx/media2/player/e$c;

    const-string p2, "MediaPlayer2"

    .line 862
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 863
    new-instance p3, Landroidx/media2/exoplayer/external/upstream/n;

    invoke-direct {p3, p1, p2}, Landroidx/media2/exoplayer/external/upstream/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Landroidx/media2/player/e$e;->h:Landroidx/media2/exoplayer/external/upstream/f$a;

    .line 864
    new-instance p1, Landroidx/media2/exoplayer/external/source/h;

    const/4 p2, 0x0

    new-array p2, p2, [Landroidx/media2/exoplayer/external/source/t;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/source/h;-><init>([Landroidx/media2/exoplayer/external/source/t;)V

    iput-object p1, p0, Landroidx/media2/player/e$e;->c:Landroidx/media2/exoplayer/external/source/h;

    .line 865
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/e$e;->d:Ljava/util/ArrayDeque;

    .line 866
    new-instance p1, Landroidx/media2/player/e$b;

    invoke-direct {p1}, Landroidx/media2/player/e$b;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/e$e;->i:Landroidx/media2/player/e$b;

    const-wide/16 p1, -0x1

    .line 867
    iput-wide p1, p0, Landroidx/media2/player/e$e;->e:J

    return-void
.end method

.method private a(Landroidx/media2/common/MediaItem;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaItem;",
            "Ljava/util/Collection<",
            "Landroidx/media2/player/e$d;",
            ">;",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/t;",
            ">;)V"
        }
    .end annotation

    .line 997
    iget-object v0, p0, Landroidx/media2/player/e$e;->h:Landroidx/media2/exoplayer/external/upstream/f$a;

    .line 999
    instance-of v1, p1, Landroidx/media2/common/FileMediaItem;

    if-eqz v1, :cond_0

    .line 1000
    move-object v0, p1

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    .line 1001
    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->a()V

    .line 1077
    iget-object v1, v0, Landroidx/media2/common/FileMediaItem;->a:Landroid/os/ParcelFileDescriptor;

    .line 1003
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 1086
    iget-wide v3, v0, Landroidx/media2/common/FileMediaItem;->b:J

    .line 1095
    iget-wide v5, v0, Landroidx/media2/common/FileMediaItem;->c:J

    .line 1006
    iget-object v0, p0, Landroidx/media2/player/e$e;->i:Landroidx/media2/player/e$b;

    invoke-virtual {v0, v2}, Landroidx/media2/player/e$b;->a(Ljava/io/FileDescriptor;)Ljava/lang/Object;

    move-result-object v7

    .line 1008
    invoke-static/range {v2 .. v7}, Landroidx/media2/player/f;->a(Ljava/io/FileDescriptor;JJLjava/lang/Object;)Landroidx/media2/exoplayer/external/upstream/f$a;

    move-result-object v0

    .line 1012
    :cond_0
    iget-object v1, p0, Landroidx/media2/player/e$e;->g:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Landroidx/media2/player/d;->a(Landroid/content/Context;Landroidx/media2/exoplayer/external/upstream/f$a;Landroidx/media2/common/MediaItem;)Landroidx/media2/exoplayer/external/source/t;

    move-result-object v3

    .line 1198
    iget-wide v0, p1, Landroidx/media2/common/MediaItem;->e:J

    .line 1207
    iget-wide v4, p1, Landroidx/media2/common/MediaItem;->f:J

    const-wide/16 v6, 0x0

    const-wide v8, 0x7ffffffffffffffL

    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    cmp-long v2, v4, v8

    if-eqz v2, :cond_3

    :cond_1
    cmp-long v2, v4, v8

    if-nez v2, :cond_2

    const-wide/high16 v4, -0x8000000000000000L

    .line 1023
    :cond_2
    new-instance v11, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;

    .line 1025
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v0

    .line 1026
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, v11

    move-wide v4, v0

    invoke-direct/range {v2 .. v10}, Landroidx/media2/exoplayer/external/source/ClippingMediaSource;-><init>(Landroidx/media2/exoplayer/external/source/t;JJZZZ)V

    move-object v3, v11

    .line 1032
    :cond_3
    instance-of v0, p1, Landroidx/media2/common/UriMediaItem;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroidx/media2/common/UriMediaItem;

    .line 2062
    iget-object v0, v0, Landroidx/media2/common/UriMediaItem;->a:Landroid/net/Uri;

    .line 1033
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 1034
    :goto_0
    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1035
    new-instance p3, Landroidx/media2/player/e$d;

    invoke-direct {p3, p1, v0}, Landroidx/media2/player/e$d;-><init>(Landroidx/media2/common/MediaItem;Z)V

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 871
    :goto_0
    iget-object v0, p0, Landroidx/media2/player/e$e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Landroidx/media2/player/e$e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/e$d;

    invoke-virtual {p0, v0}, Landroidx/media2/player/e$e;->a(Landroidx/media2/player/e$d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final a(Landroidx/media2/player/e$d;)V
    .locals 2

    .line 1039
    iget-object p1, p1, Landroidx/media2/player/e$d;->a:Landroidx/media2/common/MediaItem;

    .line 1041
    :try_start_0
    instance-of v0, p1, Landroidx/media2/common/FileMediaItem;

    if-eqz v0, :cond_0

    .line 1042
    move-object v0, p1

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    .line 2077
    iget-object v0, v0, Landroidx/media2/common/FileMediaItem;->a:Landroid/os/ParcelFileDescriptor;

    .line 1044
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1045
    iget-object v1, p0, Landroidx/media2/player/e$e;->i:Landroidx/media2/player/e$b;

    invoke-virtual {v1, v0}, Landroidx/media2/player/e$b;->b(Ljava/io/FileDescriptor;)V

    .line 1046
    move-object v0, p1

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v0}, Landroidx/media2/common/FileMediaItem;->b()V

    return-void

    .line 1047
    :cond_0
    instance-of v0, p1, Landroidx/media2/common/CallbackMediaItem;

    if-eqz v0, :cond_1

    .line 1048
    move-object v0, p1

    check-cast v0, Landroidx/media2/common/CallbackMediaItem;

    .line 3050
    iget-object v0, v0, Landroidx/media2/common/CallbackMediaItem;->a:Landroidx/media2/common/b;

    .line 1048
    invoke-virtual {v0}, Landroidx/media2/common/b;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 1051
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error releasing media item "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ExoPlayerWrapper"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 887
    iget-object v0, p0, Landroidx/media2/player/e$e;->c:Landroidx/media2/exoplayer/external/source/h;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/h;->i()I

    move-result v0

    .line 888
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-le v0, v2, :cond_1

    .line 890
    iget-object v3, p0, Landroidx/media2/player/e$e;->c:Landroidx/media2/exoplayer/external/source/h;

    invoke-virtual {v3, v2, v0}, Landroidx/media2/exoplayer/external/source/h;->a(II)V

    .line 892
    :goto_1
    iget-object v0, p0, Landroidx/media2/player/e$e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 893
    iget-object v0, p0, Landroidx/media2/player/e$e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/e$d;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 897
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 898
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/common/MediaItem;

    if-nez v3, :cond_2

    .line 900
    iget-object p1, p0, Landroidx/media2/player/e$e;->a:Landroidx/media2/player/e$c;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v2}, Landroidx/media2/player/e$c;->c(Landroidx/media2/common/MediaItem;I)V

    return-void

    .line 903
    :cond_2
    iget-object v4, p0, Landroidx/media2/player/e$e;->d:Ljava/util/ArrayDeque;

    invoke-direct {p0, v3, v4, v0}, Landroidx/media2/player/e$e;->a(Landroidx/media2/common/MediaItem;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_2

    .line 908
    :cond_3
    iget-object p1, p0, Landroidx/media2/player/e$e;->c:Landroidx/media2/exoplayer/external/source/h;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/h;->a(Ljava/util/Collection;)V

    .line 913
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/e$d;

    .line 914
    invoke-virtual {p0, v0}, Landroidx/media2/player/e$e;->a(Landroidx/media2/player/e$d;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 964
    invoke-virtual {p0}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 965
    iget-object v1, p0, Landroidx/media2/player/e$e;->b:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/ak;->o()I

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    iget-object v1, p0, Landroidx/media2/player/e$e;->a:Landroidx/media2/player/e$c;

    invoke-interface {v1, v0}, Landroidx/media2/player/e$c;->i(Landroidx/media2/common/MediaItem;)V

    .line 968
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/e$e;->b:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/ak;->c()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p1, :cond_1

    .line 972
    iget-object v1, p0, Landroidx/media2/player/e$e;->a:Landroidx/media2/player/e$c;

    invoke-virtual {p0}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media2/player/e$c;->h(Landroidx/media2/common/MediaItem;)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 975
    iget-object v3, p0, Landroidx/media2/player/e$e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/player/e$d;

    invoke-virtual {p0, v3}, Landroidx/media2/player/e$e;->a(Landroidx/media2/player/e$d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 978
    iget-object p1, p0, Landroidx/media2/player/e$e;->a:Landroidx/media2/player/e$c;

    invoke-virtual {p0}, Landroidx/media2/player/e$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-interface {p1, v2}, Landroidx/media2/player/e$c;->g(Landroidx/media2/common/MediaItem;)V

    .line 980
    :cond_3
    iget-object p1, p0, Landroidx/media2/player/e$e;->c:Landroidx/media2/exoplayer/external/source/h;

    invoke-virtual {p1, v1, v0}, Landroidx/media2/exoplayer/external/source/h;->a(II)V

    const-wide/16 v0, 0x0

    .line 981
    iput-wide v0, p0, Landroidx/media2/player/e$e;->f:J

    const-wide/16 v0, -0x1

    .line 982
    iput-wide v0, p0, Landroidx/media2/player/e$e;->e:J

    .line 983
    iget-object p1, p0, Landroidx/media2/player/e$e;->b:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/ak;->l()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 984
    invoke-virtual {p0}, Landroidx/media2/player/e$e;->d()V

    :cond_4
    return-void
.end method

.method public final b()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 924
    iget-object v0, p0, Landroidx/media2/player/e$e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/media2/player/e$e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/e$d;

    iget-object v0, v0, Landroidx/media2/player/e$d;->a:Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 932
    iget-object v0, p0, Landroidx/media2/player/e$e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/player/e$e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/e$d;

    iget-boolean v0, v0, Landroidx/media2/player/e$d;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 5

    .line 942
    iget-wide v0, p0, Landroidx/media2/player/e$e;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    .line 945
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/player/e$e;->e:J

    return-void
.end method
