.class public final Lcom/google/android/gms/internal/ads/daf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:[B


# direct methods
.method private constructor <init>([BII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/daf;->a:[B

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/daf;->a:[B

    invoke-static {p1, v1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    return-void
.end method

.method public static a([B)Lcom/google/android/gms/internal/ads/daf;
    .locals 3

    .prologue
    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 v0, 0x0

    .line 5
    :goto_0
    return-object v0

    .line 3
    :cond_0
    array-length v1, p0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/daf;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/internal/ads/daf;-><init>([BII)V

    goto :goto_0
.end method


# virtual methods
.method public final a()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/daf;->a:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/daf;->a:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/daf;->a:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    return-object v0
.end method
