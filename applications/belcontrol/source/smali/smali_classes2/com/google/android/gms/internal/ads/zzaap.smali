.class public final Lcom/google/android/gms/internal/ads/zzaap;
.super Lcom/google/android/gms/internal/ads/zzyv;
.source ""


# instance fields
.field private final zzcls:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->zzcls:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzvu;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->zzcls:Lcom/google/android/gms/ads/OnPaidEventListener;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzvu;->zzadc:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzvu;->zzadd:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzvu;->zzade:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdValue;->zza(ILjava/lang/String;J)Lcom/google/android/gms/ads/AdValue;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->zzcls:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/OnPaidEventListener;->onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V

    :cond_0
    return-void
.end method
