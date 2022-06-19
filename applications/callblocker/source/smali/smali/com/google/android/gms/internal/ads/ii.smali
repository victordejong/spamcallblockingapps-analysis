.class final Lcom/google/android/gms/internal/ads/ii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fa",
        "<",
        "Lcom/google/android/gms/internal/ads/jc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/iu;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/hp;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/id;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/hp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ii;->c:Lcom/google/android/gms/internal/ads/id;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ii;->a:Lcom/google/android/gms/internal/ads/iu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ii;->b:Lcom/google/android/gms/internal/ads/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/jc;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ii;->c:Lcom/google/android/gms/internal/ads/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/id;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ii;->a:Lcom/google/android/gms/internal/ads/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yv;->e()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ii;->a:Lcom/google/android/gms/internal/ads/iu;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yv;->e()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 6
    :cond_0
    monitor-exit v1

    .line 12
    :goto_0
    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ii;->c:Lcom/google/android/gms/internal/ads/id;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/id;I)I

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ii;->c:Lcom/google/android/gms/internal/ads/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->c(Lcom/google/android/gms/internal/ads/id;)Lcom/google/android/gms/internal/ads/wj;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ii;->b:Lcom/google/android/gms/internal/ads/hp;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/wj;->a(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ii;->a:Lcom/google/android/gms/internal/ads/iu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ii;->b:Lcom/google/android/gms/internal/ads/hp;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/yv;->a(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ii;->c:Lcom/google/android/gms/internal/ads/id;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ii;->a:Lcom/google/android/gms/internal/ads/iu;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;)Lcom/google/android/gms/internal/ads/iu;

    .line 11
    const-string/jumbo v0, "Successfully loaded JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 12
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
