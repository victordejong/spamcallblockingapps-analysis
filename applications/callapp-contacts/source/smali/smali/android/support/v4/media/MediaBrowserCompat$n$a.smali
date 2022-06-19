.class Landroid/support/v4/media/MediaBrowserCompat$n$a;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$n;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$n;)V
    .locals 0

    .line 787
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$n$a;->a:Landroid/support/v4/media/MediaBrowserCompat$n;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 793
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$n$a;->a:Landroid/support/v4/media/MediaBrowserCompat$n;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserCompat$n;->c:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$n$a;->a:Landroid/support/v4/media/MediaBrowserCompat$n;

    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserCompat$n;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$m;

    :goto_0
    if-nez p1, :cond_1

    .line 796
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    return-void

    .line 799
    :cond_1
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 3082
    iget-object v0, p1, Landroid/support/v4/media/MediaBrowserCompat$m;->a:Ljava/util/List;

    .line 4078
    iget-object p1, p1, Landroid/support/v4/media/MediaBrowserCompat$m;->b:Ljava/util/List;

    const/4 v1, 0x0

    .line 802
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 803
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_6

    if-eqz p2, :cond_6

    const-string v3, "android.media.browse.extra.PAGE"

    const/4 v4, -0x1

    .line 4824
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "android.media.browse.extra.PAGE_SIZE"

    .line 4825
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v4, :cond_2

    if-eq v2, v4, :cond_6

    :cond_2
    mul-int v4, v2, v3

    add-int v5, v4, v2

    if-ltz v3, :cond_5

    if-lez v2, :cond_5

    .line 4831
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v4, v2, :cond_3

    goto :goto_2

    .line 4834
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v5, v2, :cond_4

    .line 4835
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 4837
    :cond_4
    invoke-interface {p2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    goto :goto_3

    .line 4832
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
