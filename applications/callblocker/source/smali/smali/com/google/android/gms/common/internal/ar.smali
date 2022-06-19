.class public abstract Lcom/google/android/gms/common/internal/ar;
.super Lcom/google/android/gms/internal/e/a;
.source "com.google.android.gms:play-services-basement@@17.1.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/as;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/as;
    .locals 2

    .prologue
    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 v0, 0x0

    .line 6
    :goto_0
    return-object v0

    .line 3
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/common/internal/as;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/google/android/gms/common/internal/as;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/at;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/at;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method
