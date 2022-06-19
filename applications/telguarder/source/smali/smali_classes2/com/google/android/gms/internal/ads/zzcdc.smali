.class final synthetic Lcom/google/android/gms/internal/ads/zzcdc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgdv:Lcom/google/android/gms/internal/ads/zzcdx;

.field private final zzgfx:Lcom/google/android/gms/internal/ads/zzccz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzccz;Lcom/google/android/gms/internal/ads/zzcdx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdc;->zzgfx:Lcom/google/android/gms/internal/ads/zzccz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdc;->zzgdv:Lcom/google/android/gms/internal/ads/zzcdx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdc;->zzgfx:Lcom/google/android/gms/internal/ads/zzccz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdc;->zzgdv:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccz;->zzi(Lcom/google/android/gms/internal/ads/zzcdx;)V

    return-void
.end method
