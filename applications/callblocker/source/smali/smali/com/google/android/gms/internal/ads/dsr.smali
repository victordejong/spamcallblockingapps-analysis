.class final Lcom/google/android/gms/internal/ads/dsr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ads/dss;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dss;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/dss;-><init>(Landroid/os/Parcel;)V

    .line 6
    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dss;

    .line 3
    return-object v0
.end method
