.class final Landroidx/media/MediaBrowserServiceCompat$d$2;
.super Landroidx/media/MediaBrowserServiceCompat$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media/MediaBrowserServiceCompat$i<",
        "Ljava/util/List<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/MediaBrowserServiceCompat$j;

.field final synthetic b:Landroidx/media/MediaBrowserServiceCompat$d;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$d;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$j;)V
    .locals 0

    .line 402
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$d$2;->b:Landroidx/media/MediaBrowserServiceCompat$d;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$d$2;->a:Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-direct {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$i;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 419
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$d$2;->a:Landroidx/media/MediaBrowserServiceCompat$j;

    .line 2278
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$j;->a:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .line 402
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2408
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 2409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    .line 2410
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2411
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2414
    :cond_1
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$d$2;->a:Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$j;->a(Ljava/lang/Object;)V

    return-void
.end method
