.class public final Lcom/google/android/exoplayer2/upstream/DefaultDataSource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# static fields
.field private static final SCHEME_ASSET:Ljava/lang/String; = "asset"

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_RAW:Ljava/lang/String; = "rawresource"

.field private static final SCHEME_RTMP:Ljava/lang/String; = "rtmp"

.field private static final TAG:Ljava/lang/String; = "DefaultDataSource"


# instance fields
.field private assetDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final baseDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private contentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final context:Landroid/content/Context;

.field private dataSchemeDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private fileDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private rawResourceDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

.field private rtmpDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->baseDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Ljava/lang/String;IIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    new-instance v8, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p3

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    invoke-direct {p0, p1, p2, v8}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/upstream/DataSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private getAssetDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->assetDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->assetDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->assetDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private getContentDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->contentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->contentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->contentDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private getDataSchemeDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->dataSchemeDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DataSchemeDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->dataSchemeDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->dataSchemeDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private getFileDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->fileDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->fileDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->fileDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private getRawResourceDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->rawResourceDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->rawResourceDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->rawResourceDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method

.method private getRtmpDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->rtmpDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->rtmpDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->rtmpDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->baseDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->rtmpDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->rtmpDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->getFileDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->getAssetDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_3

    :cond_3
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->getContentDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v1, "rtmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->getRtmpDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->getDataSchemeDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string v1, "rawresource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->getRawResourceDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->baseDataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplayer2/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSource;->read([BII)I

    move-result p1

    return p1
.end method
