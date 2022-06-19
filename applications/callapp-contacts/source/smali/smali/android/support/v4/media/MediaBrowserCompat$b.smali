.class public Landroid/support/v4/media/MediaBrowserCompat$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$b$a;,
        Landroid/support/v4/media/MediaBrowserCompat$b$b;
    }
.end annotation


# instance fields
.field final a:Landroid/media/browse/MediaBrowser$ConnectionCallback;

.field b:Landroid/support/v4/media/MediaBrowserCompat$b$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 636
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$b$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$b$a;-><init>(Landroid/support/v4/media/MediaBrowserCompat$b;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$b;->a:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 638
    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$b;->a:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
