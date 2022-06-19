.class public final Lcom/google/android/gms/internal/ads/ck1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/d30;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/g41;

.field private final e:Lcom/google/android/gms/internal/ads/zzccl;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/g41;Lcom/google/android/gms/internal/ads/ej2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ck1;->d:Lcom/google/android/gms/internal/ads/g41;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ej2;->m:Lcom/google/android/gms/internal/ads/zzccl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ck1;->e:Lcom/google/android/gms/internal/ads/zzccl;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ej2;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ck1;->f:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/ej2;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ck1;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ck1;->d:Lcom/google/android/gms/internal/ads/g41;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g41;->d()V

    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/ads/zzccl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ck1;->e:Lcom/google/android/gms/internal/ads/zzccl;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzccl;->d:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzccl;->e:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    const-string v0, ""

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/kd0;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/kd0;-><init>(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ck1;->d:Lcom/google/android/gms/internal/ads/g41;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ck1;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ck1;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/g41;->S0(Lcom/google/android/gms/internal/ads/nd0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ck1;->d:Lcom/google/android/gms/internal/ads/g41;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g41;->e()V

    return-void
.end method
