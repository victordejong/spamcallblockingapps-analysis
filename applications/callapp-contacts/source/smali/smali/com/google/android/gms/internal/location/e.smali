.class public abstract Lcom/google/android/gms/internal/location/e;
.super Lcom/google/android/gms/internal/location/q;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/location/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/location/q;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/e;->b()V

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/location/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/location/ai;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/location/zzaa;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/location/e;->a(Lcom/google/android/gms/internal/location/zzaa;)V

    :goto_0
    return v0
.end method
