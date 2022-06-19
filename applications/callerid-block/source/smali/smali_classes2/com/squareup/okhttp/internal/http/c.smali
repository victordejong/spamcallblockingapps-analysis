.class public final Lcom/squareup/okhttp/internal/http/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/http/p;


# static fields
.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/http/g;

.field private final b:Lcom/squareup/okhttp/internal/framed/c;

.field private c:Lcom/squareup/okhttp/internal/framed/d;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x5

    new-array v1, v0, [Lokio/ByteString;

    const-string v2, "connection"

    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "host"

    invoke-static {v3}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const-string v5, "keep-alive"

    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v1, v8

    const-string v7, "proxy-connection"

    invoke-static {v7}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v1, v10

    const-string v9, "transfer-encoding"

    invoke-static {v9}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v1, v12

    invoke-static {v1}, Lcom/squareup/okhttp/u/i;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/squareup/okhttp/internal/http/c;->d:Ljava/util/List;

    const/16 v1, 0x8

    new-array v1, v1, [Lokio/ByteString;

    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v5}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v7}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v1, v10

    const-string v2, "te"

    invoke-static {v2}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v9}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "encoding"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const-string v0, "upgrade"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/squareup/okhttp/u/i;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/c;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/http/g;Lcom/squareup/okhttp/internal/framed/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/c;->a:Lcom/squareup/okhttp/internal/http/g;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/internal/framed/c;

    return-void
.end method

