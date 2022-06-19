.class public final Lcom/google/android/gms/common/internal/ao;
.super Lcom/google/android/gms/internal/e/b;
.source "com.google.android.gms:play-services-basement@@17.1.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/an;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.common.internal.ICertData"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/e/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/a;
    .locals 2

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/b;->c()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/b;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7
    return-object v1
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/b;->c()Landroid/os/Parcel;

    move-result-object v0

    .line 9
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/b;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12
    return v1
.end method
