.class public Lcom/google/android/gms/internal/ads/ebj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ebu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ebg;

.field private final b:I

.field private final c:[I

.field private final d:[Lcom/google/android/gms/internal/ads/zzht;

.field private final e:[J

.field private f:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/ebg;[I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ecr;->b(Z)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ecr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ebg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebj;->a:Lcom/google/android/gms/internal/ads/ebg;

    .line 4
    array-length v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/ads/ebj;->b:I

    .line 5
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzht;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ebj;->d:[Lcom/google/android/gms/internal/ads/zzht;

    const/4 v0, 0x0

    .line 6
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ebj;->d:[Lcom/google/android/gms/internal/ads/zzht;

    aget v3, p2, v0

    .line 1006
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/ebg;->b:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v3, v4, v3

    .line 7
    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ebj;->d:[Lcom/google/android/gms/internal/ads/zzht;

    new-instance v0, Lcom/google/android/gms/internal/ads/ebl;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/ebl;-><init>(Lcom/google/android/gms/internal/ads/ebm;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 10
    iget p2, p0, Lcom/google/android/gms/internal/ads/ebj;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ebj;->c:[I

    .line 11
    :goto_2
    iget p2, p0, Lcom/google/android/gms/internal/ads/ebj;->b:I

    if-ge v1, p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ebj;->c:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebj;->d:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ebg;->a(Lcom/google/android/gms/internal/ads/zzht;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 14
    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ebj;->e:[J

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ebg;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebj;->a:Lcom/google/android/gms/internal/ads/ebg;

    return-object v0
.end method

.method public final a(I)Lcom/google/android/gms/internal/ads/zzht;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebj;->d:[Lcom/google/android/gms/internal/ads/zzht;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b()I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebj;->c:[I

    array-length v0, v0

    return v0
.end method

.method public final c()I
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebj;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/ebj;

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ebj;->a:Lcom/google/android/gms/internal/ads/ebg;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/ebj;->a:Lcom/google/android/gms/internal/ads/ebg;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ebj;->c:[I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ebj;->c:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/ebj;->f:I

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ebj;->a:Lcom/google/android/gms/internal/ads/ebg;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ebj;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/ebj;->f:I

    .line 22
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/ebj;->f:I

    return v0
.end method
