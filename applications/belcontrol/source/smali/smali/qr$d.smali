.class public Lqr$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lyr$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lgs;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:F

.field public final f:F

.field public final g:J

.field public final h:Ljt;

.field public i:Lwr;

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    sget-object v8, Ljt;->a:Ljt;

    const/16 v1, 0x2710

    const/16 v2, 0x61a8

    const/16 v3, 0x61a8

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f400000    # 0.75f

    const-wide/16 v6, 0x7d0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lqr$d;-><init>(IIIFFJLjt;)V

    return-void
.end method

.method public constructor <init>(IIIFFJLjt;)V
    .locals 10

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lqr$d;-><init>(Lgs;IIIFFJLjt;)V

    return-void
.end method

.method public constructor <init>(Lgs;IIIFFJLjt;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqr$d;->a:Lgs;

    iput p2, p0, Lqr$d;->b:I

    iput p3, p0, Lqr$d;->c:I

    iput p4, p0, Lqr$d;->d:I

    iput p5, p0, Lqr$d;->e:F

    iput p6, p0, Lqr$d;->f:F

    iput-wide p7, p0, Lqr$d;->g:J

    iput-object p9, p0, Lqr$d;->h:Ljt;

    sget-object p1, Lwr;->a:Lwr;

    iput-object p1, p0, Lqr$d;->i:Lwr;

    return-void
.end method


# virtual methods
.method public final a([Lyr$a;Lgs;)[Lyr;
    .locals 11

    iget-object v0, p0, Lqr$d;->a:Lgs;

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lyr;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v3, v5, :cond_4

    aget-object v5, p1, v3

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, v5, Lyr$a;->b:[I

    array-length v8, v7

    if-le v8, v6, :cond_2

    iget-object v5, v5, Lyr$a;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-virtual {p0, v5, p2, v7}, Lqr$d;->b(Landroidx/media2/exoplayer/external/source/TrackGroup;Lgs;[I)Lqr;

    move-result-object v5

    iget-object v6, p0, Lqr$d;->i:Lwr;

    invoke-virtual {v5, v6}, Lqr;->k(Lwr;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput-object v5, v0, v3

    goto :goto_1

    :cond_2
    new-instance v6, Lsr;

    iget-object v8, v5, Lyr$a;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget v7, v7, v2

    iget v9, v5, Lyr$a;->c:I

    iget-object v10, v5, Lyr$a;->d:Ljava/lang/Object;

    invoke-direct {v6, v8, v7, v9, v10}, Lsr;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;IILjava/lang/Object;)V

    aput-object v6, v0, v3

    iget-object v6, v5, Lyr$a;->a:Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v5, v5, Lyr$a;->b:[I

    aget v5, v5, v2

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/source/TrackGroup;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    iget v5, v5, Landroidx/media2/exoplayer/external/Format;->f:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    add-int/2addr v4, v5

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lqr$d;->j:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lqr;

    int-to-long v7, v4

    invoke-virtual {p2, v7, v8}, Lqr;->j(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v6, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [[J

    const/4 p2, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_7

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lqr;

    invoke-virtual {v3}, Lrr;->length()I

    move-result v4

    new-array v4, v4, [J

    aput-object v4, p1, p2

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v3}, Lrr;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    aget-object v5, p1, p2

    invoke-virtual {v3}, Lrr;->length()I

    move-result v7

    sub-int/2addr v7, v4

    sub-int/2addr v7, v6

    invoke-virtual {v3, v7}, Lrr;->getFormat(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    iget v7, v7, Landroidx/media2/exoplayer/external/Format;->f:I

    int-to-long v7, v7

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    invoke-static {p1}, Lqr;->e([[J)[[[J

    move-result-object p1

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_8

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lqr;

    aget-object v3, p1, v2

    invoke-virtual {p2, v3}, Lqr;->i([[J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    return-object v0
.end method

.method public b(Landroidx/media2/exoplayer/external/source/TrackGroup;Lgs;[I)Lqr;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lqr;

    new-instance v4, Lqr$c;

    iget v1, v0, Lqr$d;->e:F

    move-object/from16 v2, p2

    invoke-direct {v4, v2, v1}, Lqr$c;-><init>(Lgs;F)V

    iget v1, v0, Lqr$d;->b:I

    int-to-long v5, v1

    iget v1, v0, Lqr$d;->c:I

    int-to-long v7, v1

    iget v1, v0, Lqr$d;->d:I

    int-to-long v9, v1

    iget v11, v0, Lqr$d;->f:F

    iget-wide v12, v0, Lqr$d;->g:J

    iget-object v14, v0, Lqr$d;->h:Ljt;

    const/4 v15, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v15}, Lqr;-><init>(Landroidx/media2/exoplayer/external/source/TrackGroup;[ILqr$b;JJJFJLjt;Lqr$a;)V

    return-object v16
.end method
