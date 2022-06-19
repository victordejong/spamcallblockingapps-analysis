.class final synthetic Lcom/google/android/gms/internal/ads/zzcmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgnp:Lcom/google/android/gms/internal/ads/zzcme;

.field private final zzgnq:Lcom/google/android/gms/internal/ads/zzatq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcme;Lcom/google/android/gms/internal/ads/zzatq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzgnp:Lcom/google/android/gms/internal/ads/zzcme;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzgnq:Lcom/google/android/gms/internal/ads/zzatq;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzgnp:Lcom/google/android/gms/internal/ads/zzcme;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmd;->zzgnq:Lcom/google/android/gms/internal/ads/zzatq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcme;->zzf(Lcom/google/android/gms/internal/ads/zzatq;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
