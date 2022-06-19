.class Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->a(Lc/g;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lc/g;

.field final synthetic c:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;

.field private d:J


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;JLc/g;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->c:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;

    iput-wide p2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->a:J

    iput-object p4, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->b:Lc/g;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->c:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->f:Z

    .line 808
    iget-wide v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->d:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    goto :goto_0

    .line 809
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->b:Lc/g;

    invoke-interface {v0}, Lc/g;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->c:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;

    iget-boolean v0, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->b:Lc/g;

    invoke-interface {v0}, Lc/g;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 781
    invoke-virtual {p0, v1, v2, v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->c:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;

    iget-boolean v0, v0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->f:Z

    if-nez v0, :cond_2

    .line 787
    iget-wide v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->a:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->d:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "expected "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->a:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes but received "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->d:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 792
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->d:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->d:J

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody$1;->b:Lc/g;

    invoke-interface {v0, p1, p2, p3}, Lc/g;->c([BII)Lc/g;
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 796
    new-instance p2, Ljava/net/SocketTimeoutException;

    invoke-virtual {p1}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 785
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
