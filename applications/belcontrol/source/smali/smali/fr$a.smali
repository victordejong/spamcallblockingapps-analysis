.class public final Lfr$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr;
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

.field public final b:Lfr$a;

.field public final c:J

.field public final d:I

.field public final f:J

.field public final g:Landroidx/media2/exoplayer/external/drm/DrmInitData;

.field public final h:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:J

.field public final l:J

.field public final m:Z


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

    invoke-direct/range {v0 .. v16}, Lfr$a;-><init>(Ljava/lang/String;Lfr$a;Ljava/lang/String;JIJLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfr$a;Ljava/lang/String;JIJLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lfr$a;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lfr$a;->b:Lfr$a;

    move-wide v1, p4

    iput-wide v1, v0, Lfr$a;->c:J

    move v1, p6

    iput v1, v0, Lfr$a;->d:I

    move-wide v1, p7

    iput-wide v1, v0, Lfr$a;->f:J

    move-object v1, p9

    iput-object v1, v0, Lfr$a;->g:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object v1, p10

    iput-object v1, v0, Lfr$a;->h:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lfr$a;->j:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Lfr$a;->k:J

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lfr$a;->l:J

    move/from16 v1, p16

    iput-boolean v1, v0, Lfr$a;->m:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)I
    .locals 5

    iget-wide v0, p0, Lfr$a;->f:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lfr$a;->f:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lfr$a;->a(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method
