.class final Lcom/bytedance/sdk/a/a/l$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/a/a/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/a/a/l;->a(Ljava/io/InputStream;Lcom/bytedance/sdk/a/a/t;)Lcom/bytedance/sdk/a/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/a/a/t;

.field final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/a/a/t;Ljava/io/InputStream;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/bytedance/sdk/a/a/l$2;->a:Lcom/bytedance/sdk/a/a/t;

    iput-object p2, p0, Lcom/bytedance/sdk/a/a/l$2;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/sdk/a/a/c;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    if-nez v2, :cond_0

    return-wide v0

    .line 145
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/l$2;->a:Lcom/bytedance/sdk/a/a/t;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/a/t;->g()V

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/a/c;->e(I)Lcom/bytedance/sdk/a/a/o;

    move-result-object v0

    .line 147
    iget v1, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p3, p2

    .line 148
    iget-object p2, p0, Lcom/bytedance/sdk/a/a/l$2;->b:Ljava/io/InputStream;

    iget-object v1, v0, Lcom/bytedance/sdk/a/a/o;->a:[B

    iget v2, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    invoke-virtual {p2, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const-wide/16 p1, -0x1

    return-wide p1

    .line 150
    :cond_1
    iget p3, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    add-int/2addr p3, p2

    iput p3, v0, Lcom/bytedance/sdk/a/a/o;->c:I

    .line 151
    iget-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J

    int-to-long p2, p2

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/bytedance/sdk/a/a/c;->b:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p2

    :catch_0
    move-exception p1

    .line 154
    invoke-static {p1}, Lcom/bytedance/sdk/a/a/l;->a(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 155
    :cond_2
    throw p1

    .line 142
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "byteCount < 0: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lcom/bytedance/sdk/a/a/t;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/l$2;->a:Lcom/bytedance/sdk/a/a/t;

    return-object v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/a/a/l$2;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/a/a/l$2;->b:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
