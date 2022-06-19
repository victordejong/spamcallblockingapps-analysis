.class final Lcom/google/android/gms/internal/ads/jt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fi;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/iq;

.field private final b:Lcom/google/android/gms/internal/ads/yo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/yo",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final synthetic c:Lcom/google/android/gms/internal/ads/jo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/jo;Lcom/google/android/gms/internal/ads/iq;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/iq;",
            "Lcom/google/android/gms/internal/ads/yo",
            "<TO;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jt;->c:Lcom/google/android/gms/internal/ads/jo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jt;->a:Lcom/google/android/gms/internal/ads/iq;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jt;->b:Lcom/google/android/gms/internal/ads/yo;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jt;->b:Lcom/google/android/gms/internal/ads/yo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzake;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzake;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jt;->a:Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iq;->a()V

    .line 24
    :goto_1
    return-void

    .line 19
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jt;->b:Lcom/google/android/gms/internal/ads/yo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzake;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzake;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jt;->a:Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iq;->a()V

    goto :goto_1

    .line 25
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jt;->a:Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iq;->a()V

    .line 26
    throw v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jt;->b:Lcom/google/android/gms/internal/ads/yo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jt;->c:Lcom/google/android/gms/internal/ads/jo;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jo;->a(Lcom/google/android/gms/internal/ads/jo;)Lcom/google/android/gms/internal/ads/jh;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/jh;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jt;->a:Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iq;->a()V

    .line 14
    :goto_0
    return-void

    .line 9
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jt;->a:Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iq;->a()V

    goto :goto_0

    .line 11
    :catch_1
    move-exception v0

    .line 12
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jt;->b:Lcom/google/android/gms/internal/ads/yo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jt;->a:Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iq;->a()V

    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jt;->a:Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/iq;->a()V

    .line 16
    throw v0
.end method
