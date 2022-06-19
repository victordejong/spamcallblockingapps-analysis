.class final Lcom/google/android/gms/internal/ads/zzagi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzags;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzagy;

.field private final zzc:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzags;Lcom/google/android/gms/internal/ads/zzagy;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagi;->zza:Lcom/google/android/gms/internal/ads/zzags;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzb:Lcom/google/android/gms/internal/ads/zzagy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzc:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zza:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzags;->zzw()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzb:Lcom/google/android/gms/internal/ads/zzagy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzagy;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zza:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzb:Lcom/google/android/gms/internal/ads/zzagy;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagy;->zza:Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzags;->zzo(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zza:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzb:Lcom/google/android/gms/internal/ads/zzagy;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzagy;->zzc:Lcom/google/android/gms/internal/ads/zzahb;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzags;->zzn(Lcom/google/android/gms/internal/ads/zzahb;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzb:Lcom/google/android/gms/internal/ads/zzagy;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzagy;->zzd:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zza:Lcom/google/android/gms/internal/ads/zzags;

    const-string v1, "intermediate-response"

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzags;->zzm(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zza:Lcom/google/android/gms/internal/ads/zzags;

    const-string v1, "done"

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzags;->zzp(Ljava/lang/String;)V

    .line 9
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagi;->zzc:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
