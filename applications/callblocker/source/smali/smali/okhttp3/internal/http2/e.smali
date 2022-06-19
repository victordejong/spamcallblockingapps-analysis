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
            "Ljava/util/List",
            "<",
            "La/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lokhttp3/internal/connection/f;

.field private final l:Lokhttp3/x;

.field private final m:Lokhttp3/u$a;

.field private final n:Lokhttp3/internal/http2/f;

.field private o:Lokhttp3/internal/http2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string/jumbo v0, "connection"

    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->b:La/f;

    .line 56
    const-string/jumbo v0, "host"

    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->c:La/f;

    .line 57
    const-string/jumbo v0, "keep-alive"

    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->d:La/f;

    .line 58
    const-string/jumbo v0, "proxy-connection"

    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->e:La/f;

    .line 59
    const-string/jumbo v0, "transfer-encoding"

    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->f:La/f;

    .line 60
    const-string/jumbo v0, "te"

    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->g:La/f;

    .line 61
    const-string/jumbo v0, "encoding"

    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->h:La/f;

    .line 62
    const-string/jumbo v0, "upgrade"

    invoke-static {v0}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->i:La/f;

    .line 65
    const/16 v0, 0xc

    new-array v0, v0, [La/f;

    sget-object v1, Lokhttp3/internal/http2/e;->b:La/f;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http2/e;->c:La/f;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http2/e;->d:La/f;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http2/e;->e:La/f;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http2/e;->g:La/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/http2/e;->f:La/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/http2/e;->h:La/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/http2/e;->i:La/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/internal/http2/b;->c:La/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/internal/http2/b;->d:La/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/internal/http2/b;->e:La/f;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lokhttp3/internal/http2/b;->f:La/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->j:Ljava/util/List;

    .line 78
    const/16 v0, 0x8

    new-array v0, v0, [La/f;

    sget-object v1, Lokhttp3/internal/http2/e;->b:La/f;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/internal/http2/e;->c:La/f;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/internal/http2/e;->d:La/f;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/internal/http2/e;->e:La/f;

    aput-object v1, v0, v6

    sget-object v1, Lokhttp3/internal/http2/e;->g:La/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/internal/http2/e;->f:La/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/internal/http2/e;->h:La/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/internal/http2/e;->i:La/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/e;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/x;Lokhttp3/u$a;Lokhttp3/internal/connection/f;Lokhttp3/internal/http2/f;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lokhttp3/internal/http2/e;->l:Lokhttp3/x;

    .line 97
    iput-object p2, p0, Lokhttp3/internal/http2/e;->m:Lokhttp3/u$a;

    .line 98
    iput-object p3, p0, Lokhttp3/internal/http2/e;->a:Lokhttp3/internal/connection/f;

    .line 99
    iput-object p4, p0, Lokhttp3/internal/http2/e;->n:Lokhttp3/internal/http2/f;

    .line 100
    return-void
.end method

.method public static a(Ljava/util/List;)Lokhttp3/ac$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/b;",
            ">;)",
            "Lokhttp3/ac$a;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 156
    .line 157
    new-instance v1, Lokhttp3/s$a;

    invoke-direct {v1}, Lokhttp3/s$a;-><init>()V

    .line 158
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    move-object v2, v3

    :goto_0
    if-ge v4, v5, :cond_3

    .line 159
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/http2/b;

    .line 163
    if-nez v0, :cond_0

    .line 164
    if-eqz v2, :cond_2

    iget v0, v2, Lokhttp3/internal/b/k;->b:I

    const/16 v6, 0x64

    if-ne v0, v6, :cond_2

    .line 166
    new-instance v0, Lokhttp3/s$a;

    invoke-direct {v0}, Lokhttp3/s$a;-><init>()V

    move-object v2, v3

    .line 158
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v6, v0, Lokhttp3/internal/http2/b;->g:La/f;

    .line 172
    iget-object v0, v0, Lokhttp3/internal/http2/b;->h:La/f;

    invoke-virtual {v0}, La/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 173
    sget-object v7, Lokhttp3/internal/http2/b;->b:La/f;

    invoke-virtual {v6, v7}, La/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HTTP/1.1 "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/b/k;->a(Ljava/lang/String;)Lokhttp3/internal/b/k;

    move-result-object v2

    move-object v0, v1

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

    invoke-virtual {v7, v1, v6, v0}, Lokhttp3/internal/a;->a(Lokhttp3/s$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 179
    :cond_3
    if-nez v2, :cond_4

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_4
    new-instance v0, Lokhttp3/ac$a;

    invoke-direct {v0}, Lokhttp3/ac$a;-><init>()V

    sget-object v3, Lokhttp3/y;->d:Lokhttp3/y;

    .line 182
    invoke-virtual {v0, v3}, Lokhttp3/ac$a;->a(Lokhttp3/y;)Lokhttp3/ac$a;

    move-result-object v0

    iget v3, v2, Lokhttp3/internal/b/k;->b:I

    .line 183
    invoke-virtual {v0, v3}, Lokhttp3/ac$a;->a(I)Lokhttp3/ac$a;

    move-result-object v0

    iget-object v2, v2, Lokhttp3/internal/b/k;->c:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v2}, Lokhttp3/ac$a;->a(Ljava/lang/String;)Lokhttp3/ac$a;

    move-result-object v0

    .line 185
    invoke-virtual {v1}, Lokhttp3/s$a;->a()Lokhttp3/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/ac$a;->a(Lokhttp3/s;)Lokhttp3/ac$a;

    move-result-object v0

    .line 181
    return-object v0
.end method

.method public static b(Lokhttp3/aa;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/aa;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/http2/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lokhttp3/aa;->c()Lokhttp3/s;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lokhttp3/s;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    new-instance v0, Lokhttp3/internal/http2/b;

    sget-object v3, Lokhttp3/internal/http2/b;->c:La/f;

    invoke-virtual {p0}, Lokhttp3/aa;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lokhttp3/internal/http2/b;-><init>(La/f;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Lokhttp3/internal/http2/b;

    sget-object v3, Lokhttp3/internal/http2/b;->d:La/f;

    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/t;

    move-result-object v4

    invoke-static {v4}, Lokhttp3/internal/b/i;->a(Lokhttp3/t;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lokhttp3/internal/http2/b;-><init>(La/f;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string/jumbo v0, "Host"

    invoke-virtual {p0, v0}, Lokhttp3/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    new-instance v3, Lokhttp3/internal/http2/b;

    sget-object v4, Lokhttp3/internal/http2/b;->f:La/f;

    invoke-direct {v3, v4, v0}, Lokhttp3/internal/http2/b;-><init>(La/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    new-instance v0, Lokhttp3/internal/http2/b;

    sget-object v3, Lokhttp3/internal/http2/b;->e:La/f;

    invoke-virtual {p0}, Lokhttp3/aa;->a()Lokhttp3/t;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lokhttp3/internal/http2/b;-><init>(La/f;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const/4 v0, 0x0

    invoke-virtual {v1}, Lokhttp3/s;->a()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_2

    .line 146
    invoke-virtual {v1, v0}, Lokhttp3/s;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, La/f;->a(Ljava/lang/String;)La/f;

    move-result-object v4

    .line 147
    sget-object v5, Lokhttp3/internal/http2/e;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 148
    new-instance v5, Lokhttp3/internal/http2/b;

    invoke-virtual {v1, v0}, Lokhttp3/s;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lokhttp3/internal/http2/b;-><init>(La/f;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_2
    return-object v2
.end method


# virtual methods
.method public a(Lokhttp3/aa;J)La/r;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->h()La/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lokhttp3/ac$a;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->d()Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lokhttp3/internal/http2/e;->a(Ljava/util/List;)Lokhttp3/ac$a;

    move-result-object v0

    .line 127
    if-eqz p1, :cond_0

    sget-object v1, Lokhttp3/internal/a;->a:Lokhttp3/internal/a;

    invoke-virtual {v1, v0}, Lokhttp3/internal/a;->a(Lokhttp3/ac$a;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 130
    :cond_0
    return-object v0
.end method

.method public a(Lokhttp3/ac;)Lokhttp3/ad;
    .locals 5

    .prologue
    .line 189
    iget-object v0, p0, Lokhttp3/internal/http2/e;->a:Lokhttp3/internal/connection/f;

    iget-object v0, v0, Lokhttp3/internal/connection/f;->c:Lokhttp3/p;

    iget-object v1, p0, Lokhttp3/internal/http2/e;->a:Lokhttp3/internal/connection/f;

    iget-object v1, v1, Lokhttp3/internal/connection/f;->b:Lokhttp3/e;

    invoke-virtual {v0, v1}, Lokhttp3/p;->f(Lokhttp3/e;)V

    .line 190
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p1, v0}, Lokhttp3/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p1}, Lokhttp3/internal/b/e;->a(Lokhttp3/ac;)J

    move-result-wide v2

    .line 192
    new-instance v1, Lokhttp3/internal/http2/e$a;

    iget-object v4, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    invoke-virtual {v4}, Lokhttp3/internal/http2/h;->g()La/s;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lokhttp3/internal/http2/e$a;-><init>(Lokhttp3/internal/http2/e;La/s;)V

    .line 193
    new-instance v4, Lokhttp3/internal/b/h;

    invoke-static {v1}, La/l;->a(La/s;)La/e;

    move-result-object v1

    invoke-direct {v4, v0, v2, v3, v1}, Lokhttp3/internal/b/h;-><init>(Ljava/lang/String;JLa/e;)V

    return-object v4
.end method

.method public a()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lokhttp3/internal/http2/e;->n:Lokhttp3/internal/http2/f;

    invoke-virtual {v0}, Lokhttp3/internal/http2/f;->b()V

    .line 118
    return-void
.end method

.method public a(Lokhttp3/aa;)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Lokhttp3/aa;->d()Lokhttp3/ab;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 110
    :goto_1
    invoke-static {p1}, Lokhttp3/internal/http2/e;->b(Lokhttp3/aa;)Ljava/util/List;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lokhttp3/internal/http2/e;->n:Lokhttp3/internal/http2/f;

    invoke-virtual {v2, v1, v0}, Lokhttp3/internal/http2/f;->a(Ljava/util/List;Z)Lokhttp3/internal/http2/h;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    .line 112
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->e()La/t;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http2/e;->m:Lokhttp3/u$a;

    invoke-interface {v1}, Lokhttp3/u$a;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, La/t;->a(JLjava/util/concurrent/TimeUnit;)La/t;

    .line 113
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->f()La/t;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/http2/e;->m:Lokhttp3/u$a;

    invoke-interface {v1}, Lokhttp3/u$a;->d()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, La/t;->a(JLjava/util/concurrent/TimeUnit;)La/t;

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->h()La/r;

    move-result-object v0

    invoke-interface {v0}, La/r;->close()V

    .line 122
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http2/e;->o:Lokhttp3/internal/http2/h;

    sget-object v1, Lokhttp3/internal/http2/a;->f:Lokhttp3/internal/http2/a;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/h;->b(Lokhttp3/internal/http2/a;)V

    .line 198
    :cond_0
    return-void
.end method
