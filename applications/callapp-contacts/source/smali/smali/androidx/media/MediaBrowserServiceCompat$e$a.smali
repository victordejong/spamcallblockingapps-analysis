.class Landroidx/media/MediaBrowserServiceCompat$e$a;
.super Landroidx/media/MediaBrowserServiceCompat$d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Landroidx/media/MediaBrowserServiceCompat$e;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$e;Landroid/content/Context;)V
    .locals 0

    .line 552
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$e$a;->b:Landroidx/media/MediaBrowserServiceCompat$e;

    .line 553
    invoke-direct {p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$d$a;-><init>(Landroidx/media/MediaBrowserServiceCompat$d;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$e$a;->b:Landroidx/media/MediaBrowserServiceCompat$e;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-direct {v1, p2}, Landroidx/media/MediaBrowserServiceCompat$j;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    .line 1528
    new-instance p2, Landroidx/media/MediaBrowserServiceCompat$e$1;

    invoke-direct {p2, v0, p1, v1}, Landroidx/media/MediaBrowserServiceCompat$e$1;-><init>(Landroidx/media/MediaBrowserServiceCompat$e;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$j;)V

    .line 1546
    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$e;->e:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v0, Landroidx/media/MediaBrowserServiceCompat$e;->e:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroidx/media/MediaBrowserServiceCompat;->b:Landroidx/media/MediaBrowserServiceCompat$b;

    iput-object v2, v1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/media/MediaBrowserServiceCompat$b;

    .line 1547
    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$e;->e:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, p1, p2}, Landroidx/media/MediaBrowserServiceCompat;->b(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$i;)V

    .line 1548
    iget-object p1, v0, Landroidx/media/MediaBrowserServiceCompat$e;->e:Landroidx/media/MediaBrowserServiceCompat;

    const/4 p2, 0x0

    iput-object p2, p1, Landroidx/media/MediaBrowserServiceCompat;->e:Landroidx/media/MediaBrowserServiceCompat$b;

    return-void
.end method
