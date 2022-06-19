.class final Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field volatile b:Z

.field final synthetic c:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;)V
    .locals 0

    .line 373
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;->c:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$b;->a:Landroid/os/Handler;

    return-void
.end method
