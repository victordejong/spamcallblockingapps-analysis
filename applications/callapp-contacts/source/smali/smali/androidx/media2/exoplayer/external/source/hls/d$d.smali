.class final Landroidx/media2/exoplayer/external/source/hls/d$d;
.super Landroidx/media2/exoplayer/external/source/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

.field private final c:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/playlist/f;JI)V
    .locals 4

    int-to-long v0, p4

    .line 634
    iget-object p4, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/f;->l:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    int-to-long v2, p4

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/source/a/a;-><init>(JJ)V

    .line 635
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/d$d;->b:Landroidx/media2/exoplayer/external/source/hls/playlist/f;

    .line 636
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/source/hls/d$d;->c:J

    return-void
.end method
