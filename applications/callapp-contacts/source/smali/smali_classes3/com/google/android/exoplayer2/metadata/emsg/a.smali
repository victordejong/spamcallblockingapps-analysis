.class public final Lcom/google/android/exoplayer2/metadata/emsg/a;
.super Lcom/google/android/exoplayer2/metadata/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/metadata/c;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 10

    .line 32
    new-instance p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v1, Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-direct {v1, v2, p2}, Lcom/google/android/exoplayer2/util/u;-><init>([BI)V

    .line 1036
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->r()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    .line 1037
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->r()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    .line 1038
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v5

    .line 1039
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v7

    .line 1169
    iget-object p2, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 2144
    iget v2, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 3127
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 1041
    invoke-static {p2, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 1042
    new-instance p2, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object v2, p2

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 32
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object p1
.end method
