.class public Lcom/hzy/lib7z/Z7Extractor;
.super Ljava/lang/Object;
.source "Z7Extractor.java"


# static fields
.field public static final DEFAULT_IN_BUF_SIZE:J = 0x1000000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "un7zip"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Lcom/hzy/lib7z/ExtractCallback;)Z
    .locals 6

    if-nez p3, :cond_0

    .line 1
    new-instance p3, Lcom/hzy/lib7z/DefalutExtractCallback;

    invoke-direct {p3}, Lcom/hzy/lib7z/DefalutExtractCallback;-><init>()V

    :cond_0
    move-object v3, p3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {p2}, Lcom/hzy/lib7z/Z7Extractor;->prepareOutPath(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v4, 0x1000000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/hzy/lib7z/Z7Extractor;->nExtractAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Lcom/hzy/lib7z/ExtractCallback;J)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x3e7

    const-string p1, "File Path Error!"

    .line 4
    invoke-interface {v3, p0, p1}, Lcom/hzy/lib7z/IExtractCallback;->onError(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static extractFile(Ljava/lang/String;Ljava/lang/String;Lcom/hzy/lib7z/ExtractCallback;)Z
    .locals 2

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/hzy/lib7z/DefalutExtractCallback;

    invoke-direct {p2}, Lcom/hzy/lib7z/DefalutExtractCallback;-><init>()V

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/hzy/lib7z/Z7Extractor;->prepareOutPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x1000000

    .line 5
    invoke-static {p0, p1, p2, v0, v1}, Lcom/hzy/lib7z/Z7Extractor;->nExtractFile(Ljava/lang/String;Ljava/lang/String;Lcom/hzy/lib7z/ExtractCallback;J)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x3e7

    const-string p1, "File Path Error!"

    .line 6
    invoke-interface {p2, p0, p1}, Lcom/hzy/lib7z/IExtractCallback;->onError(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getLzmaVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hzy/lib7z/Z7Extractor;->nGetLzmaVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nExtractAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Lcom/hzy/lib7z/ExtractCallback;J)Z
.end method

.method private static native nExtractFile(Ljava/lang/String;Ljava/lang/String;Lcom/hzy/lib7z/ExtractCallback;J)Z
.end method

.method private static native nGetLzmaVersion()Ljava/lang/String;
.end method

.method private static prepareOutPath(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
