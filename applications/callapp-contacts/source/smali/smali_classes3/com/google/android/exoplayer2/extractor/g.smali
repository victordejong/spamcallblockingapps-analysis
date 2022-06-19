.class public final Lcom/google/android/exoplayer2/extractor/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/x;


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 37
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/g;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/upstream/e;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g;->a:[B

    array-length v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/g;->a:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/upstream/e;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 55
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return p1
.end method

.method public final a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;I)V
    .locals 0

    .line 62
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/upstream/e;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/x$-CC;->$default$b(Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/upstream/e;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/util/u;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/x$-CC;->$default$b(Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/util/u;I)V

    return-void
.end method
