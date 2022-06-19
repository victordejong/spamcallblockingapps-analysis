.class final Lcom/google/android/gms/internal/ads/cze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method static a([B)[B
    .locals 7

    .prologue
    const/16 v6, 0xf

    const/4 v1, 0x0

    const/16 v5, 0x10

    .line 1
    array-length v0, p0

    if-eq v0, v5, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value must be a block."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    new-array v2, v5, [B

    move v0, v1

    .line 4
    :goto_0
    if-ge v0, v5, :cond_2

    .line 5
    aget-byte v3, p0, v0

    shl-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xfe

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 6
    if-ge v0, v6, :cond_1

    .line 7
    aget-byte v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    shr-int/lit8 v4, v4, 0x7

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 8
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    aget-byte v0, v2, v6

    aget-byte v1, p0, v1

    shr-int/lit8 v1, v1, 0x7

    and-int/lit16 v1, v1, 0x87

    int-to-byte v1, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v6

    .line 10
    return-object v2
.end method
