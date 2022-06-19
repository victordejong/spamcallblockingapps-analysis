.class final Lcom/google/android/gms/internal/ads/il;
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
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ctl;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/hp;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/xg;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/id;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/hp;Lcom/google/android/gms/internal/ads/xg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/il;->d:Lcom/google/android/gms/internal/ads/id;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/il;->a:Lcom/google/android/gms/internal/ads/ctl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/il;->b:Lcom/google/android/gms/internal/ads/hp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/il;->c:Lcom/google/android/gms/internal/ads/xg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/jc;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/il;->d:Lcom/google/android/gms/internal/ads/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/id;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4
    :try_start_0
    const-string/jumbo v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/il;->d:Lcom/google/android/gms/internal/ads/id;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->d(Lcom/google/android/gms/internal/ads/id;)I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    const-string/jumbo v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/il;->d:Lcom/google/android/gms/internal/ads/id;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/id;I)I

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/il;->d:Lcom/google/android/gms/internal/ads/id;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/il;->a:Lcom/google/android/gms/internal/ads/ctl;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/ctl;)Lcom/google/android/gms/internal/ads/iu;

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/il;->b:Lcom/google/android/gms/internal/ads/hp;

    const-string/jumbo v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/il;->c:Lcom/google/android/gms/internal/ads/xg;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xg;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/fa;

    .line 11
    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/hp;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ads/fa;)V

    .line 12
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
