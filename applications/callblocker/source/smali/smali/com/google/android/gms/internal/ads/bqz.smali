.class final Lcom/google/android/gms/internal/ads/bqz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ave;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/bqx;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/chd;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/cgr;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/bmx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bqx;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqz;->a:Lcom/google/android/gms/internal/ads/bqx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqz;->b:Lcom/google/android/gms/internal/ads/chd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bqz;->c:Lcom/google/android/gms/internal/ads/cgr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bqz;->d:Lcom/google/android/gms/internal/ads/bmx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqz;->a:Lcom/google/android/gms/internal/ads/bqx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bqx;->a(Lcom/google/android/gms/internal/ads/bqx;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/brc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bqz;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bqz;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bqz;->d:Lcom/google/android/gms/internal/ads/bmx;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/brc;-><init>(Lcom/google/android/gms/internal/ads/bqz;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 4
    const-string/jumbo v1, "Fail to initialize adapter "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqz;->d:Lcom/google/android/gms/internal/ads/bmx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bmx;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 5
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
