.class public abstract Lcom/google/android/gms/internal/ads/bu;
.super Lcom/google/android/gms/internal/ads/k2;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cu;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IOnPaidEventListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/k2;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static E6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/cu;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.client.IOnPaidEventListener"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/cu;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/cu;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/au;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/au;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final D6(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/l2;->c(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdn;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/cu;->j5(Lcom/google/android/gms/internal/ads/zzbdn;)V

    .line 3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
