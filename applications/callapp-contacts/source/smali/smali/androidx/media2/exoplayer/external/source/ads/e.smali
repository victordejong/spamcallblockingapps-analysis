.class final synthetic Landroidx/media2/exoplayer/external/source/ads/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;

.field private final b:Ljava/io/IOException;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/e;->a:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/e;->b:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ads/e;->a:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;

    .line 1442
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;->a:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->b(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;)Landroidx/media2/exoplayer/external/source/ads/b;

    return-void
.end method
