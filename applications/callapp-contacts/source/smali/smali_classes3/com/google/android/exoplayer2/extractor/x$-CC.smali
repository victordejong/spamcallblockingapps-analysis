.class public final synthetic Lcom/google/android/exoplayer2/extractor/x$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$b(Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/upstream/e;IZ)I
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/extractor/x;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/upstream/e;IZ)I

    move-result p1

    return p1
.end method

.method public static $default$b(Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/util/u;I)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/extractor/x;

    .line 169
    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/util/u;I)V

    return-void
.end method
