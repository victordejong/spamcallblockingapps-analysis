.class final Landroidx/media2/player/c$18;
.super Landroidx/media2/player/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->b(I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;IZI)V
    .locals 0

    .line 503
    iput-object p1, p0, Landroidx/media2/player/c$18;->b:Landroidx/media2/player/c;

    iput p4, p0, Landroidx/media2/player/c$18;->a:I

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/c$b;-><init>(Landroidx/media2/player/c;IZ)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 8

    .line 506
    iget-object v0, p0, Landroidx/media2/player/c$18;->b:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    iget v1, p0, Landroidx/media2/player/c$18;->a:I

    .line 1378
    iget-object v0, v0, Landroidx/media2/player/e;->i:Landroidx/media2/player/n;

    .line 2273
    iget-object v2, v0, Landroidx/media2/player/n;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/n$b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Video track selection is not supported"

    .line 2274
    invoke-static {v2, v5}, Landroidx/core/e/d;->a(ZLjava/lang/Object;)V

    .line 2276
    iget-object v2, v0, Landroidx/media2/player/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/n$b;

    if-eqz v2, :cond_2

    .line 2278
    iput-object v2, v0, Landroidx/media2/player/n;->j:Landroidx/media2/player/n$b;

    .line 2279
    iget-object v1, v0, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 3328
    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/d;->a:Landroidx/media2/exoplayer/external/trackselection/d$a;

    .line 2280
    invoke-static {v1}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/trackselection/d$a;

    .line 4151
    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v1, v1, v3

    .line 2282
    iget v5, v2, Landroidx/media2/player/n$b;->d:I

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v5

    .line 2284
    iget v5, v5, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    new-array v6, v5, [I

    :goto_1
    if-ge v4, v5, :cond_1

    .line 2286
    aput v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2288
    :cond_1
    new-instance v4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    iget v2, v2, Landroidx/media2/player/n$b;->d:I

    invoke-direct {v4, v2, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 2291
    iget-object v2, v0, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    iget-object v0, v0, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v0

    .line 2292
    invoke-virtual {v0, v3, v1, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v0

    .line 2293
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 2291
    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void

    .line 2297
    :cond_2
    iget-object v2, v0, Landroidx/media2/player/n;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/n$b;

    if-eqz v2, :cond_3

    .line 2299
    iput-object v2, v0, Landroidx/media2/player/n;->l:Landroidx/media2/player/n$b;

    .line 2300
    iget-object v1, v0, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 4328
    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/d;->a:Landroidx/media2/exoplayer/external/trackselection/d$a;

    .line 2301
    invoke-static {v1}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/trackselection/d$a;

    .line 5151
    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    .line 2304
    new-instance v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    iget v2, v2, Landroidx/media2/player/n$b;->d:I

    new-array v3, v3, [I

    aput v4, v3, v4

    invoke-direct {v6, v2, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 2307
    iget-object v2, v0, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    iget-object v0, v0, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v0

    .line 2308
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->b(Z)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v0

    .line 2309
    invoke-virtual {v0, v5, v1, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v0

    .line 2311
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 2307
    invoke-virtual {v2, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void

    .line 2315
    :cond_3
    iget-object v2, v0, Landroidx/media2/player/n;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/n$a;

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 2316
    :goto_2
    invoke-static {v2}, Landroidx/core/e/d;->a(Z)V

    .line 2317
    iget v2, v0, Landroidx/media2/player/n;->n:I

    iget v5, v1, Landroidx/media2/player/n$a;->d:I

    if-eq v2, v5, :cond_5

    .line 2319
    iget-object v2, v0, Landroidx/media2/player/n;->c:Landroidx/media2/player/l;

    invoke-virtual {v2}, Landroidx/media2/player/l;->z()V

    .line 2320
    iget v2, v1, Landroidx/media2/player/n$a;->d:I

    iput v2, v0, Landroidx/media2/player/n;->n:I

    .line 2321
    iget-object v2, v0, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 5328
    iget-object v2, v2, Landroidx/media2/exoplayer/external/trackselection/d;->a:Landroidx/media2/exoplayer/external/trackselection/d$a;

    .line 2322
    invoke-static {v2}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/trackselection/d$a;

    .line 6151
    iget-object v2, v2, Landroidx/media2/exoplayer/external/trackselection/d$a;->d:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    .line 2324
    new-instance v6, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    iget v7, v0, Landroidx/media2/player/n;->n:I

    new-array v3, v3, [I

    aput v4, v3, v4

    invoke-direct {v6, v7, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    .line 2326
    iget-object v3, v0, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    iget-object v4, v0, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v4

    .line 2327
    invoke-virtual {v4, v5, v2, v6}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v2

    .line 2328
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    .line 2326
    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    .line 2330
    :cond_5
    iget v2, v1, Landroidx/media2/player/n$a;->b:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 2331
    iget-object v2, v0, Landroidx/media2/player/n;->c:Landroidx/media2/player/l;

    iget v3, v1, Landroidx/media2/player/n$a;->a:I

    iget v4, v1, Landroidx/media2/player/n$a;->b:I

    invoke-virtual {v2, v3, v4}, Landroidx/media2/player/l;->a(II)V

    .line 2333
    :cond_6
    iput-object v1, v0, Landroidx/media2/player/n;->m:Landroidx/media2/player/n$a;

    return-void
.end method
