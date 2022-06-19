.class final Lcom/google/android/gms/internal/ads/dov;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:I

.field public final b:[J

.field public final c:[I

.field public final d:I

.field public final e:[J

.field public final f:[I


# direct methods
.method public constructor <init>([J[II[J[I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    array-length v3, p4

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 3
    array-length v0, p1

    array-length v3, p4

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 4
    array-length v0, p5

    array-length v3, p4

    if-ne v0, v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dov;->b:[J

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dov;->c:[I

    .line 7
    iput p3, p0, Lcom/google/android/gms/internal/ads/dov;->d:I

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dov;->e:[J

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/dov;->f:[I

    .line 10
    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dov;->a:I

    .line 11
    return-void

    :cond_0
    move v0, v2

    .line 2
    goto :goto_0

    :cond_1
    move v0, v2

    .line 3
    goto :goto_1

    :cond_2
    move v1, v2

    .line 4
    goto :goto_2
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dov;->e:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/dsn;->a([JJZZ)I

    move-result v0

    .line 13
    :goto_0
    if-ltz v0, :cond_1

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dov;->f:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 17
    :goto_1
    return v0

    .line 16
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final b(J)I
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dov;->e:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/dsn;->b([JJZZ)I

    move-result v0

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dov;->e:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dov;->f:[I

    aget v1, v1, v0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 23
    :goto_1
    return v0

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
