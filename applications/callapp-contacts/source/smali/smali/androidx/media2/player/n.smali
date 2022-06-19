.class final Landroidx/media2/player/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/n$a;,
        Landroidx/media2/player/n$b;
    }
.end annotation


# instance fields
.field a:I

.field b:Landroidx/media2/common/MediaItem;

.field final c:Landroidx/media2/player/l;

.field final d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

.field final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/player/n$b;",
            ">;"
        }
    .end annotation
.end field

.field final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/player/n$b;",
            ">;"
        }
    .end annotation
.end field

.field final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/player/n$b;",
            ">;"
        }
    .end annotation
.end field

.field final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/player/n$a;",
            ">;"
        }
    .end annotation
.end field

.field i:Z

.field j:Landroidx/media2/player/n$b;

.field k:Landroidx/media2/player/n$b;

.field l:Landroidx/media2/player/n$b;

.field m:Landroidx/media2/player/n$a;

.field n:I


# direct methods
.method constructor <init>(Landroidx/media2/player/l;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroidx/media2/player/n;->c:Landroidx/media2/player/l;

    .line 81
    new-instance p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>()V

    iput-object p1, p0, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/n;->e:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/n;->f:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/n;->g:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/n;->h:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Landroidx/media2/player/n;->j:Landroidx/media2/player/n$b;

    .line 87
    iput-object v0, p0, Landroidx/media2/player/n;->k:Landroidx/media2/player/n$b;

    .line 88
    iput-object v0, p0, Landroidx/media2/player/n;->l:Landroidx/media2/player/n$b;

    .line 89
    iput-object v0, p0, Landroidx/media2/player/n;->m:Landroidx/media2/player/n$a;

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Landroidx/media2/player/n;->n:I

    .line 93
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;-><init>()V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a(Z)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->b(Z)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return-object v1

    .line 250
    :cond_0
    iget-object p1, p0, Landroidx/media2/player/n;->l:Landroidx/media2/player/n$b;

    if-nez p1, :cond_1

    return-object v1

    .line 251
    :cond_1
    iget-object p1, p1, Landroidx/media2/player/n$b;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-object p1

    .line 253
    :cond_2
    iget-object p1, p0, Landroidx/media2/player/n;->m:Landroidx/media2/player/n$a;

    if-nez p1, :cond_3

    return-object v1

    .line 254
    :cond_3
    iget-object p1, p1, Landroidx/media2/player/n$a;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-object p1

    .line 244
    :cond_4
    iget-object p1, p0, Landroidx/media2/player/n;->j:Landroidx/media2/player/n$b;

    if-nez p1, :cond_5

    return-object v1

    .line 245
    :cond_5
    iget-object p1, p1, Landroidx/media2/player/n$b;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-object p1

    .line 247
    :cond_6
    iget-object p1, p0, Landroidx/media2/player/n;->k:Landroidx/media2/player/n$b;

    if-nez p1, :cond_7

    return-object v1

    .line 248
    :cond_7
    iget-object p1, p1, Landroidx/media2/player/n$b;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-object p1
.end method

.method public final a()Z
    .locals 2

    .line 236
    iget-boolean v0, p0, Landroidx/media2/player/n;->i:Z

    const/4 v1, 0x0

    .line 237
    iput-boolean v1, p0, Landroidx/media2/player/n;->i:Z

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/util/SparseArray;

    .line 263
    iget-object v2, p0, Landroidx/media2/player/n;->e:Landroid/util/SparseArray;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroidx/media2/player/n;->f:Landroid/util/SparseArray;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Landroidx/media2/player/n;->g:Landroid/util/SparseArray;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Landroidx/media2/player/n;->h:Landroid/util/SparseArray;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v4, 0x0

    .line 265
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 266
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/player/n$b;

    iget-object v5, v5, Landroidx/media2/player/n$b;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
