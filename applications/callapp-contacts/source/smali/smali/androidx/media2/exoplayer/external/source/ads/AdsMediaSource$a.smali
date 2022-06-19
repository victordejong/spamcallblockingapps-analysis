.class final Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

.field private final b:Landroid/net/Uri;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroid/net/Uri;II)V
    .locals 0

    .line 422
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;->a:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;->b:Landroid/net/Uri;

    .line 424
    iput p3, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;->c:I

    .line 425
    iput p4, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;->d:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/source/t$a;Ljava/io/IOException;)V
    .locals 15

    move-object v0, p0

    .line 430
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;->a:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->a(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/u$a;

    move-result-object v2

    new-instance v3, Landroidx/media2/exoplayer/external/upstream/h;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;->b:Landroid/net/Uri;

    invoke-direct {v3, v1}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;)V

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;->b:Landroid/net/Uri;

    .line 434
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 439
    invoke-static/range {p2 .. p2}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;->a(Ljava/lang/Exception;)Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;

    move-result-object v13

    const/4 v6, 0x6

    const-wide/16 v7, -0x1

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    .line 431
    invoke-virtual/range {v2 .. v14}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    .line 441
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;->a:Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;->a(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroidx/media2/exoplayer/external/source/ads/e;

    move-object/from16 v3, p2

    invoke-direct {v2, p0, v3}, Landroidx/media2/exoplayer/external/source/ads/e;-><init>(Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$a;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
