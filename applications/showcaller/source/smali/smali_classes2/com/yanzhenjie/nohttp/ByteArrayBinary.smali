.class public Lcom/yanzhenjie/nohttp/ByteArrayBinary;
.super Lcom/yanzhenjie/nohttp/BasicBinary;
.source "ByteArrayBinary.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private byteArray:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/nohttp/ByteArrayBinary;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/yanzhenjie/nohttp/BasicBinary;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/ByteArrayBinary;->byteArray:[B

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ByteArray is null: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBinaryLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/ByteArrayBinary;->byteArray:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/ByteArrayBinary;->byteArray:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
