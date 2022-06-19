.class public final Lcom/google/android/gms/internal/ads/dqs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:I

.field private final b:[Lcom/google/android/gms/internal/ads/dlf;

.field private c:I


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/dlf;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dqs;->b:[Lcom/google/android/gms/internal/ads/dlf;

    .line 4
    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dqs;->a:I

    .line 5
    return-void

    .line 2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dlf;)I
    .locals 2

    .prologue
    .line 7
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqs;->b:[Lcom/google/android/gms/internal/ads/dlf;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqs;->b:[Lcom/google/android/gms/internal/ads/dlf;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 11
    :goto_1
    return v0

    .line 10
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final a(I)Lcom/google/android/gms/internal/ads/dlf;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqs;->b:[Lcom/google/android/gms/internal/ads/dlf;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 17
    if-ne p0, p1, :cond_1

    .line 22
    :cond_0
    :goto_0
    return v0

    .line 19
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/ads/dqs;

    .line 22
    iget v2, p0, Lcom/google/android/gms/internal/ads/dqs;->a:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/dqs;->a:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqs;->b:[Lcom/google/android/gms/internal/ads/dlf;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dqs;->b:[Lcom/google/android/gms/internal/ads/dlf;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqs;->c:I

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqs;->b:[Lcom/google/android/gms/internal/ads/dlf;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/dqs;->c:I

    .line 16
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dqs;->c:I

    return v0
.end method
