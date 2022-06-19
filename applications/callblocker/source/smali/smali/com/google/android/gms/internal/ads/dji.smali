.class public final Lcom/google/android/gms/internal/ads/dji;
.super Lcom/google/android/gms/internal/ads/djz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V
    .locals 7

    .prologue
    .line 1
    const/16 v6, 0x18

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

.method private final c()V
    .locals 4

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dji;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/din;->n()Lcom/google/android/gms/ads/c/a;

    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/c/a;->b()Lcom/google/android/gms/ads/c/a$a;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/ads/c/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dis;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dji;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dji;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/atw$a$a;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dji;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/c/a$a;->b()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/atw$a$a;->a(Z)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dji;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    sget-object v1, Lcom/google/android/gms/internal/ads/atw$a$c;->b:Lcom/google/android/gms/internal/ads/atw$a$c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/atw$a$a;->a(Lcom/google/android/gms/internal/ads/atw$a$c;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 26
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dji;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/din;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dji;->c()V

    .line 15
    :goto_0
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dji;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dji;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dji;->c:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dji;->a:Lcom/google/android/gms/internal/ads/din;

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/din;->a()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/atw$a$a;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 15
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dji;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/din;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/djz;->b()Ljava/lang/Void;

    move-result-object v0

    .line 7
    :goto_0
    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dji;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/din;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dji;->c()V

    .line 7
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/djz;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
