.class public Lcom/google/android/gms/internal/ads/dqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dre;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dqs;

.field private final b:I

.field private final c:[I

.field private final d:[Lcom/google/android/gms/internal/ads/dlf;

.field private final e:[J

.field private f:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/dqs;[I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/drz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqx;->a:Lcom/google/android/gms/internal/ads/dqs;

    .line 4
    array-length v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqx;->b:I

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqx;->b:I

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dlf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqx;->d:[Lcom/google/android/gms/internal/ads/dlf;

    move v0, v1

    .line 6
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqx;->d:[Lcom/google/android/gms/internal/ads/dlf;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/dqs;->a(I)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v3

    aput-object v3, v2, v0

    .line 8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 2
    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqx;->d:[Lcom/google/android/gms/internal/ads/dlf;

    new-instance v2, Lcom/google/android/gms/internal/ads/dqz;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/dqz;-><init>(Lcom/google/android/gms/internal/ads/dqw;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqx;->b:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqx;->c:[I

    .line 11
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqx;->b:I

    if-ge v1, v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqx;->c:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqx;->d:[Lcom/google/android/gms/internal/ads/dlf;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/dqs;->a(Lcom/google/android/gms/internal/ads/dlf;)I

    move-result v2

    aput v2, v0, v1

    .line 13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqx;->b:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqx;->e:[J

    .line 15
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/dlf;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqx;->d:[Lcom/google/android/gms/internal/ads/dlf;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/dqs;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqx;->a:Lcom/google/android/gms/internal/ads/dqs;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqx;->c:[I

    array-length v0, v0

    return v0
.end method

.method public final b(I)I
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqx;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    if-ne p0, p1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v0

    .line 25
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/ads/dqx;

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqx;->a:Lcom/google/android/gms/internal/ads/dqs;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dqx;->a:Lcom/google/android/gms/internal/ads/dqs;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqx;->c:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dqx;->c:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqx;->f:I

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqx;->a:Lcom/google/android/gms/internal/ads/dqs;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqx;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqx;->f:I

    .line 22
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqx;->f:I

    return v0
.end method
