.class final Lcom/google/android/gms/internal/ads/a30;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/b30;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/vi0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/c30;Lcom/google/android/gms/internal/ads/vi0;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/a30;->a:Lcom/google/android/gms/internal/ads/vi0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a30;->a:Lcom/google/android/gms/internal/ads/vi0;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final s(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a30;->a:Lcom/google/android/gms/internal/ads/vi0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vi0;->c(Ljava/lang/Object;)Z

    return-void
.end method
