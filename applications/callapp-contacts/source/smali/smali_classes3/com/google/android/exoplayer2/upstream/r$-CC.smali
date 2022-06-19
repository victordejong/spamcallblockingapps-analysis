.class public final synthetic Lcom/google/android/exoplayer2/upstream/r$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$a(Lcom/google/android/exoplayer2/upstream/r;)J
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/upstream/r;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static $default$a(Lcom/google/android/exoplayer2/upstream/r;Lcom/google/android/exoplayer2/upstream/r$a;)J
    .locals 2
    .param p0, "_this"    # Lcom/google/android/exoplayer2/upstream/r;

    .line 111
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/r;->a()J

    move-result-wide v0

    return-wide v0
.end method
