.class public final Lokhttp3/internal/http2/e;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lokhttp3/internal/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/e$a;
    }
.end annotation


# static fields
.field private static final b:La/f;

.field private static final c:La/f;

.field private static final d:La/f;

.field private static final e:La/f;

.field private static final f:La/f;

.field private static final g:La/f;

.field private static final h:La/f;

.field private static final i:La/f;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lokhttp3/internal/connection/f;

.field private final l:Lokhttp3/w;

.field private final m:Lokhttp3/t$a;

.field private final n:Lokhttp3/internal/http2/f;

.field private o:Lokhttp3/internal/http2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    .line 55
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->b:La/f;

    const-string v0, "host"

    .line 56
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->c:La/f;

    const-string v0, "keep-alive"

    .line 57
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->d:La/f;

    const-string v0, "proxy-connection"

    .line 58
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->e:La/f;

    const-string v0, "transfer-encoding"

    .line 59
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->f:La/f;

    const-string v0, "te"

    .line 60
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->g:La/f;

    const-string v0, "encoding"

    .line 61
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->h:La/f;

    const-string v0, "upgrade"

    .line 62
    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->i:La/f;

    const/16 v0, 0xc

    new-array v0, v0, [La/f;

    .line 65
    sget-object v1, Lokhttp3/internal/http2/e;->b:La/f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/http2/e;->c:La/f;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http2/e;->d:La/f;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http2/e;->e:La/f;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http2/e;->g:La/f;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http2/e;->f:La/f;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lokhttp3/internal/http2/e;->h:La/f;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lokhttp3/internal/http2/e;->i:La/f;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lokhttp3/internal/http2/b;->c:La/f;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lokhttp3/internal/http2/b;->d:La/f;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lokhttp3/internal/http2/b;->e:La/f;

    const/16 v11, 0xa

    aput-object v1, v0, v11

    sget-object v1, Lokhttp3/internal/http2/b;->f:La/f;

    const/16 v11, 0xb

    aput-object v1, v0, v11

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->j:Ljava/util/List;

    new-array v0, v10, [La/f;

    .line 78
    sget-object v1, Lokhttp3/internal/http2/e;->b:La/f;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/internal/http2/e;->c:La/f;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http2/e;->d:La/f;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http2/e;->e:La/f;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http2/e;->g:La/f;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http2/e;->f:La/f;

    aput-object v1, v0, v7

    sget-object v1, Lokhttp3/internal/http2/e;->h:La/f;

    aput-object v1, v0, v8

    sget-object v1, Lokhttp3/internal/http2/e;->i:La/f;

    aput-object v1, v0, v9

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/w;Lokhttp3/t$a;Lokhttp3/internal/connection/f;Lokhttp3/internal/http2/f;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lokhttp3/internal/http2/e;->l:Lokhttp3/w;

    .line 97
    iput-object p2, p0, Lokhttp3/internal/http2/e;->m:Lokhttp3/t$a;

    .line 98
    iput-object p3, p0, Lokhttp3/internal/http2/e;->a:Lokhttp3/internal/connection/f;

    .line 99
    iput-object p4, p0, Lokhttp3/internal/http2/e;->n:Lokhttp3/internal/http2/f;

    return-void
.end method

.method public static a(Ljava/util/List;)Lokhttp3/ab$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/b;",
            ">;)",
            "Lokhttp3/ab$a;"
        }
    .end annotation

    .line 157
    new-instance v0, Lokhttp3/r$a;

    invoke-direct {v0}, Lokhttp3/r$a;-><init>()V

    .line 158
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move-object v0, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 159
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/internal/http2/b;

    if-nez v5, :cond_0

    if-eqz v0, :cond_2

    .line 164
    iget v5, v0, Lokhttp3/internal/b/k;->b:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 166
    new-instance v0, Lokhttp3/r$a;

    invoke-direct {v0}, Lokhttp3/r$a;-><init>()V

    move-object v4, v0

    move-object v0, v2

    goto :goto_1

    .line 171
    :cond_0
    iget-object v6, v5, Lokhttp3/internal/http2/b;->g:La/f;

    .line 172
    iget-object v5, v5, Lokhttp3/internal/http2/b;->h:La/f;

    invoke-virtual {v5}, La/f;->a()Ljava/lang/String;

    move-result-object v5

    .line 173
    sget-object v7, Lokhttp3/internal/http2/b;->b:La/f;

    invoke-virtual {v6, v7}, La/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/b/k;->a(Ljava/lang/String;)Lokhttp3/internal/b/k;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_1
    sget-object v7, Lokhttp3/internal/http2/e;->k:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 176
    sget-object v7, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    invoke-virtual {v6}, La/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v4, v6, v5}, Lokhttp3/internal/a;->a(Lokhttp3/r$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 181
    new-instance p0, Lokhttp3/ab$a;

    invoke-direct {p0}, Lokhttp3/ab$a;-><init>()V

    sget-object v1, Lokhttp3/x;->d:Lokhttp3/x;

    .line 182
    invoke-virtual {p0, v1}, Lokhttp3/ab$a;->a(Lokhttp3/x;)Lokhttp3/ab$a;

    move-result-object p0

    iget v1, v0, Lokhttp3/internal/b/k;->b:I

    .line 183
    invoke-virtual {p0, v1}, Lokhttp3/ab$a;->a(I)Lokhttp3/ab$a;

    move-result-object p0

    iget-object v0, v0, Lokhttp3/internal/b/k;->c:Ljava/lang/String;

    .line 184
    invoke-virtual {p0, v0}, Lokhttp3/ab$a;->a(Ljava/lang/String;)Lokhttp3/ab$a;

    move-result-object p0

    .line 185
    invoke-virtual {v4}, Lokhttp3/r$a;->a()Lokhttp3/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/ab$a;->a(Lokhttp3/r;)Lokhttp3/ab$a;

    move-result-object p0

    return-object p0

    .line 179
    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lokhttp3/z;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/z;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/b;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lokhttp3/z;->c()Lokhttp3/r;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lokhttp3/r;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    new-instance v2, Lokhttp3/internal/http2/b;

    sget-object v3, Lokhttp3/internal/http2/b;->c:La/f;

    invoke-virtual {p0}, Lokhttp3/z;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/b;-><init>(La/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v2, Lokhttp3/internal/http2/b;

    sget-object v3, Lokhttp3/internal/http2/b;->d:La/f;

    invoke-virtual {p0}, Lokhttp3/z;->a()Lokhttp3/s;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/b/i;->a(Lokhttp3/s;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lokhttp3/internal/http2/b;-><init>(La/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 138
    invoke-virtual {p0, v2}, Lokhttp3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    new-instance v3, Lokhttp3/internal/http2/b;

    sget-object v4, Lokhttp3/internal/http2/b;->f:La/f;

    invoke-direct {v3, v4, v2}, Lokhttp3/internal/http2/b;-><init>(La/f;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    new-instance v2, Lokhttp3/internal/http2/b;

    sget-object v3, Lokhttp3/internal/http2/b;->e:La/f;

    invoke-virtual {p0}, Lokhttp3/z;->a()Lokhttp3/s;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/s;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lokhttp3/internal/http2/b;-><init>(La/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 144
    invoke-virtual {v0}, Lokhttp3/r;->a()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    .line 146
    invoke-virtual {v0, p0}, Lokhttp3/r;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v3

    .line 147
    sget-object v4, Lokhttp3/internal/http2/e;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 148
    new-instance v4, Lokhttp3/internal/http2/b;

    invoke-virtual {v0, p0}, Lokhttp3/r;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lokhttp3/internal/http2/b;-><init>(La/f;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a(Lokhttp3/z;J)La/r;
    .locals 0

    .line 103
    iget-object p1, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->h()La/r;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lokhttp3/ab$a;
    .locals 2

    .line 125
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->d()Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lokhttp3/internal/http2/e;->a(Ljava/util/List;)Lokhttp3/ab$a;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 127
    sget-object p1, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    invoke-virtual {p1, v0}, Lokhttp3/internal/a;->a(Lokhttp3/ab$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public a(Lokhttp3/ab;)Lokhttp3/ac;
    .locals 4

    .line 189
    iget-object v0, p0, Lokhttp3/internal/http2/e;->a:Lokhttp3/internal/connection/f;

    iget-object v0, v0, Lokhttp3/internal/connection/f;->c:Lokhttp3/p;

    iget-object v1, p0, Lokhttp3/internal/http2/e;->a:Lokhttp3/internal/connection/f;

    iget-object v1, v1, Lokhttp3/internal/connection/f;->b:Lokhttp3/e;

    invoke-virtual {v0, v1}, Lokhttp3/p;->f(Lokhttp3/e;)V

    const-string v0, "Content-Type"

    .line 190
    invoke-virtual {p1, v0}, Lokhttp3/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p1}, Lokhttp3/internal/b/e;->a(Lokhttp3/ab;)J

    move-result-wide v1

    .line 192
    new-instance p1, Lokhttp3/internal/http2/e$a;

    iget-object v3, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    invoke-virtual {v3}, Lokhttp3/internal/http2/h;->g()La/s;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lokhttp3/internal/http2/e$a;-><init>(Lokhttp3/internal/http2/e;La/s;)V

    .line 193
    new-instance v3, Lokhttp3/internal/b/h;

    invoke-static {p1}, La/l;->a(La/s;)La/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lokhttp3/internal/b/h;-><init>(Ljava/lang/String;JLa/e;)V

    return-object v3
.end method

.method public a()V
    .locals 1

    .line 117
    iget-object v0, p0, Lokhttp3/internal/http2/e;->n:Lokhttp3/internal/http2/f;

    invoke-virtual {v0}, Lokhttp3/internal/http2/f;->b()V

    return-void
.end method

.method public a(Lokhttp3/z;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Lokhttp3/z;->d()Lokhttp3/aa;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-static {p1}, Lokhttp3/internal/http2/e;->b(Lokhttp3/z;)Ljava/util/List;

    move-result-object p1

    .line 111
    iget-object v1, p0, Lokhttp3/internal/http2/e;->n:Lokhttp3/internal/http2/f;

    invoke-virtual {v1, p1, v0}, Lokhttp3/internal/http2/f;->a(Ljava/util/List;Z)Lokhttp3/internal/http2/h;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    .line 112
    iget-object p1, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->e()La/t;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/http2/e;->m:Lokhttp3/t$a;

    invoke-interface {v0}, Lokhttp3/t$a;->c()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, La/t;->a(JLjava/util/concurrent/TimeUnit;)La/t;

    .line 113
    iget-object p1, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->f()La/t;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/http2/e;->m:Lokhttp3/t$a;

    invoke-interface {v0}, Lokhttp3/t$a;->d()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, La/t;->a(JLjava/util/concurrent/TimeUnit;)La/t;

    return-void
.end method

.method public b()V
    .locals 1

    .line 121
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->h()La/r;

    move-result-object v0

    invoke-interface {v0}, La/r;->close()V

    return-void
.end method
