.class final synthetic Lcom/google/android/gms/internal/ads/vw0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/rz1;

.field private final b:Lcom/google/android/gms/internal/ads/rz1;

.field private final c:Lcom/google/android/gms/internal/ads/rz1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/rz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vw0;->a:Lcom/google/android/gms/internal/ads/rz1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vw0;->b:Lcom/google/android/gms/internal/ads/rz1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vw0;->c:Lcom/google/android/gms/internal/ads/rz1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vw0;->a:Lcom/google/android/gms/internal/ads/rz1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vw0;->b:Lcom/google/android/gms/internal/ads/rz1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vw0;->c:Lcom/google/android/gms/internal/ads/rz1;

    new-instance v3, Lcom/google/android/gms/internal/ads/ix0;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/mx0;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ix0;-><init>(Lcom/google/android/gms/internal/ads/mx0;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/mj;)V

    return-object v3
.end method
