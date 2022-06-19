.class public final Lcom/dropbox/core/util/IOUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/util/IOUtil$a;,
        Lcom/dropbox/core/util/IOUtil$WriteException;,
        Lcom/dropbox/core/util/IOUtil$ReadException;,
        Lcom/dropbox/core/util/IOUtil$WrappedException;
    }
.end annotation


# static fields
.field public static final a:Ljava/io/InputStream;

.field public static final b:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 208
    new-instance v0, Lcom/dropbox/core/util/IOUtil$1;

    invoke-direct {v0}, Lcom/dropbox/core/util/IOUtil$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/util/IOUtil;->a:Ljava/io/InputStream;

    .line 214
    new-instance v0, Lcom/dropbox/core/util/IOUtil$2;

    invoke-direct {v0}, Lcom/dropbox/core/util/IOUtil$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/util/IOUtil;->b:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 149
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/util/IOUtil$ReadException;,
            Lcom/dropbox/core/util/IOUtil$WriteException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 1068
    invoke-static {p0, p1, v0}, Lcom/dropbox/core/util/IOUtil;->a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/util/IOUtil$ReadException;,
            Lcom/dropbox/core/util/IOUtil$WriteException;
        }
    .end annotation

    .line 51
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 59
    :try_start_1
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    new-instance p1, Lcom/dropbox/core/util/IOUtil$WriteException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/util/IOUtil$WriteException;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_0
    return-void

    :catch_1
    move-exception p0

    .line 53
    new-instance p1, Lcom/dropbox/core/util/IOUtil$ReadException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/util/IOUtil$ReadException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 1078
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1079
    invoke-static {p0, v1, v0}, Lcom/dropbox/core/util/IOUtil;->a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    .line 1080
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/InputStream;)V
    .locals 0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
