.class final Landroid/support/v4/media/MediaBrowserCompat$d$a;
.super Landroid/media/browse/MediaBrowser$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserCompat$d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$d;)V
    .locals 0

    .line 896
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$d$a;->a:Landroid/support/v4/media/MediaBrowserCompat$d;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V
    .locals 0

    .line 901
    invoke-static {p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItem(Ljava/lang/Object;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    return-void
.end method
