.class public final Lcom/google/android/gms/internal/ads/djs;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V
    .locals 7

    .prologue
    .line 1
    const/16 v6, 0x3d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/djz;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/din;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/djs;->d:Z

    .line 3
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djs;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/djs;->a:Lcom/google/android/gms/internal/ads/din;

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/din;->a()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/djs;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djs;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/djs;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/atw$a$a;->D(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 8
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
