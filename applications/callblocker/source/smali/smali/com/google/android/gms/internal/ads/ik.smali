.class final Lcom/google/android/gms/internal/ads/ik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/iu;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/hp;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/id;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/hp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ik;->c:Lcom/google/android/gms/internal/ads/id;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ik;->a:Lcom/google/android/gms/internal/ads/iu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ik;->b:Lcom/google/android/gms/internal/ads/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik;->c:Lcom/google/android/gms/internal/ads/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/id;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik;->a:Lcom/google/android/gms/internal/ads/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yv;->e()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik;->a:Lcom/google/android/gms/internal/ads/iu;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yv;->e()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    :cond_0
    monitor-exit v1

    .line 9
    :goto_0
    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik;->a:Lcom/google/android/gms/internal/ads/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yv;->d()V

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ik;->b:Lcom/google/android/gms/internal/ads/hp;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/in;->a(Lcom/google/android/gms/internal/ads/hp;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 8
    const-string/jumbo v0, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 9
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
