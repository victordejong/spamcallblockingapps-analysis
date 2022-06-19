.class final Landroidx/media2/session/r;
.super Landroidx/media2/session/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/r$a;,
        Landroidx/media2/session/r$b;,
        Landroidx/media2/session/r$c;,
        Landroidx/media2/session/r$d;,
        Landroidx/media2/session/r$e;
    }
.end annotation


# static fields
.field static final a:Z

.field static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/session/SessionCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final c:Landroidx/media2/session/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/session/a<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/Object;

.field final e:Landroidx/media2/session/MediaSession$c;

.field final f:Landroid/content/Context;

.field final g:Landroidx/media/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "MediaSessionStub"

    const/4 v1, 0x3

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/r;->a:Z

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/media2/session/r;->b:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroidx/media2/session/SessionCommandGroup$a;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommandGroup$a;-><init>()V

    const/4 v1, 0x2

    .line 86
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$a;->b(I)Landroidx/media2/session/SessionCommandGroup$a;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$a;->e(I)Landroidx/media2/session/SessionCommandGroup$a;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommandGroup$a;->a()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommandGroup;->a()Ljava/util/Set;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/SessionCommand;

    .line 91
    sget-object v2, Landroidx/media2/session/r;->b:Landroid/util/SparseArray;

    .line 11641
    iget v3, v1, Landroidx/media2/session/SessionCommand;->f:I

    .line 91
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Landroidx/media2/session/MediaSession$c;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Landroidx/media2/session/c$a;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/r;->d:Ljava/lang/Object;

    .line 105
    iput-object p1, p0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    .line 106
    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->F()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/r;->f:Landroid/content/Context;

    .line 107
    invoke-static {v0}, Landroidx/media/b;->a(Landroid/content/Context;)Landroidx/media/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/r;->g:Landroidx/media/b;

    .line 108
    new-instance v0, Landroidx/media2/session/a;

    invoke-direct {v0, p1}, Landroidx/media2/session/a;-><init>(Landroidx/media2/session/MediaSession$c;)V

    iput-object v0, p0, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    return-void
.end method

.method static a(Landroidx/media2/session/MediaSession$b;II)V
    .locals 1

    .line 118
    new-instance v0, Landroidx/media2/session/SessionResult;

    invoke-direct {v0, p2}, Landroidx/media2/session/SessionResult;-><init>(I)V

    invoke-static {p0, p1, v0}, Landroidx/media2/session/r;->a(Landroidx/media2/session/MediaSession$b;ILandroidx/media2/session/SessionResult;)V

    return-void
.end method

