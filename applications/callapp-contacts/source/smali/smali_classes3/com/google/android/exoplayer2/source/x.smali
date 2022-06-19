.class public final Lcom/google/android/exoplayer2/source/x;
.super Lcom/google/android/exoplayer2/source/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/w$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/x$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/MediaItem;

.field private final b:Lcom/google/android/exoplayer2/MediaItem$c;

.field private final c:Lcom/google/android/exoplayer2/upstream/h$a;

.field private final d:Lcom/google/android/exoplayer2/extractor/l;

.field private final e:Lcom/google/android/exoplayer2/drm/d;

.field private final f:Lcom/google/android/exoplayer2/upstream/r;

.field private final g:I

.field private h:Z

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Lcom/google/android/exoplayer2/upstream/v;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/h$a;Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/drm/d;Lcom/google/android/exoplayer2/upstream/r;I)V
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    .line 263
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/MediaItem$c;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/x;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    .line 264
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->a:Lcom/google/android/exoplayer2/MediaItem;

    .line 265
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/x;->c:Lcom/google/android/exoplayer2/upstream/h$a;

    .line 266
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/x;->d:Lcom/google/android/exoplayer2/extractor/l;

    .line 267
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/x;->e:Lcom/google/android/exoplayer2/drm/d;

    .line 268
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/x;->f:Lcom/google/android/exoplayer2/upstream/r;

    .line 269
    iput p6, p0, Lcom/google/android/exoplayer2/source/x;->g:I

    const/4 p1, 0x1

    .line 270
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/x;->h:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 271
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->i:J

    return-void
.end method

.method private g()V
    .locals 9

    .line 357
    new-instance v8, Lcom/google/android/exoplayer2/source/ad;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/x;->i:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/x;->j:Z

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/x;->k:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/x;->a:Lcom/google/android/exoplayer2/MediaItem;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ad;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    .line 365
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->h:Z

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Lcom/google/android/exoplayer2/source/x$1;

    invoke-direct {v0, p0, v8}, Lcom/google/android/exoplayer2/source/x$1;-><init>(Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/al;)V

    move-object v8, v0

    .line 379
    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/source/x;->a(Lcom/google/android/exoplayer2/al;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/p;
    .locals 14

    move-object v12, p0

    .line 304
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->c:Lcom/google/android/exoplayer2/upstream/h$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/h;

    move-result-object v2

    .line 305
    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/upstream/v;

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    .line 308
    :cond_0
    new-instance v13, Lcom/google/android/exoplayer2/source/w;

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$c;->a:Landroid/net/Uri;

    iget-object v3, v12, Lcom/google/android/exoplayer2/source/x;->d:Lcom/google/android/exoplayer2/extractor/l;

    iget-object v4, v12, Lcom/google/android/exoplayer2/source/x;->e:Lcom/google/android/exoplayer2/drm/d;

    .line 313
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/x;->b(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/drm/c$a;

    move-result-object v5

    iget-object v6, v12, Lcom/google/android/exoplayer2/source/x;->f:Lcom/google/android/exoplayer2/upstream/r;

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/x;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/s$a;

    move-result-object v7

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    iget-object v10, v0, Lcom/google/android/exoplayer2/MediaItem$c;->f:Ljava/lang/String;

    iget v11, v12, Lcom/google/android/exoplayer2/source/x;->g:I

    move-object v0, v13

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/w;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/drm/d;Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/upstream/r;Lcom/google/android/exoplayer2/source/s$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/String;I)V

    return-object v13
.end method

.method public final a(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 337
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->i:J

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->h:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/x;->i:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->j:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->k:Z

    if-ne v0, p4, :cond_1

    return-void

    .line 345
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->i:J

    .line 346
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/x;->j:Z

    .line 347
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/source/x;->k:Z

    const/4 p1, 0x0

    .line 348
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/x;->h:Z

    .line 349
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->g()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p;)V
    .locals 4

    .line 324
    check-cast p1, Lcom/google/android/exoplayer2/source/w;

    .line 1211
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/w;->f:Z

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/w;->e:[Lcom/google/android/exoplayer2/source/z;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1267
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/z;->e()V

    .line 1268
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/z;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1218
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/w;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader$e;)V

    .line 1219
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/w;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1220
    iput-object v1, p1, Lcom/google/android/exoplayer2/source/w;->d:Lcom/google/android/exoplayer2/source/p$a;

    const/4 v0, 0x1

    .line 1221
    iput-boolean v0, p1, Lcom/google/android/exoplayer2/source/w;->h:Z

    return-void
.end method

.method protected final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/upstream/v;

    .line 293
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->e:Lcom/google/android/exoplayer2/drm/d;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/d;->a()V

    .line 294
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->g()V

    return-void
.end method

.method protected final c()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->e:Lcom/google/android/exoplayer2/drm/d;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/d;->b()V

    return-void
.end method

.method public final e()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->a:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method public final f()V
    .locals 0

    return-void
.end method
