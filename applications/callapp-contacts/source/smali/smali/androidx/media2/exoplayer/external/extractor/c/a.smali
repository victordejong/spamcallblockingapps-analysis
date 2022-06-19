.class final Landroidx/media2/exoplayer/external/extractor/c/a;
.super Landroidx/media2/exoplayer/external/extractor/c;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/c/c$a;


# direct methods
.method public constructor <init>(JJLandroidx/media2/exoplayer/external/extractor/m;)V
    .locals 7

    .line 41
    iget v5, p5, Landroidx/media2/exoplayer/external/extractor/m;->f:I

    iget v6, p5, Landroidx/media2/exoplayer/external/extractor/m;->c:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/c;-><init>(JJII)V

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final c(J)J
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/c/a;->b(J)J

    move-result-wide p1

    return-wide p1
.end method
