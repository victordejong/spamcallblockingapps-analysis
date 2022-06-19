.class Landroidx/media2/session/q;
.super Landroidx/media/MediaBrowserServiceCompat;
.source "SourceFile"


# instance fields
.field private final h:Landroidx/media2/session/MediaSession$c;

.field final j:Landroidx/media2/session/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/session/a<",
            "Landroidx/media/b$b;",
            ">;"
        }
    .end annotation
.end field

.field final k:Landroidx/media/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/session/MediaSession$c;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/media/MediaBrowserServiceCompat;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Landroidx/media2/session/q;->a(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p0}, Landroidx/media2/session/q;->onCreate()V

    .line 46
    invoke-virtual {p0, p3}, Landroidx/media2/session/q;->a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 47
    invoke-static {p1}, Landroidx/media/b;->a(Landroid/content/Context;)Landroidx/media/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/q;->k:Landroidx/media/b;

    .line 48
    iput-object p2, p0, Landroidx/media2/session/q;->h:Landroidx/media2/session/MediaSession$c;

    .line 49
    new-instance p1, Landroidx/media2/session/a;

    invoke-direct {p1, p2}, Landroidx/media2/session/a;-><init>(Landroidx/media2/session/MediaSession$c;)V

    iput-object p1, p0, Landroidx/media2/session/q;->j:Landroidx/media2/session/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$a;
    .locals 1

    .line 54
    invoke-virtual {p0}, Landroidx/media2/session/q;->a()Landroidx/media/b$b;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Landroidx/media2/session/q;->a(Landroidx/media/b$b;)Landroidx/media2/session/MediaSession$b;

    move-result-object p2

    .line 66
    iget-object p3, p0, Landroidx/media2/session/q;->h:Landroidx/media2/session/MediaSession$c;

    invoke-interface {p3}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object p3, p0, Landroidx/media2/session/q;->h:Landroidx/media2/session/MediaSession$c;

    .line 67
    invoke-interface {p3}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    .line 66
    invoke-static {}, Landroidx/media2/session/MediaSession$d;->d()Landroidx/media2/session/SessionCommandGroup;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/q;->j:Landroidx/media2/session/a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/session/a;->a(Ljava/lang/Object;Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommandGroup;)V

    .line 73
    sget-object p1, Landroidx/media2/session/s;->a:Landroidx/media/MediaBrowserServiceCompat$a;

    return-object p1
.end method

.method a(Landroidx/media/b$b;)Landroidx/media2/session/MediaSession$b;
    .locals 7

    .line 82
    new-instance v6, Landroidx/media2/session/MediaSession$b;

    iget-object v0, p0, Landroidx/media2/session/q;->k:Landroidx/media/b;

    .line 83
    invoke-virtual {v0, p1}, Landroidx/media/b;->a(Landroidx/media/b$b;)Z

    move-result v3

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaSession$b;-><init>(Landroidx/media/b$b;IZLandroidx/media2/session/MediaSession$a;Landroid/os/Bundle;)V

    return-object v6
.end method

.method public a(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media/MediaBrowserServiceCompat$i<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 78
    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$i;->b(Ljava/lang/Object;)V

    return-void
.end method
