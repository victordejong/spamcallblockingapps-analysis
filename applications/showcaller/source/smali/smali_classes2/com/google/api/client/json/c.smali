.class public abstract Lcom/google/api/client/json/c;
.super Ljava/lang/Object;
.source "JsonFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private h(Ljava/lang/Object;Z)Ljava/io/ByteArrayOutputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    sget-object v1, Lcom/google/api/client/util/h;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/json/c;->a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/d;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/api/client/json/d;->a()V

    .line 4
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/api/client/json/d;->e(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/api/client/json/d;->flush()V

    return-object v0
.end method

.method private k(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/json/c;->h(Ljava/lang/Object;Z)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/d;
.end method

.method public abstract b(Ljava/io/InputStream;)Lcom/google/api/client/json/f;
.end method

.method public abstract c(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/f;
.end method

.method public abstract d(Ljava/io/Reader;)Lcom/google/api/client/json/f;
.end method

.method public abstract e(Ljava/lang/String;)Lcom/google/api/client/json/f;
.end method

.method public final f(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/c;->b(Ljava/io/InputStream;)Lcom/google/api/client/json/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/api/client/json/f;->Q(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/c;->d(Ljava/io/Reader;)Lcom/google/api/client/json/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/api/client/json/f;->Q(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/api/client/json/c;->k(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/api/client/json/c;->k(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
