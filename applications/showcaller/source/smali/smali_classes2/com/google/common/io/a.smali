.class public final Lcom/google/common/io/a;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# static fields
.field private static final a:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/io/a$a;

    invoke-direct {v0}, Lcom/google/common/io/a$a;-><init>()V

    sput-object v0, Lcom/google/common/io/a;->a:Ljava/io/OutputStream;

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/j;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/common/io/a;->b()[B

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-wide v1

    :cond_0
    const/4 v4, 0x0

    .line 5
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0
.end method

.method static b()[B
    .locals 1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    return-object v0
.end method

.method public static c(Ljava/io/InputStream;)J
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/common/io/a;->b()[B

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method
