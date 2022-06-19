.class public final Lcom/google/android/gms/internal/ads/cne;
.super Lcom/google/android/gms/internal/ads/dkj;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cnf;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.gass.internal.IGassService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dkj;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cnb;)Lcom/google/android/gms/internal/ads/cnd;
    .locals 2

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/cnd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cnd;

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cnm;)Lcom/google/android/gms/internal/ads/cno;
    .locals 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 15
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/cno;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cno;

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 18
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cmw;)V
    .locals 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkj;->y()Landroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 11
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dkj;->b(ILandroid/os/Parcel;)V

    .line 12
    return-void
.end method
