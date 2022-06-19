.class public final synthetic Lcom/google/android/exoplayer2/upstream/cache/f$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/google/android/exoplayer2/upstream/j;)Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/j;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/j;->i:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$14R7BUjw47t1VRjyt7JB6CD12wE(Lcom/google/android/exoplayer2/upstream/j;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/cache/f$-CC;->a(Lcom/google/android/exoplayer2/upstream/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
