.class public final synthetic Lcom/google/android/gms/internal/ads/zzdsz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zzefe:I

.field private final zzhsn:Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzhsn:Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzefe:I

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzhsn:Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdsz;->zzefe:I

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdsy;->zza(Lcom/google/android/gms/internal/ads/zzbw$zza$zzb;ILcom/google/android/gms/tasks/Task;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
