.class public final Lcom/google/android/exoplayer2/metadata/scte35/a;
.super Lcom/google/android/exoplayer2/metadata/f;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private final b:Lcom/google/android/exoplayer2/util/t;

.field private c:Lcom/google/android/exoplayer2/util/ad;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/f;-><init>()V

    .line 43
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/util/t;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/t;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/metadata/c;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 6

    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->c:Lcom/google/android/exoplayer2/util/ad;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/google/android/exoplayer2/metadata/c;->g:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->c:Lcom/google/android/exoplayer2/util/ad;

    .line 52
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ad;->c()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 53
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/ad;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/metadata/c;->e:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ad;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->c:Lcom/google/android/exoplayer2/util/ad;

    .line 54
    iget-wide v1, p1, Lcom/google/android/exoplayer2/metadata/c;->e:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/metadata/c;->g:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ad;->c(J)J

    .line 57
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 58
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    .line 59
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/t;->a([BI)V

    .line 63
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 64
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/t;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    .line 65
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    int-to-long v2, p1

    or-long/2addr v0, v2

    .line 67
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v2, 0x14

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 68
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    .line 69
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->b:Lcom/google/android/exoplayer2/util/t;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v2

    const/4 v3, 0x0

    .line 72
    iget-object v4, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/u;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    if-eqz v2, :cond_6

    const/16 v4, 0xff

    if-eq v2, v4, :cond_5

    const/4 p1, 0x4

    if-eq v2, p1, :cond_4

    const/4 p1, 0x5

    if-eq v2, p1, :cond_3

    const/4 p1, 0x6

    if-eq v2, p1, :cond_2

    goto :goto_0

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/u;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->c:Lcom/google/android/exoplayer2/util/ad;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;->parseFromSection(Lcom/google/android/exoplayer2/util/u;JLcom/google/android/exoplayer2/util/ad;)Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object v3

    goto :goto_0

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/u;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->c:Lcom/google/android/exoplayer2/util/ad;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;->parseFromSection(Lcom/google/android/exoplayer2/util/u;JLcom/google/android/exoplayer2/util/ad;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object v3

    goto :goto_0

    .line 78
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-static {p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;->parseFromSection(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object v3

    goto :goto_0

    .line 88
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/scte35/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-static {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;->parseFromSection(Lcom/google/android/exoplayer2/util/u;IJ)Lcom/google/android/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object v3

    goto :goto_0

    .line 75
    :cond_6
    new-instance v3, Lcom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    :goto_0
    const/4 p1, 0x0

    if-nez v3, :cond_7

    .line 94
    new-instance p2, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array p1, p1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object p2

    :cond_7
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array p2, p2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v3, p2, p1

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v0
.end method
