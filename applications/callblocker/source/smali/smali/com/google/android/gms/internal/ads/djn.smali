.class public final Lcom/google/android/gms/internal/ads/djn;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V
    .locals 7

    .prologue
    .line 1
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/djz;-><init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bb:Lcom/google/android/gms/internal/ads/ect;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/djn;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/djn;->a:Lcom/google/android/gms/internal/ads/din;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/din;->a()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/cxo;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cxo;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djn;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djn;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/cxo;->a:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/atw$a$a;->a(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djn;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/cxo;->b:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/atw$a$a;->C(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 12
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
