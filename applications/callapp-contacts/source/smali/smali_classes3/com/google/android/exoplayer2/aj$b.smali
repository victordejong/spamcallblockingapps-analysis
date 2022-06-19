.class final Lcom/google/android/exoplayer2/aj$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/ac$a;
.implements Lcom/google/android/exoplayer2/ak$a;
.implements Lcom/google/android/exoplayer2/audio/f;
.implements Lcom/google/android/exoplayer2/b$b;
.implements Lcom/google/android/exoplayer2/c$b;
.implements Lcom/google/android/exoplayer2/metadata/d;
.implements Lcom/google/android/exoplayer2/text/j;
.implements Lcom/google/android/exoplayer2/video/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/aj;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/aj;)V
    .locals 0

    .line 2018
    iput-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/aj;Lcom/google/android/exoplayer2/aj$1;)V
    .locals 0

    .line 2018
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/aj$b;-><init>(Lcom/google/android/exoplayer2/aj;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 2234
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x3

    .line 44079
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/aj;->a(ZII)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 2225
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/aj;->r()Z

    move-result v0

    .line 2226
    iget-object v1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 42079
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/aj;->a(ZI)I

    move-result v2

    .line 43079
    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/aj;->a(ZII)V

    return-void
.end method

.method public final a(IIIF)V
    .locals 2

    .line 2060
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 9079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2060
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/a/a;->a(IIIF)V

    .line 2062
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 10079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2062
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/video/k;

    .line 2063
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/k;->a(IIIF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 1

    .line 2054
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 8079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2054
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->a(IJ)V

    return-void
.end method

.method public final a(IJJ)V
    .locals 7

    .line 2124
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 25079
    iget-object v1, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2124
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/a/a;->a(IJJ)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 2119
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 24079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2119
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(J)V

    return-void
.end method

.method public final a(JI)V
    .locals 1

    .line 2092
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 18079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2092
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/a/a;->a(JI)V

    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    .line 2070
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 11079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2070
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a/a;->a(Landroid/view/Surface;)V

    .line 2071
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 12079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->m:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    .line 2072
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 13079
    iget-object p1, p1, Lcom/google/android/exoplayer2/aj;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2072
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/k;

    .line 2073
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/k;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    .line 2048
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 6079
    iput-object p1, v0, Lcom/google/android/exoplayer2/aj;->k:Lcom/google/android/exoplayer2/Format;

    .line 2049
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 7079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2049
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/aa;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/aa;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/ac$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/ac$b;)V

    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/al;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/al;I)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 2034
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 3079
    iput-object p1, v0, Lcom/google/android/exoplayer2/aj;->n:Lcom/google/android/exoplayer2/decoder/d;

    .line 2035
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 4079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2035
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 2167
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 36079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2167
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a/a;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 2168
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 37079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2168
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/metadata/d;

    .line 2169
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/metadata/d;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic a(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/g;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    .line 2150
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 33079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2150
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 2080
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 14079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2080
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 7

    .line 2041
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 5079
    iget-object v1, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2041
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/a/a;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .line 2157
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 34079
    iput-object p1, v0, Lcom/google/android/exoplayer2/aj;->s:Ljava/util/List;

    .line 2158
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 35079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2158
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/j;

    .line 2159
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/text/j;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$a(Lcom/google/android/exoplayer2/ac$a;Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 2220
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    invoke-static {v0}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/aj;)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 2277
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    invoke-static {p1}, Lcom/google/android/exoplayer2/aj;->b(Lcom/google/android/exoplayer2/aj;)V

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 1

    .line 2113
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 22079
    iput-object p1, v0, Lcom/google/android/exoplayer2/aj;->l:Lcom/google/android/exoplayer2/Format;

    .line 2114
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 23079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2114
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 2085
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 15079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2085
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a/a;->b(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 2086
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    const/4 v0, 0x0

    .line 16079
    iput-object v0, p1, Lcom/google/android/exoplayer2/aj;->k:Lcom/google/android/exoplayer2/Format;

    .line 2087
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 17079
    iput-object v0, p1, Lcom/google/android/exoplayer2/aj;->n:Lcom/google/android/exoplayer2/decoder/d;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 2129
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 26079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2129
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;JJ)V
    .locals 7

    .line 2106
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 21079
    iget-object v1, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2106
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/a/a;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final b(Z)V
    .locals 4

    .line 2264
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 50080
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->t:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2265
    iget-object v1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 50081
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/aj;->u:Z

    if-nez v1, :cond_0

    .line 2266
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 50082
    iget-object p1, p1, Lcom/google/android/exoplayer2/aj;->t:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 50083
    iget-object v1, p1, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 50084
    :try_start_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->b:Ljava/util/PriorityQueue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 50085
    iget v2, p1, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->c:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->c:I

    .line 50086
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2267
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    const/4 v0, 0x1

    .line 50088
    iput-boolean v0, p1, Lcom/google/android/exoplayer2/aj;->u:Z

    return-void

    :catchall_0
    move-exception p1

    .line 50086
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    if-nez p1, :cond_1

    .line 2268
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 50089
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/aj;->u:Z

    if-eqz p1, :cond_1

    .line 2269
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 50090
    iget-object p1, p1, Lcom/google/android/exoplayer2/aj;->t:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    .line 2269
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/PriorityTaskManager;->a()V

    .line 2270
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 50091
    iput-boolean v0, p1, Lcom/google/android/exoplayer2/aj;->u:Z

    :cond_1
    return-void
.end method

.method public synthetic b(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$b(Lcom/google/android/exoplayer2/ac$a;ZI)V

    return-void
.end method

.method public final c(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 2099
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 19079
    iput-object p1, v0, Lcom/google/android/exoplayer2/aj;->o:Lcom/google/android/exoplayer2/decoder/d;

    .line 2100
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 20079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2100
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a/a;->c(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void
.end method

.method public synthetic c(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$c(Lcom/google/android/exoplayer2/ac$a;Ljava/util/List;)V

    return-void
.end method

.method public synthetic c(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$c(Lcom/google/android/exoplayer2/ac$a;Z)V

    return-void
.end method

.method public final c(ZI)V
    .locals 0

    .line 2283
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    invoke-static {p1}, Lcom/google/android/exoplayer2/aj;->b(Lcom/google/android/exoplayer2/aj;)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 2244
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 45079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->j:Lcom/google/android/exoplayer2/ak;

    .line 46079
    invoke-static {v0}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/ak;)Lcom/google/android/exoplayer2/b/a;

    move-result-object v0

    .line 2245
    iget-object v1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 47079
    iget-object v1, v1, Lcom/google/android/exoplayer2/aj;->w:Lcom/google/android/exoplayer2/b/a;

    .line 2245
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/b/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2246
    iget-object v1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 48079
    iput-object v0, v1, Lcom/google/android/exoplayer2/aj;->w:Lcom/google/android/exoplayer2/b/a;

    .line 2247
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 49079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2247
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic d(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$d(Lcom/google/android/exoplayer2/ac$a;I)V

    return-void
.end method

.method public final d(Lcom/google/android/exoplayer2/decoder/d;)V
    .locals 1

    .line 2134
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 27079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    .line 2134
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/a/a;->d(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 2135
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    const/4 v0, 0x0

    .line 28079
    iput-object v0, p1, Lcom/google/android/exoplayer2/aj;->l:Lcom/google/android/exoplayer2/Format;

    .line 2136
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 29079
    iput-object v0, p1, Lcom/google/android/exoplayer2/aj;->o:Lcom/google/android/exoplayer2/decoder/d;

    return-void
.end method

.method public final d(Z)V
    .locals 2

    .line 2141
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 30079
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/aj;->r:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2144
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 31079
    iput-boolean p1, v0, Lcom/google/android/exoplayer2/aj;->r:Z

    .line 2145
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 32911
    iget-object v0, p1, Lcom/google/android/exoplayer2/aj;->h:Lcom/google/android/exoplayer2/a/a;

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/aj;->r:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/a/a;->d(Z)V

    .line 32912
    iget-object p1, p1, Lcom/google/android/exoplayer2/aj;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 2

    .line 2255
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 50079
    iget-object v0, v0, Lcom/google/android/exoplayer2/aj;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2255
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic e(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$e(Lcom/google/android/exoplayer2/ac$a;I)V

    return-void
.end method

.method public synthetic f(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$f(Lcom/google/android/exoplayer2/ac$a;I)V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 2195
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/aj;Landroid/view/Surface;Z)V

    .line 2196
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/aj;II)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 2206
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/aj;Landroid/view/Surface;Z)V

    .line 2207
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    const/4 v0, 0x0

    .line 41079
    invoke-virtual {p1, v0, v0}, Lcom/google/android/exoplayer2/aj;->a(II)V

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 2201
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 40079
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/aj;->a(II)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public synthetic p_()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ac$a$-CC;->$default$p_(Lcom/google/android/exoplayer2/ac$a;)V

    return-void
.end method

.method public final q_()V
    .locals 1

    .line 2288
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    invoke-static {v0}, Lcom/google/android/exoplayer2/aj;->b(Lcom/google/android/exoplayer2/aj;)V

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 2182
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 38079
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/aj;->a(II)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 2177
    iget-object v0, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/aj;Landroid/view/Surface;Z)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 2187
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/aj;->a(Lcom/google/android/exoplayer2/aj;Landroid/view/Surface;Z)V

    .line 2188
    iget-object p1, p0, Lcom/google/android/exoplayer2/aj$b;->a:Lcom/google/android/exoplayer2/aj;

    .line 39079
    invoke-virtual {p1, v1, v1}, Lcom/google/android/exoplayer2/aj;->a(II)V

    return-void
.end method
