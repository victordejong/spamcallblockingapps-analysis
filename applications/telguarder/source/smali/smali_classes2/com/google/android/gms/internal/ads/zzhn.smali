.class final Lcom/google/android/gms/internal/ads/zzhn;
.super Landroid/os/Handler;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final synthetic zzagh:Lcom/google/android/gms/internal/ads/zzhk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhk;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhn;->zzagh:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhn;->zzagh:Lcom/google/android/gms/internal/ads/zzhk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhk;->zza(Landroid/os/Message;)V

    return-void
.end method
