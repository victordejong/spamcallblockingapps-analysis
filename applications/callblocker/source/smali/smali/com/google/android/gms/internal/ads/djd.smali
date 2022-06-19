.class public final Lcom/google/android/gms/internal/ads/djd;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V
    .locals 7

    .prologue
    .line 1
    const/4 v6, 0x5

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
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djd;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/atw$a$a;->b(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djd;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/atw$a$a;->c(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/djd;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/djd;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/din;->a()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/djd;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djd;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/atw$a$a;->b(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djd;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/atw$a$a;->c(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 9
    const/4 v2, 0x2

    aget v2, v0, v2

    .line 10
    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djd;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    const/4 v3, 0x2

    aget v0, v0, v3

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/atw$a$a;->B(J)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 12
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
