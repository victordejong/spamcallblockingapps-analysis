.class public final Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction$1;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloadAction$SegmentDownloadActionDeserializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/offline/SegmentDownloadAction$SegmentDownloadActionDeserializer<",
        "Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction$SegmentDownloadActionDeserializer;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createDownloadAction(Landroid/net/Uri;Z[BLjava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z[B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/offline/DownloadAction;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;-><init>(Landroid/net/Uri;Z[BLjava/util/List;)V

    return-object v0
.end method

.method public readKey(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;
    .locals 2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-instance v1, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;-><init>(II)V

    return-object v1
.end method

.method public bridge synthetic readKey(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction$1;->readKey(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;

    move-result-object p1

    return-object p1
.end method
