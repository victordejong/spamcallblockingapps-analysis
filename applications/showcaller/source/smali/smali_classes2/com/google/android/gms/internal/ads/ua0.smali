.class public final Lcom/google/android/gms/internal/ads/ua0;
.super Lcom/google/android/gms/ads/nativead/a$b;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/gz;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/net/Uri;

.field private final d:D


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/gz;)V
    .locals 3

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/a$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ua0;->a:Lcom/google/android/gms/internal/ads/gz;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gz;->b()Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object p1, v1

    .line 4
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ua0;->b:Landroid/graphics/drawable/Drawable;

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ua0;->a:Lcom/google/android/gms/internal/ads/gz;

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gz;->c()Landroid/net/Uri;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ua0;->c:Landroid/net/Uri;

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ua0;->a:Lcom/google/android/gms/internal/ads/gz;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gz;->e()D

    move-result-wide v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 10
    :goto_2
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/ua0;->d:D

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ua0;->a:Lcom/google/android/gms/internal/ads/gz;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gz;->a()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_3
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ua0;->a:Lcom/google/android/gms/internal/ads/gz;

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gz;->d()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 15
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ua0;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
