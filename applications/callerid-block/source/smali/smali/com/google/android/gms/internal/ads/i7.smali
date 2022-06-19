.class public abstract Lcom/google/android/gms/internal/ads/i7;
.super Lcom/google/android/gms/internal/ads/jk2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/j7;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/jk2;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static z6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/j7;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/j7;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/ads/j7;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/h7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/h7;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final y6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/w6;

    if-eqz v0, :cond_1

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/w6;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/t6;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/t6;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/j7;->m5(Lcom/google/android/gms/internal/ads/w6;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
