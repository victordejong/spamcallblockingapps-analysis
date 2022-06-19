.class final Landroidx/media2/player/c$19;
.super Landroidx/media2/player/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->c(I)Ljava/lang/Object;
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

    .line 514
    iput-object p1, p0, Landroidx/media2/player/c$19;->b:Landroidx/media2/player/c;

    iput p4, p0, Landroidx/media2/player/c$19;->a:I

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/c$b;-><init>(Landroidx/media2/player/c;IZ)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 517
    iget-object v0, p0, Landroidx/media2/player/c$19;->b:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    iget v1, p0, Landroidx/media2/player/c$19;->a:I

    .line 1382
    iget-object v0, v0, Landroidx/media2/player/e;->i:Landroidx/media2/player/n;

    .line 2337
    iget-object v2, v0, Landroidx/media2/player/n;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/n$b;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Video track deselection is not supported"

    .line 2338
    invoke-static {v2, v5}, Landroidx/core/e/d;->a(ZLjava/lang/Object;)V

    .line 2339
    iget-object v2, v0, Landroidx/media2/player/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/n$b;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v5, "Audio track deselection is not supported"

    .line 2340
    invoke-static {v2, v5}, Landroidx/core/e/d;->a(ZLjava/lang/Object;)V

    .line 2342
    iget-object v2, v0, Landroidx/media2/player/n;->g:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/n$b;

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 2344
    iput-object v5, v0, Landroidx/media2/player/n;->l:Landroidx/media2/player/n$b;

    .line 2345
    iget-object v1, v0, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    iget-object v0, v0, Landroidx/media2/player/n;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v0

    .line 2346
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->b(Z)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    move-result-object v0

    .line 2345
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;)V

    return-void

    .line 2350
    :cond_2
    iget-object v2, v0, Landroidx/media2/player/n;->m:Landroidx/media2/player/n$a;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroidx/media2/player/n;->m:Landroidx/media2/player/n$a;

    iget-object v2, v2, Landroidx/media2/player/n$a;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 3162
    iget v2, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    if-ne v2, v1, :cond_3

    const/4 v3, 0x1

    .line 2350
    :cond_3
    invoke-static {v3}, Landroidx/core/e/d;->a(Z)V

    .line 2352
    iget-object v1, v0, Landroidx/media2/player/n;->c:Landroidx/media2/player/l;

    invoke-virtual {v1}, Landroidx/media2/player/l;->z()V

    .line 2353
    iput-object v5, v0, Landroidx/media2/player/n;->m:Landroidx/media2/player/n$a;

    return-void
.end method
