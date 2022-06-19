.class public final Lcom/google/api/client/testing/a/d;
.super Lcom/google/api/client/http/aa;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/google/api/client/http/aa;-><init>()V

    const/16 v0, 0xc8

    .line 46
    iput v0, p0, Lcom/google/api/client/testing/a/d;->c:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/a/d;->e:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/a/d;->f:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 61
    iput-wide v0, p0, Lcom/google/api/client/testing/a/d;->h:J

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/api/client/testing/a/d;
    .locals 0

    .line 270
    iput p1, p0, Lcom/google/api/client/testing/a/d;->c:I

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/api/client/testing/a/d;
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/google/api/client/testing/a/d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/google/api/client/testing/a/d;->i:Z

    .line 287
    invoke-super {p0}, Lcom/google/api/client/http/aa;->disconnect()V

    return-void
.end method

.method public final getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/api/client/testing/a/d;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/api/client/testing/a/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/google/api/client/testing/a/d;->h:J

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/api/client/testing/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaderCount()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/api/client/testing/a/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getHeaderName(I)Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/api/client/testing/a/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getHeaderValue(I)Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/api/client/testing/a/d;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/api/client/testing/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/google/api/client/testing/a/d;->c:I

    return v0
.end method

.method public final getStatusLine()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    iget v1, p0, Lcom/google/api/client/testing/a/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/google/api/client/testing/a/d;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