.method private static i(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z
    .locals 1

    sget-object v0, Lcom/squareup/okhttp/Protocol;->d:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/squareup/okhttp/internal/http/c;->d:Ljava/util/List;

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lcom/squareup/okhttp/Protocol;->e:Lcom/squareup/okhttp/Protocol;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/squareup/okhttp/internal/http/c;->e:Ljava/util/List;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/util/List;Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/r$b;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;",
            "Lcom/squareup/okhttp/Protocol;",
            ")",
            "Lcom/squareup/okhttp/r$b;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/okhttp/k$b;

    invoke-direct {v0}, Lcom/squareup/okhttp/k$b;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/internal/http/j;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/k$b;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "HTTP/1.1"

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_5

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/okhttp/internal/framed/e;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/framed/e;->a:Lokio/ByteString;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/okhttp/internal/framed/e;

    iget-object v7, v7, Lcom/squareup/okhttp/internal/framed/e;->b:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    :cond_0
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/squareup/okhttp/internal/framed/e;->d:Lokio/ByteString;

    invoke-virtual {v6, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v3, v8

    goto :goto_2

    :cond_1
    sget-object v10, Lcom/squareup/okhttp/internal/framed/e;->j:Lokio/ByteString;

    invoke-virtual {v6, v10}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v4, v8

    goto :goto_2

    :cond_2
    invoke-static {p1, v6}, Lcom/squareup/okhttp/internal/http/c;->i(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v6}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v8}, Lcom/squareup/okhttp/k$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    :cond_3
    :goto_2
    add-int/lit8 v8, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/squareup/okhttp/internal/http/o;->b(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/o;

    move-result-object p0

    new-instance v1, Lcom/squareup/okhttp/r$b;

    invoke-direct {v1}, Lcom/squareup/okhttp/r$b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/r$b;->x(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/r$b;

    iget p1, p0, Lcom/squareup/okhttp/internal/http/o;->b:I

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/r$b;->q(I)Lcom/squareup/okhttp/r$b;

    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/o;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/r$b;->u(Ljava/lang/String;)Lcom/squareup/okhttp/r$b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/k$b;->e()Lcom/squareup/okhttp/k;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/squareup/okhttp/r$b;->t(Lcom/squareup/okhttp/k;)Lcom/squareup/okhttp/r$b;

    return-object v1

    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static l(Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/p;",
            "Lcom/squareup/okhttp/Protocol;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/e;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/okhttp/p;->i()Lcom/squareup/okhttp/k;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/squareup/okhttp/k;->f()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lcom/squareup/okhttp/internal/framed/e;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/e;->e:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/p;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/squareup/okhttp/internal/framed/e;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/e;->f:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/okhttp/internal/http/l;->c(Lcom/squareup/okhttp/l;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/u/i;->g(Lcom/squareup/okhttp/l;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/squareup/okhttp/Protocol;->d:Lcom/squareup/okhttp/Protocol;

    if-ne v3, p1, :cond_0

    new-instance v3, Lcom/squareup/okhttp/internal/framed/e;

    sget-object v4, Lcom/squareup/okhttp/internal/framed/e;->j:Lokio/ByteString;

    invoke-direct {v3, v4, p2}, Lcom/squareup/okhttp/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/squareup/okhttp/internal/framed/e;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/e;->i:Lokio/ByteString;

    invoke-direct {p2, v3, v2}, Lcom/squareup/okhttp/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object p2, Lcom/squareup/okhttp/Protocol;->e:Lcom/squareup/okhttp/Protocol;

    if-ne p2, p1, :cond_7

    new-instance p2, Lcom/squareup/okhttp/internal/framed/e;

    sget-object v3, Lcom/squareup/okhttp/internal/framed/e;->h:Lokio/ByteString;

    invoke-direct {p2, v3, v2}, Lcom/squareup/okhttp/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance p2, Lcom/squareup/okhttp/internal/framed/e;

    sget-object v2, Lcom/squareup/okhttp/internal/framed/e;->g:Lokio/ByteString;

    invoke-virtual {p0}, Lcom/squareup/okhttp/p;->j()Lcom/squareup/okhttp/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/okhttp/l;->D()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v2, p0}, Lcom/squareup/okhttp/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/okhttp/k;->f()I

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p2, :cond_6

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/k;->d(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v0, v3}, Lcom/squareup/okhttp/k;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4}, Lcom/squareup/okhttp/internal/http/c;->i(Lcom/squareup/okhttp/Protocol;Lokio/ByteString;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v6, Lcom/squareup/okhttp/internal/framed/e;->e:Lokio/ByteString;

    invoke-virtual {v4, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/squareup/okhttp/internal/framed/e;->f:Lokio/ByteString;

    invoke-virtual {v4, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/squareup/okhttp/internal/framed/e;->g:Lokio/ByteString;

    invoke-virtual {v4, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/squareup/okhttp/internal/framed/e;->h:Lokio/ByteString;

    invoke-virtual {v4, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/squareup/okhttp/internal/framed/e;->i:Lokio/ByteString;

    invoke-virtual {v4, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/squareup/okhttp/internal/framed/e;->j:Lokio/ByteString;

    invoke-virtual {v4, v6}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {p0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lcom/squareup/okhttp/internal/framed/e;

    invoke-direct {v6, v4, v5}, Lcom/squareup/okhttp/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/okhttp/internal/framed/e;

    iget-object v7, v7, Lcom/squareup/okhttp/internal/framed/e;->a:Lokio/ByteString;

    invoke-virtual {v7, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/squareup/okhttp/internal/framed/e;

    iget-object v7, v7, Lcom/squareup/okhttp/internal/framed/e;->b:Lokio/ByteString;

    invoke-virtual {v7}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/squareup/okhttp/internal/http/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/squareup/okhttp/internal/framed/e;

    invoke-direct {v7, v4, v5}, Lcom/squareup/okhttp/internal/framed/e;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_6
    return-object v1

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/p;J)Lokio/Sink;
    .locals 0

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/internal/framed/d;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/d;->q()Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Lcom/squareup/okhttp/p;)V
    .locals 5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/internal/framed/d;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->M()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->z()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/c;->a:Lcom/squareup/okhttp/internal/http/g;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/g;->o()Lcom/squareup/okhttp/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/f;->k()Lcom/squareup/okhttp/Protocol;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/l;->d(Lcom/squareup/okhttp/Protocol;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/internal/framed/c;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/framed/c;->l0()Lcom/squareup/okhttp/Protocol;

    move-result-object v4

    invoke-static {p1, v4, v2}, Lcom/squareup/okhttp/internal/http/c;->l(Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/Protocol;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1, v0, v1}, Lcom/squareup/okhttp/internal/framed/c;->p0(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/d;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/internal/framed/d;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/framed/d;->u()Lokio/Timeout;

    move-result-object p1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->a:Lcom/squareup/okhttp/internal/http/g;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/o;

    invoke-virtual {v0}, Lcom/squareup/okhttp/o;->r()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    return-void
.end method

.method public d(Lcom/squareup/okhttp/internal/http/m;)V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/internal/framed/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/d;->q()Lokio/Sink;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/m;->p(Lokio/Sink;)V

    return-void
.end method

.method public e(Lcom/squareup/okhttp/internal/http/g;)V
    .locals 1

    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/internal/framed/d;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->m:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/framed/d;->l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public f()Lcom/squareup/okhttp/r$b;
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/internal/framed/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/d;->p()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/c;->b:Lcom/squareup/okhttp/internal/framed/c;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/c;->l0()Lcom/squareup/okhttp/Protocol;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/c;->k(Ljava/util/List;Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/r$b;

    move-result-object v0

    return-object v0
.end method

.method public finishRequest()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/internal/framed/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/d;->q()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->close()V

    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/s;
    .locals 2

    new-instance v0, Lcom/squareup/okhttp/internal/http/k;

    invoke-virtual {p1}, Lcom/squareup/okhttp/r;->r()Lcom/squareup/okhttp/k;

    move-result-object p1

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/c;->c:Lcom/squareup/okhttp/internal/framed/d;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/d;->r()Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/squareup/okhttp/internal/http/k;-><init>(Lcom/squareup/okhttp/k;Lokio/BufferedSource;)V

    return-object v0
.end method
