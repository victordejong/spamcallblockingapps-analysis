.class final Lcom/google/android/gms/internal/ads/czg;
.super Lcom/google/android/gms/internal/ads/czj;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/czj;-><init>([BI)V

    .line 2
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0xc

    return v0
.end method

.method final a([II)[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ChaCha20 uses 96-bit nonces, but got a %d-bit nonce"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p1

    shl-int/lit8 v3, v3, 0x5

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/czg;->a:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/czj;->a([I[I)V

    .line 8
    const/16 v1, 0xc

    aput p2, v0, v1

    .line 9
    const/16 v1, 0xd

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    return-object v0
.end method
