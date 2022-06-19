.class final Lcom/google/android/gms/internal/ads/u60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/b30;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/x50;

.field private final b:Lcom/google/android/gms/internal/ads/vi0;

.field final synthetic c:Lcom/google/android/gms/internal/ads/v60;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/v60;Lcom/google/android/gms/internal/ads/x50;Lcom/google/android/gms/internal/ads/vi0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u60;->c:Lcom/google/android/gms/internal/ads/v60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/u60;->a:Lcom/google/android/gms/internal/ads/x50;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/u60;->b:Lcom/google/android/gms/internal/ads/vi0;

    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u60;->b:Lcom/google/android/gms/internal/ads/vi0;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u60;->b:Lcom/google/android/gms/internal/ads/vi0;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtv;

    .line 3
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u60;->a:Lcom/google/android/gms/internal/ads/x50;

    .line 5
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x50;->g()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u60;->a:Lcom/google/android/gms/internal/ads/x50;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x50;->g()V

    .line 8
    throw p1

    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u60;->a:Lcom/google/android/gms/internal/ads/x50;

    goto :goto_1
.end method

.method public final s(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u60;->b:Lcom/google/android/gms/internal/ads/vi0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/u60;->c:Lcom/google/android/gms/internal/ads/v60;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/v60;->c(Lcom/google/android/gms/internal/ads/v60;)Lcom/google/android/gms/internal/ads/i60;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/i60;->s(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vi0;->c(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u60;->a:Lcom/google/android/gms/internal/ads/x50;

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/x50;->g()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u60;->b:Lcom/google/android/gms/internal/ads/vi0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vi0;->f(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u60;->a:Lcom/google/android/gms/internal/ads/x50;

    goto :goto_0

    .line 5
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u60;->a:Lcom/google/android/gms/internal/ads/x50;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/x50;->g()V

    .line 7
    throw p1

    .line 8
    :catch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u60;->a:Lcom/google/android/gms/internal/ads/x50;

    goto :goto_0
.end method
