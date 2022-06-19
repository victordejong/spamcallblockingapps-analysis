.class public final Landroidx/media2/session/SessionToken;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/versionedparcelable/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/session/SessionToken$SessionTokenImpl;,
        Landroidx/media2/session/SessionToken$a;
    }
.end annotation


# instance fields
.field a:Landroidx/media2/session/SessionToken$SessionTokenImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context shouldn\'t be null"

    .line 121
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "serviceComponent shouldn\'t be null"

    .line 124
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 127
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media2/session/SessionToken;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    const-string v1, "androidx.media2.session.MediaLibraryService"

    .line 130
    invoke-static {p1, v1, p2}, Landroidx/media2/session/SessionToken;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v1

    const/16 v2, 0x65

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const-string v1, "androidx.media2.session.MediaSessionService"

    .line 133
    invoke-static {p1, v1, p2}, Landroidx/media2/session/SessionToken;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "android.media.browse.MediaBrowserService"

    .line 136
    invoke-static {p1, v1, p2}, Landroidx/media2/session/SessionToken;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x65

    :goto_0
    if-eq p1, v2, :cond_2

    .line 145
    new-instance v1, Landroidx/media2/session/SessionTokenImplBase;

    invoke-direct {v1, p2, v0, p1}, Landroidx/media2/session/SessionTokenImplBase;-><init>(Landroid/content/ComponentName;II)V

    iput-object v1, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    return-void

    .line 147
    :cond_2
    new-instance p1, Landroidx/media2/session/SessionTokenImplLegacy;

    invoke-direct {p1, p2, v0}, Landroidx/media2/session/SessionTokenImplLegacy;-><init>(Landroid/content/ComponentName;I)V

    iput-object p1, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    return-void

    .line 140
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t implement none of MediaSessionService, MediaLibraryService, MediaBrowserService nor MediaBrowserServiceCompat. Use service\'s full name"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Landroidx/media2/session/SessionToken$SessionTokenImpl;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    return-void
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 382
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 384
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot find package "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken$a;)V
    .locals 13

    const-string v0, "context shouldn\'t be null"

    .line 263
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "compatToken shouldn\'t be null"

    .line 266
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener shouldn\'t be null"

    .line 269
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/c;

    move-result-object v0

    .line 274
    instance-of v1, v0, Landroidx/media2/session/SessionToken;

    if-eqz v1, :cond_0

    .line 275
    check-cast v0, Landroidx/media2/session/SessionToken;

    invoke-interface {p2, p1, v0}, Landroidx/media2/session/SessionToken$a;->onSessionTokenCreated(Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V

    return-void

    .line 1390
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 1654
    iget-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat;->a:Landroid/support/v4/media/session/MediaControllerCompat$b;

    invoke-interface {v1}, Landroid/support/v4/media/session/MediaControllerCompat$b;->l()Ljava/lang/String;

    move-result-object v9

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, v9}, Landroidx/media2/session/SessionToken;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result p0

    .line 284
    new-instance v10, Landroid/os/HandlerThread;

    const-string v1, "SessionToken"

    invoke-direct {v10, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 286
    new-instance v11, Landroidx/media2/session/SessionToken$1;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, v11

    move-object v3, p2

    move-object v4, v0

    move-object v5, p1

    move-object v6, v9

    move v7, p0

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Landroidx/media2/session/SessionToken$1;-><init>(Landroid/os/Looper;Landroidx/media2/session/SessionToken$a;Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/HandlerThread;)V

    .line 310
    new-instance v12, Landroidx/media2/session/SessionToken$2;

    move-object v1, v12

    move-object v2, p2

    move-object v3, v11

    invoke-direct/range {v1 .. v8}, Landroidx/media2/session/SessionToken$2;-><init>(Landroidx/media2/session/SessionToken$a;Landroid/os/Handler;Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/HandlerThread;)V

    .line 339
    monitor-enter p2

    .line 340
    :try_start_0
    invoke-virtual {v0, v12, v11}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/support/v4/media/session/MediaControllerCompat$a;Landroid/os/Handler;)V

    const/16 p0, 0x3e8

    .line 341
    invoke-virtual {v11, p0, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 342
    invoke-virtual {v11, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 343
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static a(Landroid/os/HandlerThread;)V
    .locals 2

    .line 348
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 3

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x80

    .line 363
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 366
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 367
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    .line 368
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_0

    .line 371
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 372
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 221
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->g()I

    move-result v0

    return v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 2

    .line 230
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->h()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    invoke-static {v0}, Landroidx/media2/session/s;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v1

    .line 232
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 242
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->a()Z

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-interface {v0}, Landroidx/media2/session/SessionToken$SessionTokenImpl;->i()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 169
    instance-of v0, p1, Landroidx/media2/session/SessionToken;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 172
    :cond_0
    check-cast p1, Landroidx/media2/session/SessionToken;

    .line 173
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    iget-object p1, p1, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 164
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/media2/session/SessionToken;->a:Landroidx/media2/session/SessionToken$SessionTokenImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
