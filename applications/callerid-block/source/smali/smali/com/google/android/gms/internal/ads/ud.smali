.class final Lcom/google/android/gms/internal/ads/ud;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/u9;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/vd;Lcom/google/android/gms/internal/ads/fp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ud;->a:Lcom/google/android/gms/internal/ads/fp;

    return-void
.end method


# virtual methods
.method public final u(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ud;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaot;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaot;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/fp;->d(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ud;->a:Lcom/google/android/gms/internal/ads/fp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaot;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaot;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/fp;->d(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final v(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ud;->a:Lcom/google/android/gms/internal/ads/fp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fp;->c(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ud;->a:Lcom/google/android/gms/internal/ads/fp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fp;->d(Ljava/lang/Throwable;)Z

    :catch_1
    return-void
.end method
