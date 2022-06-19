.class public abstract Landroidx/media2/session/d$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/d$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.media2.session.IMediaSessionService"

    .line 32
    invoke-virtual {p0, p0, v0}, Landroidx/media2/session/d$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Landroidx/media2/session/d;
    .locals 1

    .line 139
    sget-object v0, Landroidx/media2/session/d$a$a;->a:Landroidx/media2/session/d;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Landroidx/media2/session/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "androidx.media2.session.IMediaSessionService"

    .line 43
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    instance-of v1, v0, Landroidx/media2/session/d;

    if-eqz v1, :cond_1

    .line 45
    check-cast v0, Landroidx/media2/session/d;

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Landroidx/media2/session/d$a$a;

    invoke-direct {v0, p0}, Landroidx/media2/session/d$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "androidx.media2.session.IMediaSessionService"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 60
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 65
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/session/b$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/b;

    move-result-object p1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_2

    .line 70
    sget-object p3, Landroidx/versionedparcelable/ParcelImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/versionedparcelable/ParcelImpl;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/d$a;->a(Landroidx/media2/session/b;Landroidx/versionedparcelable/ParcelImpl;)V

    return v0
.end method
