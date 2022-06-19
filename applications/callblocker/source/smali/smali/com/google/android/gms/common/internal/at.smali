.class public final Lcom/google/android/gms/common/internal/at;
.super Lcom/google/android/gms/internal/e/b;
.source "com.google.android.gms:play-services-basement@@17.1.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/as;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/e/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/u;Lcom/google/android/gms/dynamic/a;)Z
    .locals 2

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/b;->c()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/e/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/e/d;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 6
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/b;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/e/d;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 8
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9
    return v1
.end method
