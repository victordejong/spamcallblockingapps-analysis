.class public final Lcom/google/android/gms/internal/ads/drg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:I

.field private final b:[Lcom/google/android/gms/internal/ads/dre;

.field private c:I


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/dre;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drg;->b:[Lcom/google/android/gms/internal/ads/dre;

    .line 3
    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/drg;->a:I

    .line 4
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/dre;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drg;->b:[Lcom/google/android/gms/internal/ads/dre;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a()[Lcom/google/android/gms/internal/ads/dre;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drg;->b:[Lcom/google/android/gms/internal/ads/dre;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/dre;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dre;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 12
    if-ne p0, p1, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 17
    :goto_0
    return v0

    .line 14
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 15
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 16
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/drg;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drg;->b:[Lcom/google/android/gms/internal/ads/dre;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/drg;->b:[Lcom/google/android/gms/internal/ads/dre;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/drg;->c:I

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drg;->b:[Lcom/google/android/gms/internal/ads/dre;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/ads/drg;->c:I

    .line 11
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/drg;->c:I

    return v0
.end method
