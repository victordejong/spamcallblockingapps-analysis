.class final synthetic Lcom/google/android/gms/internal/ads/zzbey;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzehx:Ljava/util/Map;

.field private final zzeug:Lcom/google/android/gms/internal/ads/zzbev;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbev;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbey;->zzeug:Lcom/google/android/gms/internal/ads/zzbev;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbey;->zzehx:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbey;->zzeug:Lcom/google/android/gms/internal/ads/zzbev;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbey;->zzehx:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbev;->zzl(Ljava/util/Map;)V

    return-void
.end method
