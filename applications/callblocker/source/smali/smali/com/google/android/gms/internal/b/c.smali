.class public Lcom/google/android/gms/internal/b/c;
.super Landroid/os/Binder;
.source "com.google.android.gms:play-services-auth@@18.0.0"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field private static a:Lcom/google/android/gms/internal/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/b/c;->a:Lcom/google/android/gms/internal/b/e;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    invoke-virtual {p0, p0, p1}, Lcom/google/android/gms/internal/b/c;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 3
    return-void
.end method


# virtual methods
.method protected a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 4
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .prologue
    .line 5
    .line 6
    const v0, 0xffffff

    if-le p1, v0, :cond_0

    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/b/c;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/b/c;->a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    goto :goto_1
.end method
