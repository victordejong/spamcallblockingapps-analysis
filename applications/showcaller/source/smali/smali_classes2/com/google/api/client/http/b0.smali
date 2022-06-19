.class public Lcom/google/api/client/http/b0;
.super Lcom/google/api/client/http/a;
.source "MultipartContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/b0$a;
    }
.end annotation


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/api/client/http/b0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__END_OF_PART__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/b0;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/api/client/http/p;

    const-string v1, "multipart/related"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/p;-><init>(Ljava/lang/String;)V

    const-string v1, "boundary"

    invoke-virtual {v0, v1, p1}, Lcom/google/api/client/http/p;->m(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/p;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/api/client/http/a;-><init>(Lcom/google/api/client/http/p;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/api/client/http/b0;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/b0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/b0$a;

    .line 2
    iget-object v1, v1, Lcom/google/api/client/http/b0$a;->a:Lcom/google/api/client/http/j;

    invoke-interface {v1}, Lcom/google/api/client/http/j;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public g(Lcom/google/api/client/http/b0$a;)Lcom/google/api/client/http/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/b0;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/http/a;->f()Lcom/google/api/client/http/p;

    move-result-object v0

    const-string v1, "boundary"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/util/Collection;)Lcom/google/api/client/http/b0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/api/client/http/j;",
            ">;)",
            "Lcom/google/api/client/http/b0;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/api/client/http/b0;->c:Ljava/util/ArrayList;

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/j;

    .line 3
    new-instance v1, Lcom/google/api/client/http/b0$a;

    invoke-direct {v1, v0}, Lcom/google/api/client/http/b0$a;-><init>(Lcom/google/api/client/http/j;)V

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/b0;->g(Lcom/google/api/client/http/b0$a;)Lcom/google/api/client/http/b0;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 13

    .line 1
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/google/api/client/http/a;->e()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/http/b0;->h()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/api/client/http/b0;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "--"

    const-string v5, "\r\n"

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/http/b0$a;

    .line 4
    new-instance v6, Lcom/google/api/client/http/n;

    invoke-direct {v6}, Lcom/google/api/client/http/n;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/api/client/http/n;->t(Ljava/lang/String;)Lcom/google/api/client/http/n;

    move-result-object v6

    .line 5
    iget-object v8, v3, Lcom/google/api/client/http/b0$a;->b:Lcom/google/api/client/http/n;

    if-eqz v8, :cond_0

    .line 6
    invoke-virtual {v6, v8}, Lcom/google/api/client/http/n;->c(Lcom/google/api/client/http/n;)V

    .line 7
    :cond_0
    invoke-virtual {v6, v7}, Lcom/google/api/client/http/n;->x(Ljava/lang/String;)Lcom/google/api/client/http/n;

    move-result-object v8

    .line 8
    invoke-virtual {v8, v7}, Lcom/google/api/client/http/n;->I(Ljava/lang/String;)Lcom/google/api/client/http/n;

    move-result-object v8

    .line 9
    invoke-virtual {v8, v7}, Lcom/google/api/client/http/n;->B(Ljava/lang/String;)Lcom/google/api/client/http/n;

    move-result-object v8

    .line 10
    invoke-virtual {v8, v7}, Lcom/google/api/client/http/n;->y(Ljava/lang/Long;)Lcom/google/api/client/http/n;

    move-result-object v8

    const-string v9, "Content-Transfer-Encoding"

    .line 11
    invoke-virtual {v8, v9, v7}, Lcom/google/api/client/http/n;->s(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    .line 12
    iget-object v8, v3, Lcom/google/api/client/http/b0$a;->a:Lcom/google/api/client/http/j;

    if-eqz v8, :cond_2

    const-string v10, "binary"

    .line 13
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/google/api/client/http/n;->s(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    .line 14
    invoke-interface {v8}, Lcom/google/api/client/http/j;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/api/client/http/n;->B(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 15
    iget-object v3, v3, Lcom/google/api/client/http/b0$a;->c:Lcom/google/api/client/http/k;

    if-nez v3, :cond_1

    .line 16
    invoke-interface {v8}, Lcom/google/api/client/http/j;->getLength()J

    move-result-wide v9

    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {v3}, Lcom/google/api/client/http/k;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/google/api/client/http/n;->x(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 18
    new-instance v9, Lcom/google/api/client/http/l;

    invoke-direct {v9, v8, v3}, Lcom/google/api/client/http/l;-><init>(Lcom/google/api/client/util/z;Lcom/google/api/client/http/k;)V

    .line 19
    invoke-static {v8}, Lcom/google/api/client/http/a;->d(Lcom/google/api/client/http/j;)J

    move-result-wide v10

    move-object v8, v9

    move-wide v9, v10

    :goto_1
    const-wide/16 v11, -0x1

    cmp-long v3, v9, v11

    if-eqz v3, :cond_3

    .line 20
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/api/client/http/n;->y(Ljava/lang/Long;)Lcom/google/api/client/http/n;

    goto :goto_2

    :cond_2
    move-object v8, v7

    .line 21
    :cond_3
    :goto_2
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 24
    invoke-static {v6, v7, v7, v0}, Lcom/google/api/client/http/n;->r(Lcom/google/api/client/http/n;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Ljava/io/Writer;)V

    if-eqz v8, :cond_4

    .line 25
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 27
    invoke-interface {v8, p1}, Lcom/google/api/client/util/z;->writeTo(Ljava/io/OutputStream;)V

    .line 28
    :cond_4
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 29
    :cond_5
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method
