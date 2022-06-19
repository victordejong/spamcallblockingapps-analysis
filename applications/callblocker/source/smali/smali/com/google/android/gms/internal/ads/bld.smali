.class final synthetic Lcom/google/android/gms/internal/ads/bld;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crt;

.field private final b:Lcom/google/android/gms/internal/ads/crt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bld;->a:Lcom/google/android/gms/internal/ads/crt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bld;->b:Lcom/google/android/gms/internal/ads/crt;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bld;->a:Lcom/google/android/gms/internal/ads/crt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bld;->b:Lcom/google/android/gms/internal/ads/crt;

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/bln;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/blu;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/blo;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/blo;->b:Lorg/json/JSONObject;

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/crt;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/blo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/blo;->a:Lcom/google/android/gms/internal/ads/qc;

    invoke-direct {v3, v0, v4, v1}, Lcom/google/android/gms/internal/ads/bln;-><init>(Lcom/google/android/gms/internal/ads/blu;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/qc;)V

    .line 6
    return-object v3
.end method
