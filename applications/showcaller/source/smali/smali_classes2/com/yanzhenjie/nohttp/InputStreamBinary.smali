.class public Lcom/yanzhenjie/nohttp/InputStreamBinary;
.super Lcom/yanzhenjie/nohttp/BasicBinary;
.source "InputStreamBinary.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/nohttp/InputStreamBinary;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/yanzhenjie/nohttp/BasicBinary;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "The inputStream can\'t be null."

    .line 3
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    instance-of p2, p1, Ljava/io/FileInputStream;

    if-nez p2, :cond_1

    instance-of p2, p1, Ljava/io/ByteArrayInputStream;

    if-nez p2, :cond_1

    instance-of p2, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The inputStream must be FileInputStream, ByteArrayInputStream and AssetInputStream."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/InputStreamBinary;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getBinaryLength()J
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InputStreamBinary;->inputStream:Ljava/io/InputStream;

    instance-of v1, v0, Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/InputStreamBinary;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method
