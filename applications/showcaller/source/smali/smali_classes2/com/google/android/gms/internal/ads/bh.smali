.class public Lcom/google/android/gms/internal/ads/bh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/xg;

.field protected final b:[I

.field private final c:[Lcom/google/android/gms/internal/ads/zzanm;

.field private d:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/xg;[I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bh;->a:Lcom/google/android/gms/internal/ads/xg;

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzanm;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bh;->c:[Lcom/google/android/gms/internal/ads/zzanm;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gtz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bh;->c:[Lcom/google/android/gms/internal/ads/zzanm;

    aget v4, p2, v2

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/xg;->a(I)Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bh;->c:[Lcom/google/android/gms/internal/ads/zzanm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zg;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zg;-><init>(Lcom/google/android/gms/internal/ads/ah;)V

    .line 4
    invoke-static {p2, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-array p2, v0, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bh;->b:[I

    :goto_1
    if-gtz v1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bh;->b:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bh;->c:[Lcom/google/android/gms/internal/ads/zzanm;

    .line 5
    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/xg;->b(Lcom/google/android/gms/internal/ads/zzanm;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/xg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bh;->a:Lcom/google/android/gms/internal/ads/xg;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bh;->b:[I

    array-length v0, v0

    const/4 v0, 0x1

    return v0
.end method

.method public final c(I)Lcom/google/android/gms/internal/ads/zzanm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bh;->c:[Lcom/google/android/gms/internal/ads/zzanm;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final d(I)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bh;->b:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/bh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bh;->a:Lcom/google/android/gms/internal/ads/xg;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/bh;->a:Lcom/google/android/gms/internal/ads/xg;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bh;->b:[I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bh;->b:[I

    .line 2
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/bh;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bh;->a:Lcom/google/android/gms/internal/ads/xg;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bh;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/bh;->d:I

    :cond_0
    return v0
.end method
