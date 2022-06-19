.class final Lcom/google/android/exoplayer2/source/hls/g$c;
.super Lcom/google/android/exoplayer2/source/e0/a;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final e:Lcom/google/android/exoplayer2/source/hls/playlist/f;

.field private final f:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/f;JI)V
    .locals 4

    int-to-long v0, p4

    .line 1
    iget-object p4, p1, Lcom/google/android/exoplayer2/source/hls/playlist/f;->o:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    int-to-long v2, p4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/e0/a;-><init>(JJ)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/g$c;->e:Lcom/google/android/exoplayer2/source/hls/playlist/f;

    .line 3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/hls/g$c;->f:J

    return-void
.end method
