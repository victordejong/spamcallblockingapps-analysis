.class public final Lcom/google/api/client/http/ab;
.super Lcom/google/api/client/http/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/ab$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/api/client/http/ab$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "__END_OF_PART__"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/ab;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 58
    new-instance v0, Lcom/google/api/client/http/p;

    const-string v1, "multipart/related"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/p;-><init>(Ljava/lang/String;)V

    const-string v1, "boundary"

    invoke-virtual {v0, v1, p1}, Lcom/google/api/client/http/p;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/p;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/api/client/http/a;-><init>(Lcom/google/api/client/http/p;)V

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/api/client/http/ab;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/ab$a;)Lcom/google/api/client/http/ab;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/api/client/http/ab;->a:Ljava/util/ArrayList;

    .line 2125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 149
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Ljava/util/Collection;)Lcom/google/api/client/http/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/api/client/http/j;",
            ">;)",
            "Lcom/google/api/client/http/ab;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/api/client/http/ab;->a:Ljava/util/ArrayList;

    .line 173
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/j;

    .line 174
    new-instance v1, Lcom/google/api/client/http/ab$a;

    invoke-direct {v1, v0}, Lcom/google/api/client/http/ab$a;-><init>(Lcom/google/api/client/http/j;)V

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/ab;->a(Lcom/google/api/client/http/ab$a;)Lcom/google/api/client/http/ab;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final retrySupported()Z
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/google/api/client/http/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/ab$a;

    .line 124
    iget-object v1, v1, Lcom/google/api/client/http/ab$a;->a:Lcom/google/api/client/http/j;

    invoke-interface {v1}, Lcom/google/api/client/http/j;->retrySupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic setMediaType(Lcom/google/api/client/http/p;)Lcom/google/api/client/http/a;
    .locals 0

    .line 2133
    invoke-super {p0, p1}, Lcom/google/api/client/http/a;->setMediaType(Lcom/google/api/client/http/p;)Lcom/google/api/client/http/a;

    return-object p0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/google/api/client/http/ab;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 1181
    invoke-virtual {p0}, Lcom/google/api/client/http/ab;->getMediaType()Lcom/google/api/client/http/p;

    move-result-object v1

    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/google/api/client/http/ab;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "--"

    const-string v5, "\r\n"

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/http/ab$a;

    .line 65
    new-instance v6, Lcom/google/api/client/http/n;

    invoke-direct {v6}, Lcom/google/api/client/http/n;-><init>()V

    invoke-virtual {v6}, Lcom/google/api/client/http/n;->a()Lcom/google/api/client/http/n;

    move-result-object v6

    .line 66
    iget-object v7, v3, Lcom/google/api/client/http/ab$a;->b:Lcom/google/api/client/http/n;

    if-eqz v7, :cond_0

    .line 67
    iget-object v7, v3, Lcom/google/api/client/http/ab$a;->b:Lcom/google/api/client/http/n;

    invoke-virtual {v6, v7}, Lcom/google/api/client/http/n;->a(Lcom/google/api/client/http/n;)V

    :cond_0
    const/4 v7, 0x0

    .line 70
    invoke-virtual {v6, v7}, Lcom/google/api/client/http/n;->b(Ljava/lang/String;)Lcom/google/api/client/http/n;

    move-result-object v8

    .line 71
    invoke-virtual {v8, v7}, Lcom/google/api/client/http/n;->f(Ljava/lang/String;)Lcom/google/api/client/http/n;

    move-result-object v8

    .line 72
    invoke-virtual {v8, v7}, Lcom/google/api/client/http/n;->d(Ljava/lang/String;)Lcom/google/api/client/http/n;

    move-result-object v8

    .line 73
    invoke-virtual {v8, v7}, Lcom/google/api/client/http/n;->a(Ljava/lang/Long;)Lcom/google/api/client/http/n;

    move-result-object v8

    const-string v9, "Content-Transfer-Encoding"

    .line 74
    invoke-virtual {v8, v9, v7}, Lcom/google/api/client/http/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    .line 76
    iget-object v8, v3, Lcom/google/api/client/http/ab$a;->a:Lcom/google/api/client/http/j;

    if-eqz v8, :cond_2

    const-string v7, "binary"

    .line 79
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lcom/google/api/client/http/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    .line 80
    invoke-interface {v8}, Lcom/google/api/client/http/j;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/api/client/http/n;->d(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 81
    iget-object v3, v3, Lcom/google/api/client/http/ab$a;->c:Lcom/google/api/client/http/k;

    if-nez v3, :cond_1

    .line 84
    invoke-interface {v8}, Lcom/google/api/client/http/j;->getLength()J

    move-result-wide v9

    move-object v7, v8

    goto :goto_1

    .line 87
    :cond_1
    invoke-interface {v3}, Lcom/google/api/client/http/k;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/api/client/http/n;->b(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 88
    new-instance v7, Lcom/google/api/client/http/l;

    invoke-direct {v7, v8, v3}, Lcom/google/api/client/http/l;-><init>(Lcom/google/api/client/a/ad;Lcom/google/api/client/http/k;)V

    .line 89
    invoke-static {v8}, Lcom/google/api/client/http/a;->computeLength(Lcom/google/api/client/http/j;)J

    move-result-wide v9

    :goto_1
    const-wide/16 v11, -0x1

    cmp-long v3, v9, v11

    if-eqz v3, :cond_2

    .line 92
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/api/client/http/n;->a(Ljava/lang/Long;)Lcom/google/api/client/http/n;

    .line 98
    :cond_2
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    invoke-static {v6, v0}, Lcom/google/api/client/http/n;->a(Lcom/google/api/client/http/n;Ljava/io/Writer;)V

    if-eqz v7, :cond_3

    .line 105
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 108
    invoke-interface {v7, p1}, Lcom/google/api/client/a/ad;->writeTo(Ljava/io/OutputStream;)V

    .line 111
    :cond_3
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_4
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method
