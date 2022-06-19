.class final Lcom/google/android/gms/internal/ads/eu3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bu3;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/ads/la;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/yt3;Lcom/google/android/gms/internal/ads/u4;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/yt3;->b:Lcom/google/android/gms/internal/ads/la;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eu3;->c:Lcom/google/android/gms/internal/ads/la;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/la;->p(I)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v0

    .line 3
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/u4;->n:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget v1, p2, Lcom/google/android/gms/internal/ads/u4;->C:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/u4;->A:I

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/wa;->s(II)I

    move-result p2

    if-eqz v0, :cond_0

    .line 5
    rem-int v1, v0, p2

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x58

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomParsers"

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p2

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    :cond_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/eu3;->a:I

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/eu3;->b:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/eu3;->a:I

    return v0
.end method

.method public final c()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/eu3;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eu3;->c:Lcom/google/android/gms/internal/ads/la;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/la;->b()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/eu3;->b:I

    return v0
.end method
