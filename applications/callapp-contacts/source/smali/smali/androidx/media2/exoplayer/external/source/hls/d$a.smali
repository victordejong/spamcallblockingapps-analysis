.class final Landroidx/media2/exoplayer/external/source/hls/d$a;
.super Landroidx/media2/exoplayer/external/source/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field j:[B


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V
    .locals 8

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 603
    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/a/c;-><init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V

    return-void
.end method


# virtual methods
.method public final a([BI)V
    .locals 0

    .line 609
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/d$a;->j:[B

    return-void
.end method
