.class public final Lokhttp3/internal/c/a;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lokhttp3/internal/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/c/a$f;,
        Lokhttp3/internal/c/a$c;,
        Lokhttp3/internal/c/a$e;,
        Lokhttp3/internal/c/a$a;,
        Lokhttp3/internal/c/a$b;,
        Lokhttp3/internal/c/a$d;
    }
.end annotation


# instance fields
.field final a:Lokhttp3/w;

.field final b:Lokhttp3/internal/connection/f;

.field final c:La/e;

.field final d:La/d;

.field e:I

.field private f:J


# direct methods
.method public constructor <init>(Lokhttp3/w;Lokhttp3/internal/connection/f;La/e;La/d;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lokhttp3/internal/c/a;->e:I

    const-wide/32 v0, 0x40000

    .line 87
    iput-wide v0, p0, Lokhttp3/internal/c/a;->f:J

    .line 91
    iput-object p1, p0, Lokhttp3/internal/c/a;->a:Lokhttp3/w;

    .line 92
    iput-object p2, p0, Lokhttp3/internal/c/a;->b:Lokhttp3/internal/connection/f;

    .line 93
    iput-object p3, p0, Lokhttp3/internal/c/a;->c:La/e;

    .line 94
    iput-object p4, p0, Lokhttp3/internal/c/a;->d:La/d;

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 5

    .line 215
    iget-object v0, p0, Lokhttp3/internal/c/a;->c:La/e;

    iget-wide v1, p0, Lokhttp3/internal/c/a;->f:J

    invoke-interface {v0, v1, v2}, La/e;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-wide v1, p0, Lokhttp3/internal/c/a;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokhttp3/internal/c/a;->f:J

    return-object v0
.end method


# virtual methods
.method public a(J)La/r;
    .locals 2

    .line 237
    iget v0, p0, Lokhttp3/internal/c/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 238
    iput v0, p0, Lokhttp3/internal/c/a;->e:I

    .line 239
    new-instance v0, Lokhttp3/internal/c/a$d;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/c/a$d;-><init>(Lokhttp3/internal/c/a;J)V

    return-object v0

    .line 237
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lokhttp3/internal/c/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lokhttp3/z;J)La/r;
    .locals 2

    const-string v0, "Transfer-Encoding"

    .line 98
    invoke-virtual {p1, v0}, Lokhttp3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lokhttp3/internal/c/a;->d()La/r;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p0, p2, p3}, Lokhttp3/internal/c/a;->a(J)La/r;

    move-result-object p1

    return-object p1

    .line 108
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lokhttp3/s;)La/s;
    .locals 2

    .line 249
    iget v0, p0, Lokhttp3/internal/c/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 250
    iput v0, p0, Lokhttp3/internal/c/a;->e:I

    .line 251
    new-instance v0, Lokhttp3/internal/c/a$c;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/c/a$c;-><init>(Lokhttp3/internal/c/a;Lokhttp3/s;)V

    return-object v0

    .line 249
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/c/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)Lokhttp3/ab$a;
    .locals 4

    .line 184
    iget v0, p0, Lokhttp3/internal/c/a;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/internal/c/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/c/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/b/k;->a(Ljava/lang/String;)Lokhttp3/internal/b/k;

    move-result-object v0

    .line 191
    new-instance v2, Lokhttp3/ab$a;

    invoke-direct {v2}, Lokhttp3/ab$a;-><init>()V

    iget-object v3, v0, Lokhttp3/internal/b/k;->a:Lokhttp3/x;

    .line 192
    invoke-virtual {v2, v3}, Lokhttp3/ab$a;->a(Lokhttp3/x;)Lokhttp3/ab$a;

    move-result-object v2

    iget v3, v0, Lokhttp3/internal/b/k;->b:I

    .line 193
    invoke-virtual {v2, v3}, Lokhttp3/ab$a;->a(I)Lokhttp3/ab$a;

    move-result-object v2

    iget-object v3, v0, Lokhttp3/internal/b/k;->c:Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v3}, Lokhttp3/ab$a;->a(Ljava/lang/String;)Lokhttp3/ab$a;

    move-result-object v2

    .line 195
    invoke-virtual {p0}, Lokhttp3/internal/c/a;->c()Lokhttp3/r;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/ab$a;->a(Lokhttp3/r;)Lokhttp3/ab$a;

    move-result-object v2

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 197
    iget p1, v0, Lokhttp3/internal/b/k;->b:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 199
    :cond_2
    iget p1, v0, Lokhttp3/internal/b/k;->b:I

    if-ne p1, v3, :cond_3

    .line 200
    iput v1, p0, Lokhttp3/internal/c/a;->e:I

    return-object v2

    :cond_3
    const/4 p1, 0x4

    .line 204
    iput p1, p0, Lokhttp3/internal/c/a;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 208
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lokhttp3/internal/c/a;->b:Lokhttp3/internal/connection/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 210
    throw v0
