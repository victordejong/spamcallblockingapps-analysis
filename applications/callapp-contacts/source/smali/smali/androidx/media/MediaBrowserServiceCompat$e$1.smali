.class final Landroidx/media/MediaBrowserServiceCompat$e$1;
.super Landroidx/media/MediaBrowserServiceCompat$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media/MediaBrowserServiceCompat$i<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/media/MediaBrowserServiceCompat$j;

.field final synthetic b:Landroidx/media/MediaBrowserServiceCompat$e;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$e;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$j;)V
    .locals 0

    .line 529
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$e$1;->b:Landroidx/media/MediaBrowserServiceCompat$e;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$e$1;->a:Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-direct {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$i;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 543
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$e$1;->a:Landroidx/media/MediaBrowserServiceCompat$j;

    .line 2278
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$j;->a:Landroid/service/media/MediaBrowserService$Result;

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    return-void
.end method

.method final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 529
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-nez p1, :cond_0

    .line 2533
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$e$1;->a:Landroidx/media/MediaBrowserServiceCompat$j;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$j;->a(Ljava/lang/Object;)V

    return-void

    .line 2535
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 2536
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2537
    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$e$1;->a:Landroidx/media/MediaBrowserServiceCompat$j;

    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$j;->a(Ljava/lang/Object;)V

    return-void
.end method
