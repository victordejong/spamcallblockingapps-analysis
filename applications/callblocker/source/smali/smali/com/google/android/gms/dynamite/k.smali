.class public final Lcom/google/android/gms/dynamite/k;
.super Lcom/google/android/gms/internal/e/b;
.source "com.google.android.gms:play-services-basement@@17.1.1"

# interfaces
.implements Lcom/google/android/gms/dynamite/l;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/e/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;ILcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/a;
    .locals 2

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/b;->c()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/e/d;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/e/d;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 8
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/b;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11
    return-object v1
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;ILcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/a;
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/e/b;->c()Landroid/os/Parcel;

    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/e/d;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/e/d;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 17
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/e/b;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/a$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 20
    return-object v1
.end method
