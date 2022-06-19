.class public final Landroidx/media2/exoplayer/external/extractor/e/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/z;


# instance fields
.field private a:Landroidx/media2/exoplayer/external/util/z;

.field private b:Landroidx/media2/exoplayer/external/extractor/q;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 10

    .line 53
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ac;->c:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ac;->a:Landroidx/media2/exoplayer/external/util/z;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/z;->a()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ac;->b:Landroidx/media2/exoplayer/external/extractor/q;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/ac;->a:Landroidx/media2/exoplayer/external/util/z;

    .line 59
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/z;->a()J

    move-result-wide v4

    const-string v6, "application/x-scte35"

    .line 58
    invoke-static {v3, v6, v4, v5}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    invoke-interface {v0, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ac;->c:Z

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v7

    .line 63
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ac;->b:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v0, p1, v7}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 64
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/e/ac;->b:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/ac;->a:Landroidx/media2/exoplayer/external/util/z;

    .line 1082
    iget-wide v4, p1, Landroidx/media2/exoplayer/external/util/z;->c:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_3

    .line 1083
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/util/z;->c:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/util/z;->b:J

    add-long v1, v0, v4

    :cond_2
    :goto_0
    move-wide v4, v1

    goto :goto_1

    .line 1084
    :cond_3
    iget-wide v4, p1, Landroidx/media2/exoplayer/external/util/z;->a:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v4, v8

    if-eqz v0, :cond_2

    iget-wide v1, p1, Landroidx/media2/exoplayer/external/util/z;->a:J

    goto :goto_0

    :goto_1
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 64
    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 2

    .line 44
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/ac;->a:Landroidx/media2/exoplayer/external/util/z;

    .line 45
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 46
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result p1

    const/4 v0, 0x4

    invoke-interface {p2, p1, v0}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/ac;->b:Landroidx/media2/exoplayer/external/extractor/q;

    .line 47
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/x-scte35"

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p2, p3, v0, v1, v0}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
