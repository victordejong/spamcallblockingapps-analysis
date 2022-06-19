.class public final Lvv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvv$a;
    }
.end annotation


# instance fields
.field public final a:Luv;

.field public final b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfv$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfv$c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfv$c;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfv$c;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvv$a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Luv;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvv;->a:Luv;

    new-instance p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;-><init>()V

    iput-object p1, p0, Lvv;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvv;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvv;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvv;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvv;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvv;->g:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lvv;->i:I

    iput v0, p0, Lvv;->j:I

    iput v0, p0, Lvv;->k:I

    iput v0, p0, Lvv;->l:I

    iput v0, p0, Lvv;->m:I

    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->f(Z)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->e(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->M(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "application/cea-708"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "application/cea-608"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "text/vtt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected text MIME type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return v2

    :pswitch_1
    return v3

    :pswitch_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x3be2f26c -> :sswitch_2
        0x5d578071 -> :sswitch_1
        0x5d578432 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lvv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Video track deselection is not supported"

    invoke-static {v0, v3}, Loa;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lvv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lvv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "Audio track deselection is not supported"

    invoke-static {v0, v3}, Loa;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lvv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lvv;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, -0x1

    if-ge p1, v0, :cond_2

    iput v3, p0, Lvv;->k:I

    iget-object p1, p0, Lvv;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->m()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->e(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->M(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;)V

    return-void

    :cond_2
    iget-object v0, p0, Lvv;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lvv;->m:I

    if-ne p1, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Loa;->a(Z)V

    iget-object p1, p0, Lvv;->a:Luv;

    invoke-virtual {p1}, Luv;->u()V

    iput v3, p0, Lvv;->m:I

    return-void
.end method

.method public b()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
    .locals 1

    iget-object v0, p0, Lvv;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    return-object v0
.end method

.method public c(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object p1, p0, Lvv;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lvv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lvv;->k:I

    :goto_0
    add-int/2addr p1, v0

    return p1

    :cond_1
    iget-object p1, p0, Lvv;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lvv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lvv;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lvv;->m:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lvv;->i:I

    return p1

    :cond_3
    iget-object p1, p0, Lvv;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lvv;->j:I

    goto :goto_0
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfv$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lvv;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lvv;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lvv;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lvv;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lvv;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lvv;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lvv;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lvv;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public f(Lfh;)V
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvv;->h:Z

    iget-object v1, p0, Lvv;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->m()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->c()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->M(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;)V

    const/4 v1, -0x1

    iput v1, p0, Lvv;->i:I

    iput v1, p0, Lvv;->j:I

    iput v1, p0, Lvv;->k:I

    iput v1, p0, Lvv;->l:I

    iput v1, p0, Lvv;->m:I

    iget-object v2, p0, Lvv;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lvv;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lvv;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lvv;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lvv;->a:Luv;

    invoke-virtual {v2}, Luv;->u()V

    iget-object v2, p0, Lvv;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v2}, Ltr;->g()Ltr$a;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v0}, Ltr$a;->c(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, v3, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    const/4 v7, 0x2

    if-ge v5, v6, :cond_1

    invoke-virtual {v3, v5}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v6

    new-instance v8, Lkv;

    invoke-virtual {v6, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    invoke-static {v6}, Lov;->e(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Lkv;-><init>(ILandroid/media/MediaFormat;)V

    iget-object v6, p0, Lvv;->c:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4}, Ltr$a;->c(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    iget v8, v5, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v6, v8, :cond_2

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v8

    new-instance v9, Lkv;

    invoke-virtual {v8, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v8

    invoke-static {v8}, Lov;->e(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;

    move-result-object v8

    invoke-direct {v9, v0, v8}, Lkv;-><init>(ILandroid/media/MediaFormat;)V

    iget-object v8, p0, Lvv;->d:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ltr$a;->c(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v8

    const/4 v9, 0x0

    :goto_2
    iget v10, v8, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v9, v10, :cond_3

    invoke-virtual {v8, v9}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v10

    new-instance v11, Lkv;

    const/4 v12, 0x5

    invoke-virtual {v10, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    invoke-static {v10}, Lov;->e(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;

    move-result-object v10

    invoke-direct {v11, v12, v10}, Lkv;-><init>(ILandroid/media/MediaFormat;)V

    iget-object v10, p0, Lvv;->e:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lfh;->getCurrentTrackSelections()Lzr;

    move-result-object p1

    invoke-virtual {p1, v0}, Lzr;->a(I)Lyr;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Lyr;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v0

    :goto_3
    iput v0, p0, Lvv;->i:I

    invoke-virtual {p1, v4}, Lzr;->a(I)Lyr;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, -0x1

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Lyr;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v0

    :goto_4
    iput v0, p0, Lvv;->j:I

    invoke-virtual {p1, v6}, Lzr;->a(I)Lyr;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Lyr;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v0

    :goto_5
    iput v0, p0, Lvv;->k:I

    invoke-virtual {v2, v7}, Ltr$a;->c(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    const/4 v2, 0x0

    :goto_6
    iget v3, v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    invoke-static {v3}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Landroidx/media2/exoplayer/external/Format;

    iget-object v5, v3, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    invoke-static {v5}, Lvv;->d(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lvv$a;

    invoke-direct {v6, v2, v5, v3, v1}, Lvv$a;-><init>(IILandroidx/media2/exoplayer/external/Format;I)V

    iget-object v3, p0, Lvv;->g:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lvv;->f:Ljava/util/List;

    iget-object v5, v6, Lvv$a;->b:Lkv;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v7}, Lzr;->a(I)Lyr;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_7

    :cond_8
    invoke-interface {p1}, Lyr;->getTrackGroup()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b(Landroidx/media2/exoplayer/external/source/TrackGroup;)I

    move-result v1

    :goto_7
    iput v1, p0, Lvv;->l:I

    return-void
.end method

.method public g(II)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lvv;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lvv;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvv$a;

    iget v4, v2, Lvv$a;->c:I

    if-ne v4, p1, :cond_1

    iget v4, v2, Lvv$a;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    new-instance v0, Lvv$a;

    iget v4, v2, Lvv$a;->a:I

    iget-object v2, v2, Lvv$a;->e:Landroidx/media2/exoplayer/external/Format;

    invoke-direct {v0, v4, p1, v2, p2}, Lvv$a;-><init>(IILandroidx/media2/exoplayer/external/Format;I)V

    iget-object v2, p0, Lvv;->g:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lvv;->m:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lvv;->a:Luv;

    invoke-virtual {v0, p1, p2}, Luv;->A(II)V

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Lvv$a;

    iget v1, p0, Lvv;->l:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p2}, Lvv$a;-><init>(IILandroidx/media2/exoplayer/external/Format;I)V

    iget-object p1, p0, Lvv;->g:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lvv;->f:Ljava/util/List;

    iget-object p2, v0, Lvv$a;->b:Lkv;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lvv;->h:Z

    :cond_3
    return-void
.end method

.method public h()Z
    .locals 2

    iget-boolean v0, p0, Lvv;->h:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lvv;->h:Z

    return v0
.end method

.method public i(I)V
    .locals 7

    iget-object v0, p0, Lvv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Video track selection is not supported"

    invoke-static {v0, v3}, Loa;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lvv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lvv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iput p1, p0, Lvv;->i:I

    iget-object v0, p0, Lvv;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Ltr;->g()Ltr$a;

    move-result-object v0

    invoke-static {v0}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ltr$a;

    invoke-virtual {v0, v1}, Ltr$a;->c(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a(I)Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v3

    iget v3, v3, Landroidx/media2/exoplayer/external/source/TrackGroup;->a:I

    new-array v4, v3, [I

    :goto_1
    if-ge v2, v3, :cond_1

    aput v2, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v2, p1, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    iget-object p1, p0, Lvv;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->m()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->g(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->b()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->L(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    return-void

    :cond_2
    iget-object v0, p0, Lvv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lvv;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iput p1, p0, Lvv;->k:I

    iget-object v0, p0, Lvv;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Ltr;->g()Ltr$a;

    move-result-object v0

    invoke-static {v0}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ltr$a;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ltr$a;->c(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    new-instance v4, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-direct {v4, p1, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    iget-object p1, p0, Lvv;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->m()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->e(IZ)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    invoke-virtual {v1, v3, v0, v4}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->g(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->b()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lvv;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lvv;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Loa;->a(Z)V

    iget-object v0, p0, Lvv;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvv$a;

    iget v3, p0, Lvv;->l:I

    iget v4, v0, Lvv$a;->a:I

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lvv;->a:Luv;

    invoke-virtual {v3}, Luv;->u()V

    iget v3, v0, Lvv$a;->a:I

    iput v3, p0, Lvv;->l:I

    iget-object v3, p0, Lvv;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v3}, Ltr;->g()Ltr$a;

    move-result-object v3

    invoke-static {v3}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Ltr$a;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ltr$a;->c(I)Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v3

    new-instance v5, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    iget v6, p0, Lvv;->l:I

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-direct {v5, v6, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[I)V

    iget-object v1, p0, Lvv;->b:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->m()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    move-result-object v2

    invoke-virtual {v2, v4, v3, v5}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->g(ILandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$d;->b()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->L(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;)V

    :cond_5
    iget v1, v0, Lvv$a;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    iget-object v2, p0, Lvv;->a:Luv;

    iget v0, v0, Lvv$a;->c:I

    invoke-virtual {v2, v0, v1}, Luv;->A(II)V

    :cond_6
    iput p1, p0, Lvv;->m:I

    return-void
.end method
