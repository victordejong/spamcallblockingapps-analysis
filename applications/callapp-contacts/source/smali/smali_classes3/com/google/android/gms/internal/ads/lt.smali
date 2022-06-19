.class final Lcom/google/android/gms/internal/ads/lt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hw;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/kv;

.field private final b:Lcom/google/android/gms/internal/ads/zp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zp<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final synthetic c:Lcom/google/android/gms/internal/ads/ls;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ls;Lcom/google/android/gms/internal/ads/kv;Lcom/google/android/gms/internal/ads/zp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/kv;",
            "Lcom/google/android/gms/internal/ads/zp<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lt;->c:Lcom/google/android/gms/internal/ads/ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/android/gms/internal/ads/kv;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lt;->b:Lcom/google/android/gms/internal/ads/zp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 18
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lt;->b:Lcom/google/android/gms/internal/ads/zp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamh;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->b:Lcom/google/android/gms/internal/ads/zp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzamh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/android/gms/internal/ads/kv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/kv;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/android/gms/internal/ads/kv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kv;->a()V

    .line 26
    throw p1

    .line 23
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/android/gms/internal/ads/kv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/kv;->a()V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->b:Lcom/google/android/gms/internal/ads/zp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lt;->c:Lcom/google/android/gms/internal/ads/ls;

    .line 1030
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ls;->a:Lcom/google/android/gms/internal/ads/lh;

    .line 5
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/lh;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/android/gms/internal/ads/kv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/kv;->a()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->b:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/android/gms/internal/ads/kv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/kv;->a()V

    return-void

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/android/gms/internal/ads/kv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kv;->a()V

    .line 16
    throw p1

    .line 9
    :catch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lt;->a:Lcom/google/android/gms/internal/ads/kv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/kv;->a()V

    return-void
.end method
