.class final Lcom/google/android/gms/internal/ads/fu3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bu3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/la;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yt3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fu3;->a:Lcom/google/android/gms/internal/ads/la;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/ads/fu3;->c:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/fu3;->b:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final c()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fu3;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fu3;->a:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fu3;->a:Lcom/google/android/gms/internal/ads/la;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->w()I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fu3;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/fu3;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fu3;->a:Lcom/google/android/gms/internal/ads/la;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->v()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/fu3;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/fu3;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/fu3;->b:I

    return v0
.end method
