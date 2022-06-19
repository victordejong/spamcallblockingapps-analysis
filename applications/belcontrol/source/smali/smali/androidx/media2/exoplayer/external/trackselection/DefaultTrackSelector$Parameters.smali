.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
.super Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# static fields
.field public static final C:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Landroid/util/SparseArray;
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

.field public final B:Landroid/util/SparseBooleanArray;

.field public final g:I

.field public final h:I

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:I

.field public final p:I

.field public final q:Z

.field public final r:I

.field public final s:I

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->C:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters$a;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    sget-object v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->f:Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;

    iget-object v11, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->a:Ljava/lang/String;

    iget-object v2, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->b:Ljava/lang/String;

    move-object/from16 v17, v2

    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->c:Z

    move/from16 v18, v2

    iget v1, v1, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->d:I

    move/from16 v19, v1

    new-instance v1, Landroid/util/SparseArray;

    move-object/from16 v24, v1

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/SparseBooleanArray;

    move-object/from16 v25, v1

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x7fffffff

    const v9, 0x7fffffff

    const/4 v10, 0x1

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v25}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-void
.end method

.method public constructor <init>(IIIIZZZIIZLjava/lang/String;IIZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZZZIIZ",
            "Ljava/lang/String;",
            "IIZZZ",
            "Ljava/lang/String;",
            "ZIZZZI",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p11

    move-object/from16 v2, p17

    move/from16 v3, p18

    move/from16 v4, p19

    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    move v1, p1

    iput v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->g:I

    move v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->h:I

    move v1, p3

    iput v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->j:I

    move v1, p4

    iput v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->k:I

    move v1, p5

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->l:Z

    move v1, p6

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->m:Z

    move v1, p7

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->n:Z

    move v1, p8

    iput v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->o:I

    move v1, p9

    iput v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->p:I

    move v1, p10

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->q:Z

    move/from16 v1, p12

    iput v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->r:I

    move/from16 v1, p13

    iput v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->s:I

    move/from16 v1, p14

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->t:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->u:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->w:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    move/from16 v1, p22

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->y:Z

    move/from16 v1, p23

    iput v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->z:I

    move-object/from16 v1, p24

    iput-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseArray;

    move-object/from16 v1, p25

    iput-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->B:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->k:I

    invoke-static {p1}, Lnu;->c0(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->l:Z

    invoke-static {p1}, Lnu;->c0(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->m:Z

    invoke-static {p1}, Lnu;->c0(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->n:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->o:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->p:I

    invoke-static {p1}, Lnu;->c0(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->q:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->r:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->s:I

    invoke-static {p1}, Lnu;->c0(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->t:Z

    invoke-static {p1}, Lnu;->c0(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->u:Z

    invoke-static {p1}, Lnu;->c0(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    invoke-static {p1}, Lnu;->c0(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->w:Z

    invoke-static {p1}, Lnu;->c0(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    invoke-static {p1}, Lnu;->c0(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->y:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->z:I

    invoke-static {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->j(Landroid/os/Parcel;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-static {p1}, Lnu;->g(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->B:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static synthetic a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic b(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->B:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static c(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v4, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->e(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lnu;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static j(Landroid/os/Parcel;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    const-class v8, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const-class v9, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static k(Landroid/os/Parcel;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {p0, v5, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {p0, v4, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->g:I

    iget v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->g:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->h:I

    iget v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->h:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->j:I

    iget v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->j:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->k:I

    iget v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->k:I

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->l:Z

    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->l:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->m:Z

    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->m:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->n:Z

    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->n:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->q:Z

    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->q:Z

    if-ne p1, v3, :cond_2

    iget p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->o:I

    iget v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->o:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->p:I

    iget v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->p:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->r:I

    iget v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->r:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->s:I

    iget v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->s:I

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->t:Z

    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->t:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->u:Z

    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->u:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->w:Z

    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->w:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    if-ne p1, v3, :cond_2

    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->y:Z

    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->y:Z

    if-ne p1, v3, :cond_2

    iget p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->z:I

    iget v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->z:I

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->B:Landroid/util/SparseBooleanArray;

    iget-object v3, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->B:Landroid/util/SparseBooleanArray;

    invoke-static {p1, v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->c(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseArray;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseArray;

    invoke-static {p1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->d(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;
    .locals 2

    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;-><init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$a;)V

    return-object v0
.end method

.method public final g(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->B:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final h(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    .locals 1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->l:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->m:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->n:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->q:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->o:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->p:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->r:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->s:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->t:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->u:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->w:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->y:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->z:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->l:Z

    invoke-static {p1, p2}, Lnu;->o0(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->m:Z

    invoke-static {p1, p2}, Lnu;->o0(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->n:Z

    invoke-static {p1, p2}, Lnu;->o0(Landroid/os/Parcel;Z)V

    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->q:Z

    invoke-static {p1, p2}, Lnu;->o0(Landroid/os/Parcel;Z)V

    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->t:Z

    invoke-static {p1, p2}, Lnu;->o0(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->u:Z

    invoke-static {p1, p2}, Lnu;->o0(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    invoke-static {p1, p2}, Lnu;->o0(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->w:Z

    invoke-static {p1, p2}, Lnu;->o0(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->x:Z

    invoke-static {p1, p2}, Lnu;->o0(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->y:Z

    invoke-static {p1, p2}, Lnu;->o0(Landroid/os/Parcel;Z)V

    iget p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->z:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->A:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->k(Landroid/os/Parcel;Landroid/util/SparseArray;)V

    iget-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->B:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    return-void
.end method
