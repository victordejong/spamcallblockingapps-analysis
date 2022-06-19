.class public final Lcom/google/android/gms/internal/ads/hj2;
.super Lcom/google/android/gms/internal/ads/ak2;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/si2;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ar0;II)V
    .locals 7

    const-string v2, "HDBr8nc5ubdBn1y5M6IpuatOFh1+XK9blifaQQrU1HNvfw3hhdVJEUnkWE7sod57"

    const-string v3, "A6vbZ9nEwiHcLSfXI6B1ZE45FocqpxNzrogO6LWG5xM="

    const/16 v6, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/ak2;-><init>(Lcom/google/android/gms/internal/ads/si2;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ar0;II)V

    return-void
.end method

.method private final c()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak2;->a:Lcom/google/android/gms/internal/ads/si2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si2;->r()Lcom/google/android/gms/ads/u/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/u/a;->c()Lcom/google/android/gms/ads/u/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/u/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vi2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ak2;->d:Lcom/google/android/gms/internal/ads/ar0;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ak2;->d:Lcom/google/android/gms/internal/ads/ar0;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/ar0;->V(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ar0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak2;->d:Lcom/google/android/gms/internal/ads/ar0;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/u/a$a;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ar0;->X(Z)Lcom/google/android/gms/internal/ads/ar0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak2;->d:Lcom/google/android/gms/internal/ads/ar0;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzct;->g:Lcom/google/android/gms/internal/ads/zzct;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ar0;->W(Lcom/google/android/gms/internal/ads/zzct;)Lcom/google/android/gms/internal/ads/ar0;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak2;->a:Lcom/google/android/gms/internal/ads/si2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si2;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak2;->d:Lcom/google/android/gms/internal/ads/ar0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ak2;->d:Lcom/google/android/gms/internal/ads/ar0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ak2;->e:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ak2;->a:Lcom/google/android/gms/internal/ads/si2;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/si2;->b()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ar0;->V(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ar0;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hj2;->c()V

    return-void
.end method

.method public final b()Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak2;->a:Lcom/google/android/gms/internal/ads/si2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si2;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/ak2;->b()Ljava/lang/Void;

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak2;->a:Lcom/google/android/gms/internal/ads/si2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si2;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hj2;->c()V

    :cond_1
    return-object v1
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ak2;->b()Ljava/lang/Void;

    const/4 v0, 0x0

    return-object v0
.end method
