.class public final Lcom/google/android/gms/internal/ads/ra;
.super Lcom/google/android/gms/internal/ads/ik2;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/ta;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ik2;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ik2;->h0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/ik2;->M1(ILandroid/os/Parcel;)V

    return-void
.end method
