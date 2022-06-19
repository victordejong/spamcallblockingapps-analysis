.class public final Lcom/google/android/gms/internal/ads/jh;
.super Lcom/google/android/gms/ads/nativead/a$b;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/g6;

.field private final b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/g6;)V
    .locals 2

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/a$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jh;->a:Lcom/google/android/gms/internal/ads/g6;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/g6;->b()Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/jh;->b:Landroid/graphics/drawable/Drawable;

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jh;->a:Lcom/google/android/gms/internal/ads/g6;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/g6;->c()Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jh;->a:Lcom/google/android/gms/internal/ads/g6;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/g6;->f()D
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jh;->a:Lcom/google/android/gms/internal/ads/g6;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/g6;->a()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jh;->a:Lcom/google/android/gms/internal/ads/g6;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/g6;->d()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jh;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
