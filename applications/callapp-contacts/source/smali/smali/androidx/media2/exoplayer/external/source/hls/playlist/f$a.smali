.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/playlist/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:J

.field public final g:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:J

.field public final k:J

.field public final l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const/16 v16, 0x0

    .line 107
    invoke-direct/range {v0 .. v16}, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;Ljava/lang/String;JIJLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;Ljava/lang/String;JIJLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 3

    move-object v0, p0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 149
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->a:Ljava/lang/String;

    move-object v1, p2

    .line 150
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;

    move-object v1, p3

    .line 151
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->d:Ljava/lang/String;

    move-wide v1, p4

    .line 152
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->c:J

    move v1, p6

    .line 153
    iput v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->e:I

    move-wide v1, p7

    .line 154
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->f:J

    move-object v1, p9

    .line 155
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->g:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object v1, p10

    .line 156
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->h:Ljava/lang/String;

    move-object v1, p11

    .line 157
    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->i:Ljava/lang/String;

    move-wide v1, p12

    .line 158
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->j:J

    move-wide/from16 v1, p14

    .line 159
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->k:J

    move/from16 v1, p16

    .line 160
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->l:Z

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 41
    check-cast p1, Ljava/lang/Long;

    .line 1165
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->f:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1166
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/f$a;->f:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
