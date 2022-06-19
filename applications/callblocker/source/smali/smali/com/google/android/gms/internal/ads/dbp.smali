.class final Lcom/google/android/gms/internal/ads/dbp;
.super Lcom/google/android/gms/internal/ads/dbt;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>([BII)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dbt;-><init>([B)V

    .line 2
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/dbp;->c(III)I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/dbp;->c:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/dbp;->d:I

    .line 5
    return-void
.end method


# virtual methods
.method public final a(I)B
    .locals 2

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dbp;->b(II)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbp;->b:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbp;->c:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method final b(I)B
    .locals 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbp;->b:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbp;->c:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbp;->d:I

    return v0
.end method

.method protected final b([BIII)V
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbp;->b:[B

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dbt;->l()I

    move-result v1

    add-int/2addr v1, p2

    .line 13
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    return-void
.end method

.method protected final l()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbp;->c:I

    return v0
.end method
