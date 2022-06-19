.class public final Lcom/google/api/client/http/ae;
.super Lcom/google/api/client/http/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 62
    sget-object v0, Lcom/google/api/client/http/af;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/a;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/google/api/client/http/ae;->a(Ljava/lang/Object;)Lcom/google/api/client/http/ae;

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/google/api/client/http/ae;->b:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .line 76
    sget-object v0, Lcom/google/api/client/http/af;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/a;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/google/api/client/http/ae;->a(Ljava/lang/Object;)Lcom/google/api/client/http/ae;

    .line 78
    iput-boolean p2, p0, Lcom/google/api/client/http/ae;->b:Z

    return-void
.end method

.method private a(Ljava/lang/Object;)Lcom/google/api/client/http/ae;
    .locals 0

    .line 1125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 126
    iput-object p1, p0, Lcom/google/api/client/http/ae;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private static a(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_4

    .line 155
    invoke-static {p3}, Lcom/google/api/client/a/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "&"

    .line 162
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 164
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 165
    instance-of p2, p3, Ljava/lang/Enum;

    if-eqz p2, :cond_2

    check-cast p3, Ljava/lang/Enum;

    .line 166
    invoke-static {p3}, Lcom/google/api/client/a/m;->a(Ljava/lang/Enum;)Lcom/google/api/client/a/m;

    move-result-object p2

    .line 1167
    iget-object p2, p2, Lcom/google/api/client/a/m;->c:Ljava/lang/String;

    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p4, :cond_3

    .line 169
    invoke-static {p2}, Lcom/google/api/client/a/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 171
    :cond_3
    invoke-static {p2}, Lcom/google/api/client/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 173
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "="

    .line 174
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return p0
.end method


# virtual methods
.method public final bridge synthetic setMediaType(Lcom/google/api/client/http/p;)Lcom/google/api/client/http/a;
    .locals 0

    .line 2104
    invoke-super {p0, p1}, Lcom/google/api/client/http/a;->setMediaType(Lcom/google/api/client/http/p;)Lcom/google/api/client/http/a;

    return-object p0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/google/api/client/http/ae;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 85
    iget-object p1, p0, Lcom/google/api/client/http/ae;->a:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/api/client/a/j;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 88
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/api/client/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 90
    instance-of v5, v3, Ljava/lang/Iterable;

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    iget-boolean v4, p0, Lcom/google/api/client/http/ae;->b:Z

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/api/client/http/ae;->a(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v1

    goto :goto_0

    .line 91
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/google/api/client/a/ag;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 92
    iget-boolean v5, p0, Lcom/google/api/client/http/ae;->b:Z

    invoke-static {v1, v0, v2, v4, v5}, Lcom/google/api/client/http/ae;->a(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v1

    goto :goto_2

    .line 99
    :cond_3
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method
