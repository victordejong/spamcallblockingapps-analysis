.class final Landroidx/media2/exoplayer/external/source/hls/k$b;
.super Landroidx/media2/exoplayer/external/source/ak;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/b;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 1228
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/ak;-><init>(Landroidx/media2/exoplayer/external/upstream/b;)V

    .line 1229
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/hls/k$b;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/Format;)V
    .locals 9

    .line 1234
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v0, :cond_0

    .line 1236
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/k$b;->g:Ljava/util/Map;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 1241
    :cond_0
    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    :goto_0
    move-object v1, v2

    goto :goto_5

    .line 2253
    :cond_1
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v6, -0x1

    if-ge v5, v3, :cond_3

    .line 2256
    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v7

    .line 2257
    instance-of v8, v7, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    if-eqz v8, :cond_2

    .line 2258
    check-cast v7, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    .line 2259
    iget-object v7, v7, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    const-string v8, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    :goto_2
    if-ne v5, v6, :cond_4

    goto :goto_5

    :cond_4
    const/4 v6, 0x1

    if-ne v3, v6, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v3, -0x1

    .line 2271
    new-array v2, v2, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    :goto_3
    if-ge v4, v3, :cond_8

    if-eq v4, v5, :cond_7

    if-ge v4, v5, :cond_6

    move v6, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v4, -0x1

    .line 2275
    :goto_4
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v7

    aput-object v7, v2, v6

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2278
    :cond_8
    new-instance v1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    .line 1241
    :goto_5
    invoke-virtual {p1, v0, v1}, Landroidx/media2/exoplayer/external/Format;->copyWithAdjustments(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/ak;->a(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
