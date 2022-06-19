.class final synthetic Lcom/google/android/gms/internal/ads/abz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/abb;

.field private final b:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/abb;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abz;->a:Lcom/google/android/gms/internal/ads/abb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abz;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abz;->a:Lcom/google/android/gms/internal/ads/abb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abz;->b:Ljava/util/Map;

    const-string v2, "onGcacheInfoEvent"

    .line 2
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/abb;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
