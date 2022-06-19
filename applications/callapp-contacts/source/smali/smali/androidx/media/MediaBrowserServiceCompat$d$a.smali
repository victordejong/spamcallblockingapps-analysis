.class Landroidx/media/MediaBrowserServiceCompat$d$a;
.super Landroid/service/media/MediaBrowserService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/MediaBrowserServiceCompat$d;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$d;Landroid/content/Context;)V
    .locals 0

    .line 494
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$d$a;->a:Landroidx/media/MediaBrowserServiceCompat$d;

    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 495
    invoke-virtual {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$d$a;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 3

    .line 502
    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 503
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$d$a;->a:Landroidx/media/MediaBrowserServiceCompat$d;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 505
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 504
    :goto_0
    invoke-virtual {v0, p1, p2, v2}, Landroidx/media/MediaBrowserServiceCompat$d;->a(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$a;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 506
    :cond_1
    new-instance p2, Landroid/service/media/MediaBrowserService$BrowserRoot;

    .line 2865
    iget-object p3, p1, Landroidx/media/MediaBrowserServiceCompat$a;->a:Ljava/lang/String;

    .line 3865
    iget-object p1, p1, Landroidx/media/MediaBrowserServiceCompat$a;->b:Landroid/os/Bundle;

    .line 507
    invoke-direct {p2, p3, p1}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$d$a;->a:Landroidx/media/MediaBrowserServiceCompat$d;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-direct {v1, p2}, Landroidx/media/MediaBrowserServiceCompat$j;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    .line 4401
    new-instance p2, Landroidx/media/MediaBrowserServiceCompat$d$2;

    invoke-direct {p2, v0, p1, v1}, Landroidx/media/MediaBrowserServiceCompat$d$2;-><init>(Landroidx/media/MediaBrowserServiceCompat$d;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$j;)V

    .line 4422
    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$d;->d:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v0, Landroidx/media/MediaBrowserServiceCompat$d;->d:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->b:Landroidx/media/MediaBrowserServiceCompat$b;

    iput-object v2, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/media/MediaBrowserServiceCompat$b;

    .line 4423
    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$d;->d:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, p2}, Landroidx/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$i;)V

    .line 4424
    iget-object p1, v0, Landroidx/media/MediaBrowserServiceCompat$d;->d:Landroidx/media/MediaBrowserServiceCompat;

    const/4 p2, 0x0

    iput-object p2, p1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/media/MediaBrowserServiceCompat$b;

    return-void
.end method
