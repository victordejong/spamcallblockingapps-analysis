.class final Lcom/google/android/gms/internal/ads/dlz;
.super Lcom/google/android/gms/internal/ads/dmh;
.source "SourceFile"


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dmh;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/dlz;->c(III)I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/dlz;->c:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/dlz;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dlz;->b(II)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlz;->b:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlz;->c:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method final b(I)B
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlz;->b:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dlz;->c:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final b()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlz;->d:I

    return v0
.end method

.method protected final b([BIII)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dlz;->b:[B

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dmh;->l()I

    move-result v1

    add-int/2addr v1, p2

    .line 13
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected final l()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/dlz;->c:I

    return v0
.end method
