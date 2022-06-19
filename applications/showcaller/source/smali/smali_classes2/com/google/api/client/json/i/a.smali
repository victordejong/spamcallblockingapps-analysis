.class public Lcom/google/api/client/json/i/a;
.super Lcom/google/api/client/json/c;
.source "GsonFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/d;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/i/a;->l(Ljava/io/Writer;)Lcom/google/api/client/json/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/InputStream;)Lcom/google/api/client/json/f;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/google/api/client/util/h;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/i/a;->d(Ljava/io/Reader;)Lcom/google/api/client/json/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/f;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/json/i/a;->b(Ljava/io/InputStream;)Lcom/google/api/client/json/f;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/i/a;->d(Ljava/io/Reader;)Lcom/google/api/client/json/f;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/io/Reader;)Lcom/google/api/client/json/f;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/client/json/i/c;

    new-instance v1, Lcom/google/gson/stream/a;

    invoke-direct {v1, p1}, Lcom/google/gson/stream/a;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/i/c;-><init>(Lcom/google/api/client/json/i/a;Lcom/google/gson/stream/a;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/google/api/client/json/f;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/i/a;->d(Ljava/io/Reader;)Lcom/google/api/client/json/f;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/io/Writer;)Lcom/google/api/client/json/d;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/client/json/i/b;

    new-instance v1, Lcom/google/gson/stream/b;

    invoke-direct {v1, p1}, Lcom/google/gson/stream/b;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/json/i/b;-><init>(Lcom/google/api/client/json/i/a;Lcom/google/gson/stream/b;)V

    return-object v0
.end method
