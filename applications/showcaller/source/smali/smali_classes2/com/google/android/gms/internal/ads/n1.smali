.class public final Lcom/google/android/gms/internal/ads/n1;
.super Lcom/google/android/gms/internal/ads/z1;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/q0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/j14;II)V
    .locals 7

    const-string v2, "0nCS1/lIiwmVLmY4a37W/6SChW3s76Q3PykiLxRk0eA7B+gs2O43l0EwWtwdYppM"

    const-string v3, "NOQ7v89FdlqbWITe5fQxaJU2MeOCrxMPjMVtpwyCEdc="

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/z1;-><init>(Lcom/google/android/gms/internal/ads/q0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/j14;II)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->M1:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z1;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/q0;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/q0;->c()Landroid/content/Context;

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

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/y;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/y;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->e:Lcom/google/android/gms/internal/ads/j14;

    .line 6
    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/z1;->e:Lcom/google/android/gms/internal/ads/j14;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/y;->b:J

    .line 7
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/j14;->Y(J)Lcom/google/android/gms/internal/ads/j14;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/z1;->e:Lcom/google/android/gms/internal/ads/j14;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/y;->c:J

    .line 8
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/j14;->F(J)Lcom/google/android/gms/internal/ads/j14;

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
