.class public final Lcom/google/android/gms/internal/ads/bz;
.super Lcom/google/android/gms/ads/b/c$b;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bu;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/net/Uri;

.field private final d:D

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bu;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/b/c$b;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bz;->a:Lcom/google/android/gms/internal/ads/bu;

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bz;->a:Lcom/google/android/gms/internal/ads/bu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bu;->a()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bz;->b:Landroid/graphics/drawable/Drawable;

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bz;->a:Lcom/google/android/gms/internal/ads/bu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bu;->b()Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 16
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bz;->c:Landroid/net/Uri;

    .line 17
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 18
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bz;->a:Lcom/google/android/gms/internal/ads/bu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/bu;->c()D
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v0

    .line 22
    :goto_2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/bz;->d:D

    .line 24
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bz;->a:Lcom/google/android/gms/internal/ads/bu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bu;->d()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    .line 28
    :goto_3
    iput v0, p0, Lcom/google/android/gms/internal/ads/bz;->e:I

    .line 30
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bz;->a:Lcom/google/android/gms/internal/ads/bu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bu;->e()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v2

    .line 34
    :goto_4
    iput v2, p0, Lcom/google/android/gms/internal/ads/bz;->f:I

    .line 35
    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const-string/jumbo v3, ""

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 14
    :catch_1
    move-exception v0

    .line 15
    const-string/jumbo v3, ""

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 20
    :catch_2
    move-exception v3

    .line 21
    const-string/jumbo v4, ""

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 26
    :catch_3
    move-exception v0

    .line 27
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_3

    .line 32
    :catch_4
    move-exception v0

    .line 33
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bz;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bz;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/bz;->d:D

    return-wide v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/bz;->e:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/ads/bz;->f:I

    return v0
.end method
