.class final Lcom/google/android/gms/internal/ads/bts;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<",
        "Lcom/google/android/gms/internal/ads/amh;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bto;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/axo;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/btr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/btr;Lcom/google/android/gms/internal/ads/bto;Lcom/google/android/gms/internal/ads/axo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bts;->c:Lcom/google/android/gms/internal/ads/btr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bts;->a:Lcom/google/android/gms/internal/ads/bto;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bts;->b:Lcom/google/android/gms/internal/ads/axo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/amh;

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bts;->c:Lcom/google/android/gms/internal/ads/btr;

    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bts;->a:Lcom/google/android/gms/internal/ads/bto;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bto;->a(Ljava/lang/Object;)V

    .line 11
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bts;->b:Lcom/google/android/gms/internal/ads/axo;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/axo;->b()Lcom/google/android/gms/internal/ads/apt;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->a(Ljava/lang/Throwable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/apt;->a(I)V

    .line 5
    const-string/jumbo v0, "NativeAdLoader.onFailure"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/chp;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bts;->a:Lcom/google/android/gms/internal/ads/bto;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bto;->a()V

    .line 7
    return-void
.end method
