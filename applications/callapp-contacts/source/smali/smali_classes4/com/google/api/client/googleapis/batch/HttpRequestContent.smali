.class Lcom/google/api/client/googleapis/batch/HttpRequestContent;
.super Lcom/google/api/client/http/a;
.source "SourceFile"


# static fields
.field private static final HTTP_VERSION:Ljava/lang/String; = "HTTP/1.1"

.field static final NEWLINE:Ljava/lang/String; = "\r\n"


# instance fields
.field private final request:Lcom/google/api/client/http/q;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/q;)V
    .locals 1

    const-string v0, "application/http"

    .line 40
    invoke-direct {p0, v0}, Lcom/google/api/client/http/a;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/google/api/client/googleapis/batch/HttpRequestContent;->request:Lcom/google/api/client/http/q;

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/batch/HttpRequestContent;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 48
    iget-object v1, p0, Lcom/google/api/client/googleapis/batch/HttpRequestContent;->request:Lcom/google/api/client/http/q;

    invoke-virtual {v1}, Lcom/google/api/client/http/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, " "

    .line 49
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/google/api/client/googleapis/batch/HttpRequestContent;->request:Lcom/google/api/client/http/q;

    invoke-virtual {v2}, Lcom/google/api/client/http/q;->c()Lcom/google/api/client/http/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "HTTP/1.1"

    .line 52
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\r\n"

    .line 53
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 56
    new-instance v2, Lcom/google/api/client/http/n;

    invoke-direct {v2}, Lcom/google/api/client/http/n;-><init>()V

    .line 57
    iget-object v3, p0, Lcom/google/api/client/googleapis/batch/HttpRequestContent;->request:Lcom/google/api/client/http/q;

    invoke-virtual {v3}, Lcom/google/api/client/http/q;->g()Lcom/google/api/client/http/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/n;->a(Lcom/google/api/client/http/n;)V

    .line 58
    invoke-virtual {v2}, Lcom/google/api/client/http/n;->a()Lcom/google/api/client/http/n;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/api/client/http/n;->f(Ljava/lang/String;)Lcom/google/api/client/http/n;

    move-result-object v3

    .line 59
    invoke-virtual {v3, v4}, Lcom/google/api/client/http/n;->b(Ljava/lang/String;)Lcom/google/api/client/http/n;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/api/client/http/n;->d(Ljava/lang/String;)Lcom/google/api/client/http/n;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/api/client/http/n;->a(Ljava/lang/Long;)Lcom/google/api/client/http/n;

    .line 61
    iget-object v3, p0, Lcom/google/api/client/googleapis/batch/HttpRequestContent;->request:Lcom/google/api/client/http/q;

    invoke-virtual {v3}, Lcom/google/api/client/http/q;->d()Lcom/google/api/client/http/j;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 63
    invoke-interface {v3}, Lcom/google/api/client/http/j;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/api/client/http/n;->d(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 65
    invoke-interface {v3}, Lcom/google/api/client/http/j;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 67
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/api/client/http/n;->a(Ljava/lang/Long;)Lcom/google/api/client/http/n;

    .line 70
    :cond_0
    invoke-static {v2, v0}, Lcom/google/api/client/http/n;->a(Lcom/google/api/client/http/n;Ljava/io/Writer;)V

    .line 72
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    if-eqz v3, :cond_1

    .line 76
    invoke-interface {v3, p1}, Lcom/google/api/client/http/j;->writeTo(Ljava/io/OutputStream;)V

    :cond_1
    return-void
.end method
