.class final Landroidx/media2/session/o;
.super Landroid/support/v4/media/session/MediaSessionCompat$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/o$a;,
        Landroidx/media2/session/o$c;,
        Landroidx/media2/session/o$b;,
        Landroidx/media2/session/o$d;
    }
.end annotation


# static fields
.field static final a:Z

.field static final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/session/SessionCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final g:Landroidx/media2/session/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/session/a<",
            "Landroidx/media/b$b;",
            ">;"
        }
    .end annotation
.end field

.field final h:Landroidx/media2/session/MediaSession$c;

.field final i:Landroidx/media/b;

.field final j:Landroid/content/Context;

.field final k:Landroidx/media2/session/MediaSession$a;

.field final l:Landroidx/media2/session/o$a;

.field volatile m:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "MediaSessionLegacyStub"

    const/4 v1, 0x3

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/session/o;->a:Z

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/media2/session/o;->f:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroidx/media2/session/SessionCommandGroup$a;

    invoke-direct {v0}, Landroidx/media2/session/SessionCommandGroup$a;-><init>()V

    const/4 v1, 0x2

    .line 79
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$a;->b(I)Landroidx/media2/session/SessionCommandGroup$a;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup$a;->e(I)Landroidx/media2/session/SessionCommandGroup$a;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommandGroup$a;->a()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroidx/media2/session/SessionCommandGroup;->a()Ljava/util/Set;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/SessionCommand;

    .line 84
    sget-object v2, Landroidx/media2/session/o;->f:Landroid/util/SparseArray;

    .line 20641
    iget v3, v1, Landroidx/media2/session/SessionCommand;->f:I

    .line 84
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Landroidx/media2/session/MediaSession$c;Landroid/os/Handler;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$a;-><init>()V

    .line 100
    iput-object p1, p0, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    .line 101
    invoke-interface {p1}, Landroidx/media2/session/MediaSession$c;->F()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/o;->j:Landroid/content/Context;

    .line 102
    invoke-static {v0}, Landroidx/media/b;->a(Landroid/content/Context;)Landroidx/media/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/o;->i:Landroidx/media/b;

    .line 103
    new-instance v0, Landroidx/media2/session/o$c;

    invoke-direct {v0, p0}, Landroidx/media2/session/o$c;-><init>(Landroidx/media2/session/o;)V

    iput-object v0, p0, Landroidx/media2/session/o;->k:Landroidx/media2/session/MediaSession$a;

    .line 104
    new-instance v0, Landroidx/media2/session/o$a;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Landroidx/media2/session/o$a;-><init>(Landroidx/media2/session/o;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media2/session/o;->l:Landroidx/media2/session/o$a;

    .line 105
    new-instance p2, Landroidx/media2/session/a;

    invoke-direct {p2, p1}, Landroidx/media2/session/a;-><init>(Landroidx/media2/session/MediaSession$c;)V

    iput-object p2, p0, Landroidx/media2/session/o;->g:Landroidx/media2/session/a;

    const-wide/32 p1, 0x493e0

    .line 106
    iput-wide p1, p0, Landroidx/media2/session/o;->m:J

    return-void
.end method

.method private a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V
    .locals 8

    .line 506
    iget-object v0, p0, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    .line 510
    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->E()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->b()Landroidx/media/b$b;

    move-result-object v3

    if-nez v3, :cond_1

    .line 512
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "RemoteUserInfo is null, ignoring command="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", commandCode="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->G()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Landroidx/media2/session/o$13;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media2/session/o$13;-><init>(Landroidx/media2/session/o;Landroidx/media/b$b;Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 129
    new-instance v0, Landroidx/media2/session/o$12;

    invoke-direct {v0, p0}, Landroidx/media2/session/o$12;-><init>(Landroidx/media2/session/o;)V

    const/4 v1, 0x0

    const/16 v2, 0x2712

    .line 2496
    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final a(F)V
    .locals 2

    .line 299
    new-instance v0, Landroidx/media2/session/o$3;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/o$3;-><init>(Landroidx/media2/session/o;F)V

    const/4 p1, 0x0

    const/16 v1, 0x2714

    .line 11496
    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 389
    new-instance v0, Landroidx/media2/session/o$8;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/o$8;-><init>(Landroidx/media2/session/o;I)V

    const/4 p1, 0x0

    const/16 v1, 0x271b

    .line 16496
    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 311
    new-instance v0, Landroidx/media2/session/o$4;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/o$4;-><init>(Landroidx/media2/session/o;J)V

    const/4 p1, 0x0

    const/16 p2, 0x2717

    .line 12496
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 163
    new-instance v0, Landroidx/media2/session/o$14;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/o$14;-><init>(Landroidx/media2/session/o;Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const p2, 0x9c4b

    .line 3496
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final a(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1

    const v0, 0x7fffffff

    .line 415
    invoke-virtual {p0, p1, v0}, Landroidx/media2/session/o;->a(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-void
.end method

.method public final a(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 423
    :cond_0
    new-instance v0, Landroidx/media2/session/o$10;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/o$10;-><init>(Landroidx/media2/session/o;Landroid/support/v4/media/MediaDescriptionCompat;I)V

    const/4 p1, 0x0

    const/16 p2, 0x271d

    .line 18496
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final a(Landroid/support/v4/media/RatingCompat;)V
    .locals 0

    .line 353
    invoke-virtual {p0, p1}, Landroidx/media2/session/o;->b(Landroid/support/v4/media/RatingCompat;)V

    return-void
.end method

.method final a(Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 559
    iget-object p3, p0, Landroidx/media2/session/o;->g:Landroidx/media2/session/a;

    invoke-virtual {p3, p1, p2}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommand;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 562
    :cond_0
    sget-object p3, Landroidx/media2/session/o;->f:Landroid/util/SparseArray;

    .line 19641
    iget p2, p2, Landroidx/media2/session/SessionCommand;->f:I

    .line 562
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/session/SessionCommand;

    goto :goto_0

    .line 564
    :cond_1
    iget-object p2, p0, Landroidx/media2/session/o;->g:Landroidx/media2/session/a;

    invoke-virtual {p2, p1, p3}, Landroidx/media2/session/a;->a(Landroidx/media2/session/MediaSession$b;I)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 567
    :cond_2
    sget-object p2, Landroidx/media2/session/o;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/session/SessionCommand;

    :goto_0
    if-eqz p2, :cond_3

    .line 570
    iget-object p2, p0, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object p2, p0, Landroidx/media2/session/o;->h:Landroidx/media2/session/MediaSession$c;

    .line 571
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    .line 582
    :cond_3
    :try_start_0
    invoke-interface {p4, p1}, Landroidx/media2/session/o$d;->a(Landroidx/media2/session/MediaSession$b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 589
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Exception in "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "MediaSessionLegacyStub"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 141
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "androidx"

    .line 142
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "media2-session"

    .line 143
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "prepareFromMediaId"

    .line 144
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 147
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/o;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v0, Landroidx/media2/session/SessionCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media2/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 115
    new-instance p1, Landroidx/media2/session/o$1;

    invoke-direct {p1, p0, v0, p2, p3}, Landroidx/media2/session/o$1;-><init>(Landroidx/media2/session/o;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    const/4 p2, 0x0

    .line 1501
    invoke-direct {p0, v0, p2, p1}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 178
    new-instance v0, Landroidx/media2/session/o$15;

    invoke-direct {v0, p0}, Landroidx/media2/session/o$15;-><init>(Landroidx/media2/session/o;)V

    const/4 v1, 0x0

    const/16 v2, 0x2710

    .line 4496
    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 402
    new-instance v0, Landroidx/media2/session/o$9;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/o$9;-><init>(Landroidx/media2/session/o;I)V

    const/4 p1, 0x0

    const/16 v1, 0x271a

    .line 17496
    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final b(J)V
    .locals 1

    .line 261
    new-instance v0, Landroidx/media2/session/o$19;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/o$19;-><init>(Landroidx/media2/session/o;J)V

    const/4 p1, 0x0

    const/16 p2, 0x2713

    .line 8496
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final b(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 212
    new-instance v0, Landroidx/media2/session/o$16;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/session/o$16;-><init>(Landroidx/media2/session/o;Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const p2, 0x9c4b

    .line 5496
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final b(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 446
    :cond_0
    new-instance v0, Landroidx/media2/session/o$11;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/o$11;-><init>(Landroidx/media2/session/o;Landroid/support/v4/media/MediaDescriptionCompat;)V

    const/4 p1, 0x0

    const/16 v1, 0x271e

    .line 19496
    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final b(Landroid/support/v4/media/RatingCompat;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 362
    :cond_0
    new-instance v0, Landroidx/media2/session/o$7;

    invoke-direct {v0, p0, p1}, Landroidx/media2/session/o$7;-><init>(Landroidx/media2/session/o;Landroid/support/v4/media/RatingCompat;)V

    const/4 p1, 0x0

    const v1, 0x9c4a

    .line 15496
    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 152
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "androidx"

    .line 153
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "media2-session"

    .line 154
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "prepareFromSearch"

    .line 155
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "query"

    .line 156
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 158
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/o;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 227
    new-instance v0, Landroidx/media2/session/o$17;

    invoke-direct {v0, p0}, Landroidx/media2/session/o$17;-><init>(Landroidx/media2/session/o;)V

    const/4 v1, 0x0

    const/16 v2, 0x2711

    .line 6496
    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 190
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "androidx"

    .line 191
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "media2-session"

    .line 192
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "playFromMediaId"

    .line 193
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    .line 194
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 196
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/o;->b(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 273
    new-instance v0, Landroidx/media2/session/o$20;

    invoke-direct {v0, p0}, Landroidx/media2/session/o$20;-><init>(Landroidx/media2/session/o;)V

    const/4 v1, 0x0

    const/16 v2, 0x2719

    .line 9496
    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 201
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "androidx"

    .line 202
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "media2-session"

    .line 203
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "playFromSearch"

    .line 204
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "query"

    .line 205
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 207
    invoke-virtual {p0, p1, p2}, Landroidx/media2/session/o;->b(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 286
    new-instance v0, Landroidx/media2/session/o$2;

    invoke-direct {v0, p0}, Landroidx/media2/session/o$2;-><init>(Landroidx/media2/session/o;)V

    const/4 v1, 0x0

    const/16 v2, 0x2718

    .line 10496
    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 330
    new-instance v0, Landroidx/media2/session/o$5;

    invoke-direct {v0, p0}, Landroidx/media2/session/o$5;-><init>(Landroidx/media2/session/o;)V

    const/4 v1, 0x0

    const v2, 0x9c40

    .line 13496
    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final g()V
    .locals 3

    .line 342
    new-instance v0, Landroidx/media2/session/o$6;

    invoke-direct {v0, p0}, Landroidx/media2/session/o$6;-><init>(Landroidx/media2/session/o;)V

    const/4 v1, 0x0

    const v2, 0x9c41

    .line 14496
    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method

.method public final h()V
    .locals 3

    .line 242
    new-instance v0, Landroidx/media2/session/o$18;

    invoke-direct {v0, p0}, Landroidx/media2/session/o$18;-><init>(Landroidx/media2/session/o;)V

    const/4 v1, 0x0

    const/16 v2, 0x2711

    .line 7496
    invoke-direct {p0, v1, v2, v0}, Landroidx/media2/session/o;->a(Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/o$d;)V

    return-void
.end method
