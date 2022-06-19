.class final Landroid/support/v4/media/MediaBrowserCompat$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompat$e;
.implements Landroid/support/v4/media/MediaBrowserCompat$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$i$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/content/ComponentName;

.field final c:Landroid/support/v4/media/MediaBrowserCompat$b;

.field final d:Landroid/os/Bundle;

.field final e:Landroid/support/v4/media/MediaBrowserCompat$a;

.field f:I

.field g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

.field h:Landroid/support/v4/media/MediaBrowserCompat$l;

.field i:Landroid/os/Messenger;

.field private final j:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Ljava/lang/String;",
            "Landroid/support/v4/media/MediaBrowserCompat$m;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private m:Landroid/os/Bundle;

.field private n:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$b;Landroid/os/Bundle;)V
    .locals 1

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$j;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    .line 1013
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->j:Landroidx/b/a;

    const/4 v0, 0x1

    .line 1015
    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 1035
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->a:Landroid/content/Context;

    .line 1036
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    .line 1037
    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1038
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->d:Landroid/os/Bundle;

    return-void

    .line 1033
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "connection callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1030
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "service component must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1027
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 1483
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "UNKNOWN/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CONNECT_STATE_SUSPENDED"

    return-object p0

    :cond_1
    const-string p0, "CONNECT_STATE_CONNECTED"

    return-object p0

    :cond_2
    const-string p0, "CONNECT_STATE_CONNECTING"

    return-object p0

    :cond_3
    const-string p0, "CONNECT_STATE_DISCONNECTED"

    return-object p0

    :cond_4
    const-string p0, "CONNECT_STATE_DISCONNECTING"

    return-object p0
.end method

.method private a(Landroid/os/Messenger;Ljava/lang/String;)Z
    .locals 2

    .line 1492
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1494
    :cond_1
    :goto_0
    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 1495
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with mCallbacksMessenger="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " this="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 1145
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x1

    .line 1148
    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    const/4 v0, 0x0

    .line 1149
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    .line 1150
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->h:Landroid/support/v4/media/MediaBrowserCompat$l;

    .line 1151
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    .line 1152
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$a;->a(Landroid/os/Messenger;)V

    .line 1153
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->k:Ljava/lang/String;

    .line 1154
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method public final a(Landroid/os/Messenger;)V
    .locals 2

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectFailed for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBrowserCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onConnectFailed"

    .line 1399
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1403
    :cond_0
    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1404
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onConnect from service while mState="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "... ignoring"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1410
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$i;->a()V

    .line 1413
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat$b;->c()V

    return-void
.end method

.method public final a(Landroid/os/Messenger;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "onConnect"

    .line 1353
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1357
    :cond_0
    iget p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1358
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onConnect from service while mState="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "... ignoring"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaBrowserCompat"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1362
    :cond_1
    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->k:Ljava/lang/String;

    .line 1363
    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1364
    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->m:Landroid/os/Bundle;

    const/4 p1, 0x3

    .line 1365
    iput p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 1367
    sget-boolean p2, Landroid/support/v4/media/MediaBrowserCompat;->a:Z

    if-eqz p2, :cond_2

    .line 1369
    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserCompat$i;->b()V

    .line 1371
    :cond_2
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {p2}, Landroid/support/v4/media/MediaBrowserCompat$b;->a()V

    .line 1377
    :try_start_0
    iget-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->j:Landroidx/b/a;

    invoke-virtual {p2}, Landroidx/b/a;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1378
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 1379
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/media/MediaBrowserCompat$m;

    .line 4082
    iget-object v0, p3, Landroid/support/v4/media/MediaBrowserCompat$m;->a:Ljava/util/List;

    .line 5078
    iget-object p3, p3, Landroid/support/v4/media/MediaBrowserCompat$m;->b:Ljava/util/List;

    const/4 v1, 0x0

    .line 1382
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1383
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->h:Landroid/support/v4/media/MediaBrowserCompat$l;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaBrowserCompat$n;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$n;->b:Landroid/os/IBinder;

    .line 1384
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    .line 5199
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "data_media_item_id"

    .line 5200
    invoke-virtual {v6, v7, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "data_callback_token"

    .line 5201
    invoke-static {v6, v7, v3}, Landroidx/core/app/d;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v3, "data_options"

    .line 5202
    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5203
    invoke-virtual {v2, p1, v6, v5}, Landroid/support/v4/media/MediaBrowserCompat$l;->a(ILandroid/os/Bundle;Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return-void
.end method

.method public final a(Landroid/os/Messenger;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Messenger;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const-string v0, "onLoadChildren"

    .line 1422
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(Landroid/os/Messenger;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1426
    :cond_0
    sget-boolean p1, Landroid/support/v4/media/MediaBrowserCompat;->a:Z

    if-eqz p1, :cond_1

    .line 1427
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onLoadChildren for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    :cond_1
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->j:Landroidx/b/a;

    invoke-virtual {p1, p2}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$m;

    if-nez p1, :cond_2

    .line 1433
    sget-boolean p1, Landroid/support/v4/media/MediaBrowserCompat;->a:Z

    return-void

    .line 1440
    :cond_2
    invoke-virtual {p1, p4}, Landroid/support/v4/media/MediaBrowserCompat$m;->a(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$n;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    if-nez p4, :cond_3

    if-eqz p3, :cond_4

    .line 1446
    iput-object p5, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->n:Landroid/os/Bundle;

    .line 1448
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->n:Landroid/os/Bundle;

    return-void

    :cond_3
    if-eqz p3, :cond_4

    .line 1454
    iput-object p5, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->n:Landroid/os/Bundle;

    .line 1456
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->n:Landroid/os/Bundle;

    :cond_4
    return-void
.end method

.method final b()V
    .locals 2

    .line 1509
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mServiceComponent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mCallback="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->c:Landroid/support/v4/media/MediaBrowserCompat$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mRootHints="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mServiceConnection="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->g:Landroid/support/v4/media/MediaBrowserCompat$i$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mServiceBinderWrapper="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->h:Landroid/support/v4/media/MediaBrowserCompat$l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mCallbacksMessenger="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->i:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mRootId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mMediaSessionToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1044
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1045
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect() called while neigther disconnecting nor disconnected (state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 1046
    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserCompat$i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 1049
    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 1050
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$i$1;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaBrowserCompat$i$1;-><init>(Landroid/support/v4/media/MediaBrowserCompat$i;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x0

    .line 1105
    iput v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    .line 1106
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->e:Landroid/support/v4/media/MediaBrowserCompat$a;

    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$i$2;

    invoke-direct {v1, p0}, Landroid/support/v4/media/MediaBrowserCompat$i$2;-><init>(Landroid/support/v4/media/MediaBrowserCompat$i;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 3

    .line 3159
    iget v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0

    .line 1196
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSessionToken() called while not connected(state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v4/media/MediaBrowserCompat$i;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
