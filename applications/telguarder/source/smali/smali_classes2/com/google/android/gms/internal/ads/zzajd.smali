.class final Lcom/google/android/gms/internal/ads/zzajd;
.super Lcom/google/android/gms/internal/ads/zzaiw;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final synthetic zzbwb:Lcom/google/android/gms/internal/ads/zzbaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaja;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzbwb:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaiw;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzbwb:Lcom/google/android/gms/internal/ads/zzbaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbaa;->set(Ljava/lang/Object;)Z

    return-void
.end method
