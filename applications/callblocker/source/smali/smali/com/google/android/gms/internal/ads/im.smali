.class final Lcom/google/android/gms/internal/ads/im;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ys;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ys",
        "<",
        "Lcom/google/android/gms/internal/ads/hp;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/iu;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/id;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/im;->b:Lcom/google/android/gms/internal/ads/id;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/im;->a:Lcom/google/android/gms/internal/ads/iu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/hp;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/im;->b:Lcom/google/android/gms/internal/ads/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/id;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/im;->b:Lcom/google/android/gms/internal/ads/id;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/id;I)I

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/im;->b:Lcom/google/android/gms/internal/ads/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->b(Lcom/google/android/gms/internal/ads/id;)Lcom/google/android/gms/internal/ads/iu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/im;->a:Lcom/google/android/gms/internal/ads/iu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/im;->b:Lcom/google/android/gms/internal/ads/id;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/id;->b(Lcom/google/android/gms/internal/ads/id;)Lcom/google/android/gms/internal/ads/iu;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6
    const-string/jumbo v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/im;->b:Lcom/google/android/gms/internal/ads/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->b(Lcom/google/android/gms/internal/ads/id;)Lcom/google/android/gms/internal/ads/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iu;->c()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/im;->b:Lcom/google/android/gms/internal/ads/id;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/im;->a:Lcom/google/android/gms/internal/ads/iu;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;)Lcom/google/android/gms/internal/ads/iu;

    .line 9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