.method static a(Landroidx/media2/session/MediaSession$b;ILandroidx/media2/common/SessionPlayer$b;)V
    .locals 1

    .line 2990
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    .line 135
    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/MediaSession$a;->a(ILandroidx/media2/common/SessionPlayer$b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception in "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media2/session/MediaSession$b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaSessionStub"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static a(Landroidx/media2/session/MediaSession$b;ILandroidx/media2/session/LibraryResult;)V
    .locals 1

    .line 3990
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    .line 151
    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/MediaSession$a;->a(ILandroidx/media2/session/LibraryResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception in "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media2/session/MediaSession$b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaSessionStub"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static a(Landroidx/media2/session/MediaSession$b;ILandroidx/media2/session/SessionResult;)V
    .locals 1

    .line 1990
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    .line 125
    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/MediaSession$a;->a(ILandroidx/media2/session/SessionResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception in "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/media2/session/MediaSession$b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaSessionStub"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(Landroidx/media2/session/b;IILandroidx/media2/session/r$b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/b;",
            "II",
            "Landroidx/media2/session/r$b<",
            "*>;)V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    instance-of v0, v0, Landroidx/media2/session/MediaLibraryService$a$b;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    .line 318
    invoke-direct/range {v1 .. v6}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;ILandroidx/media2/session/SessionCommand;ILandroidx/media2/session/r$e;)V

    return-void

    .line 316
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "MediaSession cannot handle MediaLibrarySession command"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    .line 160
    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;ILandroidx/media2/session/SessionCommand;ILandroidx/media2/session/r$e;)V

    return-void
.end method

.method private a(Landroidx/media2/session/b;ILandroidx/media2/session/SessionCommand;ILandroidx/media2/session/r$e;)V
    .locals 10

    .line 173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 175
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    .line 176
    invoke-interface {p1}, Landroidx/media2/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 175
    invoke-virtual {v2, p1}, Landroidx/media2/session/a;->b(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$b;

    move-result-object v5

    .line 177
    iget-object p1, p0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->H()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez v5, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->G()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v2, Landroidx/media2/session/r$1;

    move-object v3, v2

    move-object v4, p0

    move-object v6, p3

    move v7, p2

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Landroidx/media2/session/r$1;-><init>(Landroidx/media2/session/r;Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommand;IILandroidx/media2/session/r$e;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    throw p1
.end method

.method static b(Landroidx/media2/session/MediaSession$b;II)V
    .locals 1

    .line 144
    new-instance v0, Landroidx/media2/session/LibraryResult;

    invoke-direct {v0, p2}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    invoke-static {p0, p1, v0}, Landroidx/media2/session/r;->a(Landroidx/media2/session/MediaSession$b;ILandroidx/media2/session/LibraryResult;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Landroidx/media2/common/MediaItem;
    .locals 3

    .line 406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 409
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object v0, p0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    .line 410
    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onCreateMediaItem(mediaId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") returned null. Ignoring"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSessionStub"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final a(Landroidx/media2/session/b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 452
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 454
    :try_start_0
    iget-object p2, p0, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    invoke-interface {p1}, Landroidx/media2/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8095
    invoke-virtual {p2, p1}, Landroidx/media2/session/a;->b(Ljava/lang/Object;)Landroidx/media2/session/MediaSession$b;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    throw p1
.end method

.method public final a(Landroidx/media2/session/b;IF)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2714

    .line 689
    new-instance v1, Landroidx/media2/session/r$7;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/r$7;-><init>(Landroidx/media2/session/r;F)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final a(Landroidx/media2/session/b;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x271e

    .line 813
    new-instance v1, Landroidx/media2/session/r$14;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/r$14;-><init>(Landroidx/media2/session/r;I)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final a(Landroidx/media2/session/b;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7530

    .line 486
    new-instance v1, Landroidx/media2/session/r$23;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/r$23;-><init>(Landroidx/media2/session/r;II)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final a(Landroidx/media2/session/b;IILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x271d

    .line 790
    new-instance v1, Landroidx/media2/session/r$13;

    invoke-direct {v1, p0, p4, p3}, Landroidx/media2/session/r$13;-><init>(Landroidx/media2/session/r;Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final a(Landroidx/media2/session/b;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2713

    .line 625
    new-instance v1, Landroidx/media2/session/r$4;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/r$4;-><init>(Landroidx/media2/session/r;J)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final a(Landroidx/media2/session/b;ILandroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x9c4b

    .line 754
    new-instance v1, Landroidx/media2/session/r$10;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/r$10;-><init>(Landroidx/media2/session/r;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final a(Landroidx/media2/session/b;ILandroid/view/Surface;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2af8

    .line 943
    new-instance v1, Landroidx/media2/session/r$22;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/r$22;-><init>(Landroidx/media2/session/r;Landroid/view/Surface;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final a(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 432
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 433
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4078
    invoke-static {p3}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object p3

    .line 435
    check-cast p3, Landroidx/media2/session/ConnectionRequest;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5064
    :cond_1
    iget v0, p3, Landroidx/media2/session/ConnectionRequest;->c:I

    .line 6060
    :goto_0
    :try_start_0
    iget v5, p3, Landroidx/media2/session/ConnectionRequest;->a:I

    .line 7056
    iget-object v3, p3, Landroidx/media2/session/ConnectionRequest;->b:Ljava/lang/String;

    .line 7068
    iget-object v8, p3, Landroidx/media2/session/ConnectionRequest;->d:Landroid/os/Bundle;

    .line 7324
    new-instance v4, Landroidx/media/b$b;

    invoke-direct {v4, v3, v0, p2}, Landroidx/media/b$b;-><init>(Ljava/lang/String;II)V

    .line 7326
    new-instance p2, Landroidx/media2/session/MediaSession$b;

    iget-object p3, p0, Landroidx/media2/session/r;->g:Landroidx/media/b;

    .line 7327
    invoke-virtual {p3, v4}, Landroidx/media/b;->a(Landroidx/media/b$b;)Z

    move-result v6

    new-instance v7, Landroidx/media2/session/r$a;

    invoke-direct {v7, p0, p1}, Landroidx/media2/session/r$a;-><init>(Landroidx/media2/session/r;Landroidx/media2/session/b;)V

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Landroidx/media2/session/MediaSession$b;-><init>(Landroidx/media/b$b;IZLandroidx/media2/session/MediaSession$a;Landroid/os/Bundle;)V

    .line 7329
    iget-object p3, p0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p3}, Landroidx/media2/session/MediaSession$c;->G()Ljava/util/concurrent/Executor;

    move-result-object p3

    new-instance v0, Landroidx/media2/session/r$12;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media2/session/r$12;-><init>(Landroidx/media2/session/r;Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/b;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 444
    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;Landroid/os/Bundle;)V
    .locals 6

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 10078
    :cond_0
    invoke-static {p3}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object p3

    .line 640
    move-object v3, p3

    check-cast v3, Landroidx/media2/session/SessionCommand;

    .line 641
    new-instance v5, Landroidx/media2/session/r$5;

    invoke-direct {v5, p0, v3, p4}, Landroidx/media2/session/r$5;-><init>(Landroidx/media2/session/r;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 10166
    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;ILandroidx/media2/session/SessionCommand;ILandroidx/media2/session/r$e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroidx/media2/session/b;ILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2722

    .line 731
    new-instance v1, Landroidx/media2/session/r$9;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/r$9;-><init>(Landroidx/media2/session/r;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final a(Landroidx/media2/session/b;ILjava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xc353

    .line 1040
    new-instance v7, Landroidx/media2/session/r$28;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Landroidx/media2/session/r$28;-><init>(Landroidx/media2/session/r;Ljava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v7}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroidx/media2/session/b;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 11078
    :cond_0
    invoke-static {p4}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object p4

    .line 665
    check-cast p4, Landroidx/media2/common/Rating;

    const v0, 0x9c4a

    .line 666
    new-instance v1, Landroidx/media2/session/r$6;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/r$6;-><init>(Landroidx/media2/session/r;Ljava/lang/String;Landroidx/media2/common/Rating;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroidx/media2/session/b;ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/b;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2716

    .line 704
    new-instance v1, Landroidx/media2/session/r$8;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/r$8;-><init>(Landroidx/media2/session/r;Ljava/util/List;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method final b()Landroidx/media2/session/MediaLibraryService$a$b;
    .locals 2

    .line 994
    iget-object v0, p0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    instance-of v1, v0, Landroidx/media2/session/MediaLibraryService$a$b;

    if-eqz v1, :cond_0

    .line 997
    check-cast v0, Landroidx/media2/session/MediaLibraryService$a$b;

    return-object v0

    .line 995
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Session cannot be casted to library session"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Landroidx/media2/session/b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2710

    .line 523
    new-instance v1, Landroidx/media2/session/r$34;

    invoke-direct {v1, p0}, Landroidx/media2/session/r$34;-><init>(Landroidx/media2/session/r;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final b(Landroidx/media2/session/b;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2717

    .line 866
    new-instance v1, Landroidx/media2/session/r$17;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/r$17;-><init>(Landroidx/media2/session/r;I)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final b(Landroidx/media2/session/b;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7531

    .line 505
    new-instance v1, Landroidx/media2/session/r$33;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/r$33;-><init>(Landroidx/media2/session/r;II)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final b(Landroidx/media2/session/b;IILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x271f

    .line 828
    new-instance v1, Landroidx/media2/session/r$15;

    invoke-direct {v1, p0, p4, p3}, Landroidx/media2/session/r$15;-><init>(Landroidx/media2/session/r;Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final b(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2721

    .line 774
    new-instance v1, Landroidx/media2/session/r$11;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/r$11;-><init>(Landroidx/media2/session/r;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final b(Landroidx/media2/session/b;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1020
    new-instance v0, Landroidx/media2/session/r$27;

    invoke-direct {v0, p0, p3}, Landroidx/media2/session/r$27;-><init>(Landroidx/media2/session/r;Ljava/lang/String;)V

    const p3, 0xc354

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$b;)V

    return-void
.end method

.method public final b(Landroidx/media2/session/b;ILjava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 8

    if-eqz p1, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xc356

    .line 1090
    new-instance v7, Landroidx/media2/session/r$30;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Landroidx/media2/session/r$30;-><init>(Landroidx/media2/session/r;Ljava/lang/String;IILandroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v7}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Landroidx/media2/session/b;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xc355

    .line 1070
    new-instance v1, Landroidx/media2/session/r$29;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/r$29;-><init>(Landroidx/media2/session/r;Ljava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Landroidx/media2/session/b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2711

    .line 537
    new-instance v1, Landroidx/media2/session/r$35;

    invoke-direct {v1, p0}, Landroidx/media2/session/r$35;-><init>(Landroidx/media2/session/r;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final c(Landroidx/media2/session/b;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x271b

    .line 915
    new-instance v1, Landroidx/media2/session/r$20;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/r$20;-><init>(Landroidx/media2/session/r;I)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final c(Landroidx/media2/session/b;III)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2723

    .line 852
    new-instance v1, Landroidx/media2/session/r$16;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/r$16;-><init>(Landroidx/media2/session/r;II)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final c(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2af9

    .line 957
    new-instance v1, Landroidx/media2/session/r$24;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/r$24;-><init>(Landroidx/media2/session/r;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Landroidx/media2/session/b;ILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0xc352

    .line 1143
    new-instance v1, Landroidx/media2/session/r$32;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/r$32;-><init>(Landroidx/media2/session/r;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$b;)V

    return-void
.end method

.method public final c(Landroidx/media2/session/b;ILjava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xc351

    .line 1123
    new-instance v1, Landroidx/media2/session/r$31;

    invoke-direct {v1, p0, p3, p4}, Landroidx/media2/session/r$31;-><init>(Landroidx/media2/session/r;Ljava/lang/String;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Landroidx/media2/session/b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2712

    .line 551
    new-instance v1, Landroidx/media2/session/r$36;

    invoke-direct {v1, p0}, Landroidx/media2/session/r$36;-><init>(Landroidx/media2/session/r;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final d(Landroidx/media2/session/b;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x271a

    .line 929
    new-instance v1, Landroidx/media2/session/r$21;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/r$21;-><init>(Landroidx/media2/session/r;I)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final d(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2afa

    .line 975
    new-instance v1, Landroidx/media2/session/r$25;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/r$25;-><init>(Landroidx/media2/session/r;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Landroidx/media2/session/b;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x9c40

    .line 565
    new-instance v1, Landroidx/media2/session/r$37;

    invoke-direct {v1, p0}, Landroidx/media2/session/r$37;-><init>(Landroidx/media2/session/r;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final e(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 468
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    .line 469
    invoke-interface {p1}, Landroidx/media2/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 468
    invoke-virtual {v2, p1}, Landroidx/media2/session/a;->a(Ljava/lang/Object;)Landroidx/media2/session/v;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 476
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 9078
    :cond_1
    :try_start_1
    invoke-static {p3}, Landroidx/versionedparcelable/a;->a(Landroid/os/Parcelable;)Landroidx/versionedparcelable/c;

    move-result-object p3

    .line 473
    check-cast p3, Landroidx/media2/session/SessionResult;

    .line 474
    invoke-virtual {p1, p2, p3}, Landroidx/media2/session/v;->a(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final f(Landroidx/media2/session/b;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x9c41

    .line 580
    new-instance v1, Landroidx/media2/session/r$38;

    invoke-direct {v1, p0}, Landroidx/media2/session/r$38;-><init>(Landroidx/media2/session/r;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final f(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xc350

    .line 1006
    new-instance v1, Landroidx/media2/session/r$26;

    invoke-direct {v1, p0, p3}, Landroidx/media2/session/r$26;-><init>(Landroidx/media2/session/r;Landroidx/versionedparcelable/ParcelImpl;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Landroidx/media2/session/b;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x9c42

    .line 595
    new-instance v1, Landroidx/media2/session/r$2;

    invoke-direct {v1, p0}, Landroidx/media2/session/r$2;-><init>(Landroidx/media2/session/r;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final h(Landroidx/media2/session/b;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x9c43

    .line 610
    new-instance v1, Landroidx/media2/session/r$3;

    invoke-direct {v1, p0}, Landroidx/media2/session/r$3;-><init>(Landroidx/media2/session/r;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final i(Landroidx/media2/session/b;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2718

    .line 885
    new-instance v1, Landroidx/media2/session/r$18;

    invoke-direct {v1, p0}, Landroidx/media2/session/r$18;-><init>(Landroidx/media2/session/r;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method

.method public final j(Landroidx/media2/session/b;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2719

    .line 900
    new-instance v1, Landroidx/media2/session/r$19;

    invoke-direct {v1, p0}, Landroidx/media2/session/r$19;-><init>(Landroidx/media2/session/r;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/session/r;->a(Landroidx/media2/session/b;IILandroidx/media2/session/r$e;)V

    return-void
.end method
