.class final synthetic Lcom/google/android/gms/internal/ads/zzcgu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzv;


# instance fields
.field private final zzgjh:Lcom/google/android/gms/internal/ads/zzbsm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbsm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgjh:Lcom/google/android/gms/internal/ads/zzbsm;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzbsm;)Lcom/google/android/gms/ads/internal/overlay/zzv;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcgu;-><init>(Lcom/google/android/gms/internal/ads/zzbsm;)V

    return-object v0
.end method


# virtual methods
.method public final zzwg()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzgjh:Lcom/google/android/gms/internal/ads/zzbsm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsm;->onAdLeftApplication()V

    return-void
.end method
