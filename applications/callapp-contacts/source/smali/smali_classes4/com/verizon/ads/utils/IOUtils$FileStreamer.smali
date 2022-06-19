.class public Lcom/verizon/ads/utils/IOUtils$FileStreamer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/utils/HttpUtils$ResponseStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/utils/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileStreamer"
.end annotation


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/verizon/ads/utils/IOUtils$FileStreamer;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public streamContent(Ljava/io/InputStream;Lcom/verizon/ads/utils/HttpUtils$Response;)V
    .locals 3

    const/4 v0, 0x0

    .line 191
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/verizon/ads/utils/IOUtils$FileStreamer;->a:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/io/OutputStream;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 192
    invoke-static {p1, v0}, Lcom/verizon/ads/utils/IOUtils;->read(Ljava/io/InputStream;[Ljava/io/OutputStream;)I

    .line 193
    iget-object p1, p0, Lcom/verizon/ads/utils/IOUtils$FileStreamer;->a:Ljava/io/File;

    iput-object p1, p2, Lcom/verizon/ads/utils/HttpUtils$Response;->file:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    invoke-static {v1}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 195
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/verizon/ads/utils/IOUtils;->a()Lcom/verizon/ads/Logger;

    move-result-object p2

    const-string v1, "Unable to create file from input stream"

    invoke-virtual {p2, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    invoke-static {v0}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    return-void

    :goto_1
    invoke-static {v0}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 198
    throw p1
.end method