.end method

.method public a(Lokhttp3/ab;)Lokhttp3/ac;
    .locals 6

    .line 134
    iget-object v0, p0, Lokhttp3/internal/c/a;->b:Lokhttp3/internal/connection/f;

    iget-object v0, v0, Lokhttp3/internal/connection/f;->c:Lokhttp3/p;

    iget-object v1, p0, Lokhttp3/internal/c/a;->b:Lokhttp3/internal/connection/f;

    iget-object v1, v1, Lokhttp3/internal/connection/f;->b:Lokhttp3/e;

    invoke-virtual {v0, v1}, Lokhttp3/p;->f(Lokhttp3/e;)V

    const-string v0, "Content-Type"

    .line 135
    invoke-virtual {p1, v0}, Lokhttp3/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {p1}, Lokhttp3/internal/b/e;->b(Lokhttp3/ab;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 138
    invoke-virtual {p0, v1, v2}, Lokhttp3/internal/c/a;->b(J)La/s;

    move-result-object p1

    .line 139
    new-instance v3, Lokhttp3/internal/b/h;

    invoke-static {p1}, La/l;->a(La/s;)La/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lokhttp3/internal/b/h;-><init>(Ljava/lang/String;JLa/e;)V

    return-object v3

    :cond_0
    const-string v1, "Transfer-Encoding"

    .line 142
    invoke-virtual {p1, v1}, Lokhttp3/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p1}, Lokhttp3/ab;->a()Lokhttp3/z;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/z;->a()Lokhttp3/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/internal/c/a;->a(Lokhttp3/s;)La/s;

    move-result-object p1

    .line 144
    new-instance v1, Lokhttp3/internal/b/h;

    invoke-static {p1}, La/l;->a(La/s;)La/e;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lokhttp3/internal/b/h;-><init>(Ljava/lang/String;JLa/e;)V

    return-object v1

    .line 147
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/b/e;->a(Lokhttp3/ab;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {p0, v4, v5}, Lokhttp3/internal/c/a;->b(J)La/s;

    move-result-object p1

    .line 150
    new-instance v1, Lokhttp3/internal/b/h;

    invoke-static {p1}, La/l;->a(La/s;)La/e;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lokhttp3/internal/b/h;-><init>(Ljava/lang/String;JLa/e;)V

    return-object v1

    .line 153
    :cond_2
    new-instance p1, Lokhttp3/internal/b/h;

    invoke-virtual {p0}, Lokhttp3/internal/c/a;->e()La/s;

    move-result-object v1

    invoke-static {v1}, La/l;->a(La/s;)La/e;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lokhttp3/internal/b/h;-><init>(Ljava/lang/String;JLa/e;)V

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 162
    iget-object v0, p0, Lokhttp3/internal/c/a;->d:La/d;

    invoke-interface {v0}, La/d;->flush()V

    return-void
.end method

.method a(La/i;)V
    .locals 2

    .line 268
    invoke-virtual {p1}, La/i;->a()La/t;

    move-result-object v0

    .line 269
    sget-object v1, La/t;->c:La/t;

    invoke-virtual {p1, v1}, La/i;->a(La/t;)La/i;

    .line 270
    invoke-virtual {v0}, La/t;->f()La/t;

    .line 271
    invoke-virtual {v0}, La/t;->r_()La/t;

    return-void
.end method

.method public a(Lokhttp3/r;Ljava/lang/String;)V
    .locals 4

    .line 171
    iget v0, p0, Lokhttp3/internal/c/a;->e:I

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lokhttp3/internal/c/a;->d:La/d;

    invoke-interface {v0, p2}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, La/d;->b(Ljava/lang/String;)La/d;

    const/4 p2, 0x0

    .line 173
    invoke-virtual {p1}, Lokhttp3/r;->a()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 174
    iget-object v2, p0, Lokhttp3/internal/c/a;->d:La/d;

    invoke-virtual {p1, p2}, Lokhttp3/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object v2

    const-string v3, ": "

    .line 175
    invoke-interface {v2, v3}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object v2

    .line 176
    invoke-virtual {p1, p2}, Lokhttp3/r;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, La/d;->b(Ljava/lang/String;)La/d;

    move-result-object v2

    .line 177
    invoke-interface {v2, v0}, La/d;->b(Ljava/lang/String;)La/d;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/c/a;->d:La/d;

    invoke-interface {p1, v0}, La/d;->b(Ljava/lang/String;)La/d;

    const/4 p1, 0x1

    .line 180
    iput p1, p0, Lokhttp3/internal/c/a;->e:I

    return-void

    .line 171
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lokhttp3/internal/c/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lokhttp3/z;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lokhttp3/internal/c/a;->b:Lokhttp3/internal/connection/f;

    .line 129
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->c()Lokhttp3/internal/connection/c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->a()Lokhttp3/ad;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ad;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 128
    invoke-static {p1, v0}, Lokhttp3/internal/b/i;->a(Lokhttp3/z;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lokhttp3/z;->c()Lokhttp3/r;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/c/a;->a(Lokhttp3/r;Ljava/lang/String;)V

    return-void
.end method

.method public b(J)La/s;
    .locals 2

    .line 243
    iget v0, p0, Lokhttp3/internal/c/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 244
    iput v0, p0, Lokhttp3/internal/c/a;->e:I

    .line 245
    new-instance v0, Lokhttp3/internal/c/a$e;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/c/a$e;-><init>(Lokhttp3/internal/c/a;J)V

    return-object v0

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lokhttp3/internal/c/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    .line 166
    iget-object v0, p0, Lokhttp3/internal/c/a;->d:La/d;

    invoke-interface {v0}, La/d;->flush()V

    return-void
.end method

.method public c()Lokhttp3/r;
    .locals 3

    .line 222
    new-instance v0, Lokhttp3/r$a;

    invoke-direct {v0}, Lokhttp3/r$a;-><init>()V

    .line 224
    :goto_0
    invoke-direct {p0}, Lokhttp3/internal/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    sget-object v2, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/a;->a(Lokhttp3/r$a;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v0}, Lokhttp3/r$a;->a()Lokhttp3/r;

    move-result-object v0

    return-object v0
.end method

.method public d()La/r;
    .locals 3

    .line 231
    iget v0, p0, Lokhttp3/internal/c/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 232
    iput v0, p0, Lokhttp3/internal/c/a;->e:I

    .line 233
    new-instance v0, Lokhttp3/internal/c/a$b;

    invoke-direct {v0, p0}, Lokhttp3/internal/c/a$b;-><init>(Lokhttp3/internal/c/a;)V

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp3/internal/c/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()La/s;
    .locals 3

    .line 255
    iget v0, p0, Lokhttp3/internal/c/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 256
    iget-object v0, p0, Lokhttp3/internal/c/a;->b:Lokhttp3/internal/connection/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 257
    iput v1, p0, Lokhttp3/internal/c/a;->e:I

    .line 258
    invoke-virtual {v0}, Lokhttp3/internal/connection/f;->e()V

    .line 259
    new-instance v0, Lokhttp3/internal/c/a$f;

    invoke-direct {v0, p0}, Lokhttp3/internal/c/a$f;-><init>(Lokhttp3/internal/c/a;)V

    return-object v0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lokhttp3/internal/c/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
