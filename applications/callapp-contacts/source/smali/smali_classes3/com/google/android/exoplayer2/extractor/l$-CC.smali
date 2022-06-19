.class public final synthetic Lcom/google/android/exoplayer2/extractor/l$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$a(Lcom/google/android/exoplayer2/extractor/l;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/h;
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplayer2/extractor/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplayer2/extractor/h;"
        }
    .end annotation

    .line 43
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/l;->createExtractors()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    return-object v0
.end method

.method public static synthetic lambda$gZXgqFp7dtL1d4I4vh_4LHaJW3M()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/l$-CC;->a()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method
