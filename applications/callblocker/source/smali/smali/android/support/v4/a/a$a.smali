.class public abstract Landroid/support/v4/a/a$a;
.super Landroid/os/Binder;
.source "IResultReceiver.java"

# interfaces
.implements Landroid/support/v4/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/a/a$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.support.v4.os.IResultReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/a/a$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Landroid/support/v4/a/a;
    .locals 2

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string/jumbo v0, "android.support.v4.os.IResultReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/v4/a/a;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/support/v4/a/a;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/support/v4/a/a$a$a;

    invoke-direct {v0, p0}, Landroid/support/v4/a/a$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 39
    const-string/jumbo v0, "android.support.v4.os.IResultReceiver"

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 45
    goto :goto_0

    .line 49
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 59
    :goto_1
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/a/a$a;->a(ILandroid/os/Bundle;)V

    move v0, v1

    .line 60
    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
