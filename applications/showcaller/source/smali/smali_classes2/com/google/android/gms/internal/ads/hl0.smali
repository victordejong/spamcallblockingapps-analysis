.class final synthetic Lcom/google/android/gms/internal/ads/hl0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/kk0;

.field private final e:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/kk0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hl0;->d:Lcom/google/android/gms/internal/ads/kk0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hl0;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hl0;->d:Lcom/google/android/gms/internal/ads/kk0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hl0;->e:Ljava/util/Map;

    sget v2, Lcom/google/android/gms/internal/ads/rl0;->f:I

    const-string v2, "onGcacheInfoEvent"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
