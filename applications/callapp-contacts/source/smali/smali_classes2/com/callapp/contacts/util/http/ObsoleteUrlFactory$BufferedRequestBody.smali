.class final Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;
.super Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferedRequestBody"
.end annotation


# instance fields
.field final a:Lc/f;

.field b:J


# direct methods
.method constructor <init>(J)V
    .locals 3

    .line 835
    invoke-direct {p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;-><init>()V

    .line 832
    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;->a:Lc/f;

    const-wide/16 v1, -0x1

    .line 833
    iput-wide v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;->b:J

    .line 836
    invoke-virtual {p0, v0, p1, p2}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;->a(Lc/g;J)V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Length"

    .line 844
    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object p1

    .line 846
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;->e:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 847
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;->a:Lc/f;

    .line 1073
    iget-wide v1, v1, Lc/f;->b:J

    .line 847
    iput-wide v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;->b:J

    .line 848
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    const-string v1, "Transfer-Encoding"

    .line 849
    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;->a:Lc/f;

    .line 2073
    iget-wide v1, v1, Lc/f;->b:J

    .line 850
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 851
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public final contentLength()J
    .locals 2

    .line 840
    iget-wide v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;->b:J

    return-wide v0
.end method

.method public final writeTo(Lc/g;)V
    .locals 6

    .line 855
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;->a:Lc/f;

    invoke-interface {p1}, Lc/g;->a()Lc/f;

    move-result-object v1

    iget-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$BufferedRequestBody;->a:Lc/f;

    .line 3073
    iget-wide v4, p1, Lc/f;->b:J

    const-wide/16 v2, 0x0

    .line 855
    invoke-virtual/range {v0 .. v5}, Lc/f;->a(Lc/f;JJ)Lc/f;

    return-void
.end method
