.class final Lcom/google/android/gms/internal/ads/zzip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajh:Lcom/google/android/gms/internal/ads/zzik;

.field private final synthetic zzajm:Lcom/google/android/gms/internal/ads/zzht;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzik;Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzajh:Lcom/google/android/gms/internal/ads/zzik;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzip;->zzajm:Lcom/google/android/gms/internal/ads/zzht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzajh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzik;->zza(Lcom/google/android/gms/internal/ads/zzik;)Lcom/google/android/gms/internal/ads/zzil;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzajm:Lcom/google/android/gms/internal/ads/zzht;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzil;->zzc(Lcom/google/android/gms/internal/ads/zzht;)V

    return-void
.end method
