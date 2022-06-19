.class final synthetic Lcom/google/android/gms/internal/ads/or;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/rq;

.field private final c:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rq;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/or;->b:Lcom/google/android/gms/internal/ads/rq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/or;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/or;->b:Lcom/google/android/gms/internal/ads/rq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/or;->c:Ljava/util/Map;

    const-string v2, "onGcacheInfoEvent"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/lb;->X(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
