.class Landroidx/media2/session/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/MediaController$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/h$b;,
        Landroidx/media2/session/h$a;
    }
.end annotation


# static fields
.field private static final F:Landroidx/media2/session/SessionResult;

.field static final a:Z


# instance fields
.field A:Landroidx/media2/session/SessionCommandGroup;

.field B:Landroidx/media2/common/VideoSize;

.field C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field D:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field volatile E:Landroidx/media2/session/c;

.field private G:Landroidx/media2/session/h$b;

.field final b:Landroidx/media2/session/MediaController;

.field final c:Landroid/content/Context;

.field final d:Ljava/lang/Object;

.field final e:Landroidx/media2/session/SessionToken;

.field final f:Landroid/os/IBinder$DeathRecipient;

.field final g:Landroidx/media2/session/v;

.field final h:Landroidx/media2/session/j;

.field i:Landroidx/media2/session/SessionToken;

.field j:Z

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroidx/media2/common/MediaMetadata;

.field m:I

.field n:I

.field o:I

.field p:J

.field q:J

.field r:F

.field s:Landroidx/media2/common/MediaItem;

.field t:I

.field u:I

.field v:I

.field w:I

.field x:J

.field y:Landroidx/media2/session/MediaController$PlaybackInfo;

.field z:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    new-instance v0, Landroidx/media2/session/SessionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media2/session/SessionResult;-><init>(I)V

    sput-object v0, Landroidx/media2/session/h;->F:Landroidx/media2/session/SessionResult;

    const-string v0, "MC2ImplBase"

    const/4 v1, 0x3

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/h;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionToken;Landroid/os/Bundle;)V
    .locals 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Landroidx/media2/session/h;->t:I

    .line 144
    iput v0, p0, Landroidx/media2/session/h;->u:I

    .line 146
    iput v0, p0, Landroidx/media2/session/h;->v:I

    .line 158
    new-instance v0, Landroidx/media2/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media2/common/VideoSize;-><init>(II)V

    iput-object v0, p0, Landroidx/media2/session/h;->B:Landroidx/media2/common/VideoSize;

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/h;->C:Ljava/util/List;

    .line 162
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/session/h;->D:Landroid/util/SparseArray;

    .line 172
    iput-object p2, p0, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    const-string v0, "context shouldn\'t be null"

    .line 174
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "token shouldn\'t be null"

    .line 177
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    iput-object p1, p0, Landroidx/media2/session/h;->c:Landroid/content/Context;

    .line 180
    new-instance p1, Landroidx/media2/session/v;

    invoke-direct {p1}, Landroidx/media2/session/v;-><init>()V

    iput-object p1, p0, Landroidx/media2/session/h;->g:Landroidx/media2/session/v;

    .line 181
    new-instance v0, Landroidx/media2/session/j;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/j;-><init>(Landroidx/media2/session/h;Landroidx/media2/session/v;)V

    iput-object v0, p0, Landroidx/media2/session/h;->h:Landroidx/media2/session/j;

    .line 182
    iput-object p3, p0, Landroidx/media2/session/h;->e:Landroidx/media2/session/SessionToken;

    .line 183
    new-instance p1, Landroidx/media2/session/h$1;

    invoke-direct {p1, p0}, Landroidx/media2/session/h$1;-><init>(Landroidx/media2/session/h;)V

    iput-object p1, p0, Landroidx/media2/session/h;->f:Landroid/os/IBinder$DeathRecipient;

    .line 191
    invoke-virtual {p3}, Landroidx/media2/session/SessionToken;->b()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Landroidx/media2/session/h;->G:Landroidx/media2/session/h$b;

    .line 194
    invoke-direct {p0, p4}, Landroidx/media2/session/h;->a(Landroid/os/Bundle;)Z

    move-result p1

    goto :goto_0

    .line 196
    :cond_0
    new-instance p1, Landroidx/media2/session/h$b;

    invoke-direct {p1, p0, p4}, Landroidx/media2/session/h$b;-><init>(Landroidx/media2/session/h;Landroid/os/Bundle;)V

    iput-object p1, p0, Landroidx/media2/session/h;->G:Landroidx/media2/session/h$b;

    .line 197
    invoke-direct {p0}, Landroidx/media2/session/h;->q()Z

    move-result p1

    :goto_0
    if-nez p1, :cond_1

    .line 200
    invoke-virtual {p2}, Landroidx/media2/session/MediaController;->close()V

    :cond_1
    return-void
.end method

