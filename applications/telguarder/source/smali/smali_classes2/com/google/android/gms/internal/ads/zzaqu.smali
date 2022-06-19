.class public final Lcom/google/android/gms/internal/ads/zzaqu;
.super Lcom/google/android/gms/ads/nativead/NativeAd$Image;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final height:I

.field private final uri:Landroid/net/Uri;

.field private final width:I

.field private final zzdfs:D

.field private final zzdfx:Lcom/google/android/gms/internal/ads/zzaer;

.field private final zzdfy:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaer;)V
    .locals 3

    const-string v0, ""

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqu;->zzdfx:Lcom/google/android/gms/internal/ads/zzaer;

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaer;->zzti()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqu;->zzdfy:Landroid/graphics/drawable/Drawable;

    .line 12
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqu;->zzdfx:Lcom/google/android/gms/internal/ads/zzaer;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaer;->getUri()Landroid/net/Uri;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 15
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqu;->uri:Landroid/net/Uri;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 18
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqu;->zzdfx:Lcom/google/android/gms/internal/ads/zzaer;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaer;->getScale()D

    move-result-wide v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 21
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :goto_2
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaqu;->zzdfs:D

    const/4 p1, -0x1

    .line 24
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqu;->zzdfx:Lcom/google/android/gms/internal/ads/zzaer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaer;->getWidth()I

    move-result v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 27
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    .line 28
    :goto_3
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaqu;->width:I

    .line 30
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqu;->zzdfx:Lcom/google/android/gms/internal/ads/zzaer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaer;->getHeight()I

    move-result p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    .line 33
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :goto_4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqu;->height:I

    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqu;->zzdfy:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getScale()D
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqu;->zzdfs:D

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqu;->uri:Landroid/net/Uri;

    return-object v0
.end method
