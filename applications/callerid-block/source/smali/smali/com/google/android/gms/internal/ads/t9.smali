.class final Lcom/google/android/gms/internal/ads/t9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/u9;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/fp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/v9;Lcom/google/android/gms/internal/ads/fp;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/t9;->a:Lcom/google/android/gms/internal/ads/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final u(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t9;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaot;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaot;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fp;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final v(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t9;->a:Lcom/google/android/gms/internal/ads/fp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fp;->c(Ljava/lang/Object;)Z

    return-void
.end method
