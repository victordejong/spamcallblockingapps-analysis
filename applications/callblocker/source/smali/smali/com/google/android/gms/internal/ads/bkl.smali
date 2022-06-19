.class public final Lcom/google/android/gms/internal/ads/bkl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a([BZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    if-eqz p1, :cond_0

    const/16 v0, 0xb

    .line 2
    :goto_0
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)[B
    .locals 4

    .prologue
    .line 3
    if-eqz p1, :cond_0

    const/16 v0, 0xb

    .line 4
    :goto_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 5
    array-length v1, v0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unable to decode "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    return-object v0
.end method
