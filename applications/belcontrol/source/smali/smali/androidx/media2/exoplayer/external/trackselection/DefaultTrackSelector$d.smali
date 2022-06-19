.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;
.super Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field public final x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field public final y:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->C:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;-><init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;-><init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;)V

    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->g:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->e:I

    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->h:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->f:I

    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->j:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->g:I

    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->k:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->h:I

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->l:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->i:Z

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->m:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->j:Z

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->n:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->k:Z

    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->o:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->l:I

    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->p:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->m:I

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->q:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->n:Z

    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->r:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->o:I

    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->s:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->p:I

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->t:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->q:Z

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->u:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->r:Z

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->s:Z

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->w:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->t:Z

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->u:Z

    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->y:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->v:Z

    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->z:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->w:I

    invoke-static {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->d(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->x:Landroid/util/SparseArray;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->b(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->y:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;-><init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method public static d(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public b()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .locals 29

    move-object/from16 v0, p0

    new-instance v27, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-object/from16 v1, v27

    iget v2, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->e:I

    iget v3, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->f:I

    iget v4, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->g:I

    iget v5, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->h:I

    iget-boolean v6, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->i:Z

    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->j:Z

    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->k:Z

    iget v9, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->l:I

    iget v10, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->m:I

    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->n:Z

    iget-object v12, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->a:Ljava/lang/String;

    iget v13, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->o:I

    iget v14, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->p:I

    iget-boolean v15, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->q:Z

    move-object/from16 v28, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->r:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->s:Z

    move/from16 v17, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->b:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->c:Z

    move/from16 v19, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->d:I

    move/from16 v20, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->t:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->u:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->v:Z

    move/from16 v23, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->w:I

    move/from16 v24, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->x:Landroid/util/SparseArray;

    move-object/from16 v25, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->y:Landroid/util/SparseBooleanArray;

    move-object/from16 v26, v1

    move-object/from16 v1, v28

    invoke-direct/range {v1 .. v26}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-object v27
.end method

.method public final c()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;
    .locals 1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->x:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-object p0
.end method

.method public final e(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;
    .locals 1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->y:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->y:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->y:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    return-object p0
.end method

.method public f(Z)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;
    .locals 0

    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;->a(Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$b;

    return-object p0
.end method

.method public final g(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;
    .locals 2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->x:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
