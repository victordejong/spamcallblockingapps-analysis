.class public final Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/offline/SegmentDownloadAction<",
        "Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final DESERIALIZER:Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

.field private static final TYPE:Ljava/lang/String; = "hls"

.field private static final VERSION:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction$1;

    const-string v1, "hls"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;->DESERIALIZER:Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Z[BLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z[B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;",
            ">;)V"
        }
    .end annotation

    const-string v1, "hls"

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;-><init>(Ljava/lang/String;ILandroid/net/Uri;Z[BLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDownloader(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)Lcom/google/android/exoplayer2/offline/Downloader;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;->createDownloader(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;

    move-result-object p1

    return-object p1
.end method

.method public createDownloader(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;->keys:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;-><init>(Landroid/net/Uri;Ljava/util/List;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V

    return-object v0
.end method

.method public writeKey(Ljava/io/DataOutputStream;Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;)V
    .locals 1

    iget v0, p2, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->type:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p2, p2, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;->trackIndex:I

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method public bridge synthetic writeKey(Ljava/io/DataOutputStream;Ljava/lang/Comparable;)V
    .locals 0

    check-cast p2, Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;->writeKey(Ljava/io/DataOutputStream;Lcom/google/android/exoplayer2/source/hls/playlist/RenditionKey;)V

    return-void
.end method
