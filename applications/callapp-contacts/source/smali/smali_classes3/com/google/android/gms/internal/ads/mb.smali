.class final Lcom/google/android/gms/internal/ads/mb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hw;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zp<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final synthetic b:Lcom/google/android/gms/internal/ads/lz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/lz;Lcom/google/android/gms/internal/ads/zp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zp<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mb;->b:Lcom/google/android/gms/internal/ads/lz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mb;->a:Lcom/google/android/gms/internal/ads/zp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/mb;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamh;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mb;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzamh;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mb;->a:Lcom/google/android/gms/internal/ads/zp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mb;->b:Lcom/google/android/gms/internal/ads/lz;

    .line 1021
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/lz;->a:Lcom/google/android/gms/internal/ads/lh;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/lh;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mb;->a:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    :catch_1
    return-void
.end method
