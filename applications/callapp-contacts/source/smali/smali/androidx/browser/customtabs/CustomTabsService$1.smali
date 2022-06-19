.class final Landroidx/browser/customtabs/CustomTabsService$1;
.super Landroid/support/a/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/browser/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/CustomTabsService;)V
    .locals 0

    .line 168
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    invoke-direct {p0}, Landroid/support/a/b$a;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.support.customtabs.extra.SESSION_ID"

    .line 266
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 267
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-object v1
.end method

.method private synthetic a(Landroidx/browser/customtabs/g;)V
    .locals 1

    .line 191
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {v0, p1}, Landroidx/browser/customtabs/CustomTabsService;->a(Landroidx/browser/customtabs/g;)Z

    return-void
.end method

.method private a(Landroid/support/a/a;Landroid/app/PendingIntent;)Z
    .locals 3

    .line 188
    new-instance v0, Landroidx/browser/customtabs/g;

    invoke-direct {v0, p1, p2}, Landroidx/browser/customtabs/g;-><init>(Landroid/support/a/a;Landroid/app/PendingIntent;)V

    const/4 p2, 0x0

    .line 191
    :try_start_0
    new-instance v1, Landroidx/browser/customtabs/-$$Lambda$CustomTabsService$1$izgZIslYP02xXHWNq14Gz5pxyaI;

    invoke-direct {v1, p0, v0}, Landroidx/browser/customtabs/-$$Lambda$CustomTabsService$1$izgZIslYP02xXHWNq14Gz5pxyaI;-><init>(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/customtabs/g;)V

    .line 192
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsService;->a:Landroidx/b/g;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :try_start_1
    invoke-interface {p1}, Landroid/support/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 194
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsService;->a:Landroidx/b/g;

    invoke-interface {p1}, Landroid/support/a/a;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsService;->b()Z

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    .line 195
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return p2
.end method

.method public static synthetic lambda$izgZIslYP02xXHWNq14Gz5pxyaI(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/customtabs/g;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/browser/customtabs/CustomTabsService$1;->a(Landroidx/browser/customtabs/g;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/a/a;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    .line 241
    iget-object p2, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v0, Landroidx/browser/customtabs/g;

    .line 242
    invoke-static {p3}, Landroidx/browser/customtabs/CustomTabsService$1;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Landroidx/browser/customtabs/g;-><init>(Landroid/support/a/a;Landroid/app/PendingIntent;)V

    .line 241
    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsService;->g()I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 213
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsService;->d()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final a(J)Z
    .locals 0

    .line 172
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsService;->a()Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/support/a/a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsService$1;->a(Landroid/support/a/a;Landroid/app/PendingIntent;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/support/a/a;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 0

    .line 250
    iget-object p2, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance p3, Landroidx/browser/customtabs/g;

    .line 251
    invoke-static {p4}, Landroidx/browser/customtabs/CustomTabsService$1;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Landroidx/browser/customtabs/g;-><init>(Landroid/support/a/a;Landroid/app/PendingIntent;)V

    .line 250
    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsService;->h()Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/support/a/a;Landroid/net/Uri;)Z
    .locals 2

    .line 226
    iget-object p2, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v0, Landroidx/browser/customtabs/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/browser/customtabs/g;-><init>(Landroid/support/a/a;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsService;->f()Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/support/a/a;Landroid/net/Uri;ILandroid/os/Bundle;)Z
    .locals 0

    .line 258
    iget-object p2, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance p3, Landroidx/browser/customtabs/g;

    .line 259
    invoke-static {p4}, Landroidx/browser/customtabs/CustomTabsService$1;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Landroidx/browser/customtabs/g;-><init>(Landroid/support/a/a;Landroid/app/PendingIntent;)V

    .line 258
    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsService;->i()Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/support/a/a;Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 1

    .line 233
    iget-object p2, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v0, Landroidx/browser/customtabs/g;

    .line 234
    invoke-static {p3}, Landroidx/browser/customtabs/CustomTabsService$1;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Landroidx/browser/customtabs/g;-><init>(Landroid/support/a/a;Landroid/app/PendingIntent;)V

    .line 233
    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsService;->f()Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/support/a/a;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/a/a;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 205
    iget-object p2, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance p4, Landroidx/browser/customtabs/g;

    .line 206
    invoke-static {p3}, Landroidx/browser/customtabs/CustomTabsService$1;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-direct {p4, p1, p3}, Landroidx/browser/customtabs/g;-><init>(Landroid/support/a/a;Landroid/app/PendingIntent;)V

    .line 205
    invoke-virtual {p2}, Landroidx/browser/customtabs/CustomTabsService;->c()Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/support/a/a;Landroid/os/Bundle;)Z
    .locals 0

    .line 183
    invoke-static {p2}, Landroidx/browser/customtabs/CustomTabsService$1;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService$1;->a(Landroid/support/a/a;Landroid/app/PendingIntent;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/support/a/a;Landroid/os/Bundle;)Z
    .locals 2

    .line 219
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->a:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/g;

    .line 220
    invoke-static {p2}, Landroidx/browser/customtabs/CustomTabsService$1;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroidx/browser/customtabs/g;-><init>(Landroid/support/a/a;Landroid/app/PendingIntent;)V

    .line 219
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsService;->e()Z

    move-result p1

    return p1
.end method
