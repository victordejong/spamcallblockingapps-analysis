.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/f;
.super Landroidx/media2/exoplayer/external/source/hls/playlist/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:I

.field public final f:J

.field public final g:I

.field public final h:J

.field public final i:Z

.field public final j:Z

.field public final k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;",
            ">;"
        }
    .end annotation
.end field

.field public final m:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJZIJIJZZZ",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p15

    .line 275
    invoke-direct {p0, p2, p3, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/g;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move v1, p1

    .line 276
    iput v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->a:I

    move-wide v1, p6

    .line 277
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->c:J

    move/from16 v1, p8

    .line 278
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->d:Z

    move/from16 v1, p9

    .line 279
    iput v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->e:I

    move-wide/from16 v1, p10

    .line 280
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->f:J

    move/from16 v1, p12

    .line 281
    iput v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->g:I

    move-wide/from16 v1, p13

    .line 282
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->h:J

    move/from16 v1, p16

    .line 283
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->i:Z

    move/from16 v1, p17

    .line 284
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->j:Z

    move-object/from16 v1, p18

    .line 285
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->k:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 286
    invoke-static/range {p19 .. p19}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    .line 287
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 288
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v4, p19

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    .line 289
    iget-wide v4, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->f:J

    iget-wide v6, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->c:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->m:J

    goto :goto_0

    .line 291
    :cond_0
    iput-wide v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->m:J

    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p4, v4

    if-nez v1, :cond_1

    move-wide v1, v4

    goto :goto_1

    :cond_1
    cmp-long v1, p4, v2

    if-ltz v1, :cond_2

    move-wide v1, p4

    goto :goto_1

    .line 294
    :cond_2
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->m:J

    add-long/2addr v1, p4

    :goto_1
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 326
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->c:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->m:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final bridge synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method