.method private a(ILandroidx/media2/session/h$a;)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/session/h$a;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 275
    invoke-direct {p0, p1}, Landroidx/media2/session/h;->b(I)Landroidx/media2/session/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 277
    iget-object v0, p0, Landroidx/media2/session/h;->g:Landroidx/media2/session/v;

    sget-object v1, Landroidx/media2/session/h;->F:Landroidx/media2/session/SessionResult;

    .line 278
    invoke-virtual {v0, v1}, Landroidx/media2/session/v;->a(Ljava/lang/Object;)Landroidx/media2/session/v$a;

    move-result-object v0

    .line 2140
    :try_start_0
    iget v1, v0, Landroidx/media2/session/v$a;->f:I

    .line 280
    invoke-interface {p2, p1, v1}, Landroidx/media2/session/h$a;->a(Landroidx/media2/session/c;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MC2ImplBase"

    const-string v1, "Cannot connect to the service or the session is gone"

    .line 282
    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    new-instance p1, Landroidx/media2/session/SessionResult;

    const/16 p2, -0x64

    invoke-direct {p1, p2}, Landroidx/media2/session/SessionResult;-><init>(I)V

    invoke-virtual {v0, p1}, Landroidx/media2/session/v$a;->a(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    const/4 p1, -0x4

    .line 290
    invoke-static {p1}, Landroidx/media2/session/SessionResult;->a(I)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 5

    .line 850
    iget-object v0, p0, Landroidx/media2/session/h;->e:Landroidx/media2/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media2/session/SessionToken;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroidx/media2/session/c$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/c;

    move-result-object v0

    .line 851
    iget-object v1, p0, Landroidx/media2/session/h;->g:Landroidx/media2/session/v;

    invoke-virtual {v1}, Landroidx/media2/session/v;->a()I

    move-result v1

    .line 852
    new-instance v2, Landroidx/media2/session/ConnectionRequest;

    iget-object v3, p0, Landroidx/media2/session/h;->c:Landroid/content/Context;

    .line 853
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-direct {v2, v3, v4, p1}, Landroidx/media2/session/ConnectionRequest;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 855
    :try_start_0
    iget-object p1, p0, Landroidx/media2/session/h;->h:Landroidx/media2/session/j;

    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroidx/media2/session/c;->a(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "MC2ImplBase"

    const-string v1, "Failed to call connection request."

    .line 857
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method private b(I)Landroidx/media2/session/c;
    .locals 3

    .line 865
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->A:Landroidx/media2/session/SessionCommandGroup;

    invoke-virtual {v1, p1}, Landroidx/media2/session/SessionCommandGroup;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MC2ImplBase"

    const-string v2, "Controller isn\'t allowed to call command, commandCode="

    .line 868
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 870
    monitor-exit v0

    return-object p1

    .line 872
    :cond_0
    iget-object p1, p0, Landroidx/media2/session/h;->E:Landroidx/media2/session/c;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 873
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private q()Z
    .locals 5

    .line 818
    new-instance v0, Landroid/content/Intent;

    const-string v1, "androidx.media2.session.MediaSessionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    iget-object v1, p0, Landroidx/media2/session/h;->e:Landroidx/media2/session/SessionToken;

    invoke-virtual {v1}, Landroidx/media2/session/SessionToken;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/session/h;->e:Landroidx/media2/session/SessionToken;

    .line 11201
    iget-object v2, v2, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v2}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->d()Ljava/lang/String;

    move-result-object v2

    .line 819
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    iget-object v1, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 836
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/h;->c:Landroid/content/Context;

    iget-object v3, p0, Landroidx/media2/session/h;->G:Landroidx/media2/session/h$b;

    const/16 v4, 0x1001

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MC2ImplBase"

    .line 839
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bind to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/media2/session/h;->e:Landroidx/media2/session/SessionToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 840
    monitor-exit v1

    return v0

    .line 842
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    sget-boolean v0, Landroidx/media2/session/h;->a:Z

    if-eqz v0, :cond_1

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bind to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/session/h;->e:Landroidx/media2/session/SessionToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " succeeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 842
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 2

    .line 769
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->D:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 771
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(F)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 460
    new-instance v0, Landroidx/media2/session/h$3;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/h$3;-><init>(Landroidx/media2/session/h;F)V

    const/16 p1, 0x2714

    .line 5263
    invoke-direct {p0, p1, v0}, Landroidx/media2/session/h;->a(ILandroidx/media2/session/h$a;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)Lcom/google/common/util/concurrent/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 372
    new-instance v0, Landroidx/media2/session/h$2;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/h$2;-><init>(Landroidx/media2/session/h;J)V

    const/16 p1, 0x2713

    .line 4263
    invoke-direct {p0, p1, v0}, Landroidx/media2/session/h;->a(ILandroidx/media2/session/h$a;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 370
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "position shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 784
    new-instance v0, Landroidx/media2/session/h$10;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/h$10;-><init>(Landroidx/media2/session/h;Landroid/view/Surface;)V

    const/16 p1, 0x2af8

    .line 10263
    invoke-direct {p0, p1, v0}, Landroidx/media2/session/h;->a(ILandroidx/media2/session/h$a;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 742
    new-instance v0, Landroidx/media2/session/h$7;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/h$7;-><init>(Landroidx/media2/session/h;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    const/16 p1, 0x2af9

    .line 8263
    invoke-direct {p0, p1, v0}, Landroidx/media2/session/h;->a(ILandroidx/media2/session/h$a;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method final a(ILandroidx/media2/session/SessionResult;)V
    .locals 2

    .line 1280
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 1281
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->E:Landroidx/media2/session/c;

    .line 1282
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return-void

    .line 1287
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media2/session/h;->h:Landroidx/media2/session/j;

    .line 1288
    invoke-static {p2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object p2

    .line 1287
    invoke-interface {v1, v0, p1, p2}, Landroidx/media2/session/c;->e(Landroidx/media2/session/b;ILandroidx/versionedparcelable/ParcelImpl;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string p1, "MC2ImplBase"

    const-string p2, "Error in sending"

    .line 1290
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 1282
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method final a(Ljava/util/List;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")V"
        }
    .end annotation

    .line 1112
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 1113
    :try_start_0
    iput-object p1, p0, Landroidx/media2/session/h;->C:Ljava/util/List;

    .line 1115
    iget-object v1, p0, Landroidx/media2/session/h;->D:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1116
    iget-object p2, p0, Landroidx/media2/session/h;->D:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1117
    iget-object p2, p0, Landroidx/media2/session/h;->D:Landroid/util/SparseArray;

    const/4 p3, 0x4

    invoke-virtual {p2, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1118
    iget-object p2, p0, Landroidx/media2/session/h;->D:Landroid/util/SparseArray;

    const/4 p3, 0x5

    invoke-virtual {p2, p3, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    iget-object p2, p0, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance p3, Landroidx/media2/session/h$24;

    invoke-direct {p3, p0, p1}, Landroidx/media2/session/h$24;-><init>(Landroidx/media2/session/h;Ljava/util/List;)V

    invoke-virtual {p2, p3}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1119
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a()Z
    .locals 2

    .line 251
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->E:Landroidx/media2/session/c;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Landroidx/media2/session/h$8;

    invoke-direct {v0, p0}, Landroidx/media2/session/h$8;-><init>(Landroidx/media2/session/h;)V

    const/16 v1, 0x2710

    .line 2263
    invoke-direct {p0, v1, v0}, Landroidx/media2/session/h;->a(ILandroidx/media2/session/h$a;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 756
    new-instance v0, Landroidx/media2/session/h$9;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/h$9;-><init>(Landroidx/media2/session/h;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    const/16 p1, 0x2afa

    .line 9263
    invoke-direct {p0, p1, v0}, Landroidx/media2/session/h;->a(ILandroidx/media2/session/h$a;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Landroidx/media2/session/h$19;

    invoke-direct {v0, p0}, Landroidx/media2/session/h$19;-><init>(Landroidx/media2/session/h;)V

    const/16 v1, 0x2711

    .line 3263
    invoke-direct {p0, v1, v0}, Landroidx/media2/session/h;->a(ILandroidx/media2/session/h$a;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 5

    .line 206
    sget-boolean v0, Landroidx/media2/session/h;->a:Z

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "release from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/session/h;->e:Landroidx/media2/session/SessionToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->E:Landroidx/media2/session/c;

    .line 212
    iget-boolean v2, p0, Landroidx/media2/session/h;->j:Z

    if-eqz v2, :cond_1

    .line 214
    monitor-exit v0

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 216
    iput-boolean v2, p0, Landroidx/media2/session/h;->j:Z

    .line 217
    iget-object v2, p0, Landroidx/media2/session/h;->G:Landroidx/media2/session/h$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 218
    iget-object v4, p0, Landroidx/media2/session/h;->c:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 219
    iput-object v3, p0, Landroidx/media2/session/h;->G:Landroidx/media2/session/h$b;

    .line 221
    :cond_2
    iput-object v3, p0, Landroidx/media2/session/h;->E:Landroidx/media2/session/c;

    .line 222
    iget-object v2, p0, Landroidx/media2/session/h;->h:Landroidx/media2/session/j;

    .line 1509
    iget-object v2, v2, Landroidx/media2/session/j;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 225
    iget-object v0, p0, Landroidx/media2/session/h;->g:Landroidx/media2/session/v;

    invoke-virtual {v0}, Landroidx/media2/session/v;->a()I

    move-result v0

    .line 227
    :try_start_1
    invoke-interface {v1}, Landroidx/media2/session/c;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/session/h;->f:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 228
    iget-object v2, p0, Landroidx/media2/session/h;->h:Landroidx/media2/session/j;

    invoke-interface {v1, v2, v0}, Landroidx/media2/session/c;->a(Landroidx/media2/session/b;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    :catch_0
    :cond_3
    iget-object v0, p0, Landroidx/media2/session/h;->g:Landroidx/media2/session/v;

    invoke-virtual {v0}, Landroidx/media2/session/v;->close()V

    .line 234
    iget-object v0, p0, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/h$4;

    invoke-direct {v1, p0}, Landroidx/media2/session/h$4;-><init>(Landroidx/media2/session/h;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    :catchall_0
    move-exception v1

    .line 223
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final d()I
    .locals 2

    .line 412
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_0
    iget v1, p0, Landroidx/media2/session/h;->o:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 414
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()J
    .locals 3

    .line 419
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->s:Landroidx/media2/common/MediaItem;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {v1}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "android.media.metadata.DURATION"

    .line 422
    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaMetadata;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.media.metadata.DURATION"

    .line 423
    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaMetadata;->d(Ljava/lang/String;)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 425
    :cond_1
    monitor-exit v0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()J
    .locals 6

    .line 431
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->E:Landroidx/media2/session/c;

    if-nez v1, :cond_0

    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    .line 433
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/high16 v1, -0x8000000000000000L

    .line 434
    monitor-exit v0

    return-wide v1

    .line 436
    :cond_0
    iget v1, p0, Landroidx/media2/session/h;->o:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroidx/media2/session/h;->w:I

    if-eq v1, v2, :cond_2

    .line 438
    iget-object v1, p0, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    iget-object v1, v1, Landroidx/media2/session/MediaController;->g:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media2/session/h;->b:Landroidx/media2/session/MediaController;

    iget-object v1, v1, Landroidx/media2/session/MediaController;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 439
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media2/session/h;->p:J

    sub-long/2addr v1, v3

    .line 440
    :goto_0
    iget-wide v3, p0, Landroidx/media2/session/h;->q:J

    iget v5, p0, Landroidx/media2/session/h;->r:F

    long-to-float v1, v1

    mul-float v5, v5, v1

    float-to-long v1, v5

    add-long/2addr v3, v1

    const-wide/16 v1, 0x0

    .line 441
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 443
    :cond_2
    iget-wide v1, p0, Landroidx/media2/session/h;->q:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 444
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()F
    .locals 4

    .line 449
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->E:Landroidx/media2/session/c;

    if-nez v1, :cond_0

    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    .line 451
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 452
    monitor-exit v0

    return v1

    .line 454
    :cond_0
    iget v1, p0, Landroidx/media2/session/h;->r:F

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 455
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()J
    .locals 4

    .line 482
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->E:Landroidx/media2/session/c;

    if-nez v1, :cond_0

    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    .line 484
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/high16 v1, -0x8000000000000000L

    .line 485
    monitor-exit v0

    return-wide v1

    .line 487
    :cond_0
    iget-wide v1, p0, Landroidx/media2/session/h;->x:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 488
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()Landroidx/media2/common/MediaItem;
    .locals 2

    .line 633
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 634
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->s:Landroidx/media2/common/MediaItem;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 635
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()I
    .locals 2

    .line 647
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_0
    iget v1, p0, Landroidx/media2/session/h;->u:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 649
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()I
    .locals 2

    .line 654
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_0
    iget v1, p0, Landroidx/media2/session/h;->v:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 656
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 661
    new-instance v0, Landroidx/media2/session/h$5;

    invoke-direct {v0, p0}, Landroidx/media2/session/h$5;-><init>(Landroidx/media2/session/h;)V

    const/16 v1, 0x2718

    .line 6263
    invoke-direct {p0, v1, v0}, Landroidx/media2/session/h;->a(ILandroidx/media2/session/h$a;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/session/SessionResult;",
            ">;"
        }
    .end annotation

    .line 673
    new-instance v0, Landroidx/media2/session/h$6;

    invoke-direct {v0, p0}, Landroidx/media2/session/h$6;-><init>(Landroidx/media2/session/h;)V

    const/16 v1, 0x2719

    .line 7263
    invoke-direct {p0, v1, v0}, Landroidx/media2/session/h;->a(ILandroidx/media2/session/h$a;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    return-object v0
.end method

.method public final n()Landroidx/media2/common/VideoSize;
    .locals 2

    .line 777
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->B:Landroidx/media2/common/VideoSize;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 779
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->C:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 735
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p()Landroidx/media2/session/SessionCommandGroup;
    .locals 4

    .line 795
    iget-object v0, p0, Landroidx/media2/session/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/h;->E:Landroidx/media2/session/c;

    if-nez v1, :cond_0

    const-string v1, "MC2ImplBase"

    const-string v2, "Session isn\'t active"

    .line 797
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 798
    monitor-exit v0

    return-object v1

    .line 800
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/h;->A:Landroidx/media2/session/SessionCommandGroup;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 801
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
