.class public final Lcom/google/android/gms/internal/ads/oj2;
.super Lcom/google/android/gms/internal/ads/ak2;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/si2;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ar0;II)V
    .locals 7

    const-string v2, "eijqHhj6HRHTR2kiOBr06o0WXa90aPfb55Jus8IsGuh+gWTtvWAdzIROEcsjSbn8"

    const-string v3, "zwHuLsgj/SpT7P1yA2TTitRWF3b0MhirZyQt+GevFp0="

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ak2;-><init>(Lcom/google/android/gms/internal/ads/si2;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ar0;II)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->x1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak2;->e:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ak2;->a:Lcom/google/android/gms/internal/ads/si2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/si2;->b()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/bi2;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/bi2;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak2;->d:Lcom/google/android/gms/internal/ads/ar0;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ak2;->d:Lcom/google/android/gms/internal/ads/ar0;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/bi2;->b:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/ar0;->b0(J)Lcom/google/android/gms/internal/ads/ar0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ak2;->d:Lcom/google/android/gms/internal/ads/ar0;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/bi2;->c:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/ar0;->M(J)Lcom/google/android/gms/internal/ads/ar0;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
