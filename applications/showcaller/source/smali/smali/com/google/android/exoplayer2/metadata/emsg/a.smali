.class public final Lcom/google/android/exoplayer2/metadata/emsg/a;
.super Ljava/lang/Object;
.source "EventMessageDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/metadata/d;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/b1/e;->e:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v3, Lcom/google/android/exoplayer2/util/v;

    invoke-direct {v3, v0, p1}, Lcom/google/android/exoplayer2/util/v;-><init>([BI)V

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/metadata/emsg/a;->b(Lcom/google/android/exoplayer2/util/v;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v2, v0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v1
.end method

.method public b(Lcom/google/android/exoplayer2/util/v;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v4

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->B()J

    move-result-wide v6

    .line 5
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/v;->a:[B

    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->c()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/v;->d()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object p1
.end method
