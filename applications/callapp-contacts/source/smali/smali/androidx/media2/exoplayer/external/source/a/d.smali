.class public abstract Landroidx/media2/exoplayer/external/source/a/d;
.super Landroidx/media2/exoplayer/external/source/a/b;
.source "SourceFile"


# instance fields
.field public final i:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V
    .locals 11

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    .line 58
    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/source/a/b;-><init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 60
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v1, p10

    .line 61
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/a/d;->i:J

    return-void
.end method


# virtual methods
.method public final f()J
    .locals 5

    .line 66
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/a/d;->i:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v2
.end method
