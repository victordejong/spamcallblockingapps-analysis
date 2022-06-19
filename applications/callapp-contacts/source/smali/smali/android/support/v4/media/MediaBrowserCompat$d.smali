.class public abstract Landroid/support/v4/media/MediaBrowserCompat$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$d$a;
    }
.end annotation


# instance fields
.field final a:Landroid/media/browse/MediaBrowser$ItemCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 871
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 872
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$d$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$d$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$d;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->a:Landroid/media/browse/MediaBrowser$ItemCallback;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 874
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$d;->a:Landroid/media/browse/MediaBrowser$ItemCallback;

    return-void
.end method
