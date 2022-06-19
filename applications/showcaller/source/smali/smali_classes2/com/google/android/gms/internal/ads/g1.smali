.class public final Lcom/google/android/gms/internal/ads/g1;
.super Lcom/google/android/gms/internal/ads/z1;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/q0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/j14;II)V
    .locals 7

    const-string v2, "NSYe0Ak7CUXd9zFZA3bczJ8pTgBK/kfUu9ICpHR+lQrTNc8+V7Owo49e2WIp0407"

    const-string v3, "Ux7t0A/7z2bV/IDvLZJgV4tTxr0Vvc1KngWKlG2Szwg="

    const/16 v6, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/z1;-><init>(Lcom/google/android/gms/internal/ads/q0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/j14;II)V

    return-void
.end method

.method private final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q0;->t()Lcom/google/android/gms/ads/v/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/v/a;->c()Lcom/google/android/gms/ads/v/a$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/ads/v/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/t0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/z1;->e:Lcom/google/android/gms/internal/ads/j14;

    .line 4
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/z1;->e:Lcom/google/android/gms/internal/ads/j14;

    .line 5
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/j14;->L(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/j14;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z1;->e:Lcom/google/android/gms/internal/ads/j14;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/v/a$a;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/j14;->M(Z)Lcom/google/android/gms/internal/ads/j14;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->e:Lcom/google/android/gms/internal/ads/j14;

    const/4 v1, 0x6

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/j14;->W(I)Lcom/google/android/gms/internal/ads/j14;

    .line 8
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q0;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->e:Lcom/google/android/gms/internal/ads/j14;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z1;->e:Lcom/google/android/gms/internal/ads/j14;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/z1;->f:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/q0;

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/q0;->c()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/j14;->L(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/j14;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/g1;->c()V

    return-void
.end method

.method public final b()Ljava/lang/Void;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/q0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q0;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/z1;->b()Ljava/lang/Void;

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z1;->b:Lcom/google/android/gms/internal/ads/q0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/g1;->c()V

    :cond_1
    return-object v1
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/z1;->b()Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
