.class public Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;
.super Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;
.source ""


# instance fields
.field private final data:[B

.field private final filename:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v0, p2}, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->data:[B

    iput-object p3, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->filename:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byte[] may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    iget-wide v0, p1, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/content/ByteArrayBody;->data:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    return-void
.end method
