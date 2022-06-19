.class final Landroidx/media/MediaBrowserServiceCompat$f$a;
.super Landroidx/media/MediaBrowserServiceCompat$e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Landroidx/media/MediaBrowserServiceCompat$f;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$f;Landroid/content/Context;)V
    .locals 0

    .line 630
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$f$a;->c:Landroidx/media/MediaBrowserServiceCompat$f;

    .line 631
    invoke-direct {p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$e$a;-><init>(Landroidx/media/MediaBrowserServiceCompat$e;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 637
    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 638
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$f$a;->c:Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$f;->f:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$f$a;->c:Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat$f;->f:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->b:Landroidx/media/MediaBrowserServiceCompat$b;

    iput-object v1, v0, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/media/MediaBrowserServiceCompat$b;

    .line 639
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$f$a;->c:Landroidx/media/MediaBrowserServiceCompat$f;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-direct {v1, p2}, Landroidx/media/MediaBrowserServiceCompat$j;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    .line 1575
    new-instance p2, Landroidx/media/MediaBrowserServiceCompat$f$1;

    invoke-direct {p2, v0, p1, v1, p3}, Landroidx/media/MediaBrowserServiceCompat$f$1;-><init>(Landroidx/media/MediaBrowserServiceCompat$f;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$j;Landroid/os/Bundle;)V

    .line 1603
    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$f;->f:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v0, Landroidx/media/MediaBrowserServiceCompat$f;->f:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->b:Landroidx/media/MediaBrowserServiceCompat$b;

    iput-object v2, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/media/MediaBrowserServiceCompat$b;

    .line 1604
    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$f;->f:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/media/MediaBrowserServiceCompat;->a(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$i;Landroid/os/Bundle;)V

    .line 1605
    iget-object p1, v0, Landroidx/media/MediaBrowserServiceCompat$f;->f:Landroidx/media/MediaBrowserServiceCompat;

    const/4 p2, 0x0

    iput-object p2, p1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/media/MediaBrowserServiceCompat$b;

    .line 641
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$f$a;->c:Landroidx/media/MediaBrowserServiceCompat$f;

    iget-object p1, p1, Landroidx/media/MediaBrowserServiceCompat$f;->f:Landroidx/media/MediaBrowserServiceCompat;

    iput-object p2, p1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/media/MediaBrowserServiceCompat$b;

    return-void
.end method
