.class final Landroidx/media2/session/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static a:Landroidx/media2/session/d;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/media2/session/d$a$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/session/b;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "androidx.media2.session.IMediaSessionService"

    .line 103
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 104
    invoke-interface {p1}, Landroidx/media2/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 106
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {p2, v0, v2}, Landroidx/versionedparcelable/ParcelImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    :goto_1
    iget-object v2, p0, Landroidx/media2/session/d$a$a;->b:Landroid/os/IBinder;

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    invoke-static {}, Landroidx/media2/session/d$a;->a()Landroidx/media2/session/d;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 114
    invoke-static {}, Landroidx/media2/session/d$a;->a()Landroidx/media2/session/d;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/media2/session/d;->a(Landroidx/media2/session/b;Landroidx/versionedparcelable/ParcelImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    throw p1
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/media2/session/d$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
