.class public final Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;
.super Lcom/google/android/exoplayer2/offline/DownloadAction;
.source ""


# static fields
.field public static final DESERIALIZER:Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

.field private static final TYPE:Ljava/lang/String; = "progressive"

.field private static final VERSION:I


# instance fields
.field public final customCacheKey:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction$1;

    const-string v1, "progressive"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->DESERIALIZER:Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Z[BLjava/lang/String;)V
    .locals 6

    const-string v1, "progressive"

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/offline/DownloadAction;-><init>(Ljava/lang/String;ILandroid/net/Uri;Z[B)V

    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    return-void
.end method

.method private getCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheUtil;->generateKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic createDownloader(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)Lcom/google/android/exoplayer2/offline/Downloader;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->createDownloader(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;

    move-result-object p1

    return-object p1
.end method

.method public createDownloader(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloader;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/google/android/exoplayer2/offline/DownloadAction;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isSameMedia(Lcom/google/android/exoplayer2/offline/DownloadAction;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->customCacheKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
