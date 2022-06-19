.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;
.super Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field public final d:Landroid/util/SparseArray;
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

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private final z:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    sget-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_VIEWPORT:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;-><init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 210
    invoke-static {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;-><init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 6

    .line 218
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;-><init>(Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;)V

    .line 220
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->i:I

    .line 221
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->j:I

    .line 222
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->k:I

    .line 223
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->l:I

    .line 224
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->m:Z

    .line 225
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->n:Z

    .line 226
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->o:Z

    .line 227
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a:I

    .line 228
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->b:I

    .line 229
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->c:Z

    .line 231
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxAudioChannelCount:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->p:I

    .line 232
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->q:I

    .line 233
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->r:Z

    .line 234
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->s:Z

    .line 235
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->t:Z

    .line 236
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->u:Z

    .line 239
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->v:Z

    .line 240
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->w:Z

    .line 241
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->x:Z

    .line 242
    iget v0, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->y:I

    .line 244
    invoke-static {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->access$000(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseArray;

    move-result-object v0

    .line 1735
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 1736
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1737
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->d:Landroid/util/SparseArray;

    .line 245
    invoke-static {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->access$100(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->z:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$1;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;-><init>(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;
    .locals 30

    move-object/from16 v0, p0

    .line 700
    new-instance v28, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-object/from16 v1, v28

    iget v2, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->i:I

    iget v3, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->j:I

    iget v4, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->k:I

    iget v5, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->l:I

    iget-boolean v6, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->m:Z

    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->n:Z

    iget-boolean v8, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->o:Z

    iget v9, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a:I

    iget v10, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->b:I

    iget-boolean v11, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->c:Z

    iget-object v12, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->e:Ljava/lang/String;

    iget v13, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->p:I

    iget v14, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->q:I

    iget-boolean v15, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->r:Z

    move-object/from16 v29, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->s:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->t:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->u:Z

    move/from16 v18, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->f:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->g:Z

    move/from16 v20, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->h:I

    move/from16 v21, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->v:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->w:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->x:Z

    move/from16 v24, v1

    iget v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->y:I

    move/from16 v25, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->d:Landroid/util/SparseArray;

    move-object/from16 v26, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->z:Landroid/util/SparseBooleanArray;

    move-object/from16 v27, v1

    move-object/from16 v1, v29

    invoke-direct/range {v1 .. v27}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;-><init>(IIIIZZZIIZLjava/lang/String;IIZZZZLjava/lang/String;ZIZZZILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-object v28
.end method

.method public final a(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;
    .locals 2

    .line 632
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 635
    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 637
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 641
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Z)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;
    .locals 0

    const/4 p1, 0x1

    .line 492
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;->c(Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;

    return-object p0
.end method

.method public final b(Z)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;
    .locals 2

    .line 594
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->z:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 600
    iget-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->z:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 602
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->z:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic c(Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;
    .locals 0

    .line 2492
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;->c(Z)Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters$a;

    return-object p0
.end method
