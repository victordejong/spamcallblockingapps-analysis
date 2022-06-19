.class public final Lcom/bytedance/sdk/a/b/a/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/a/b/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/e/f$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/bytedance/sdk/a/a/f;

.field private static final c:Lcom/bytedance/sdk/a/a/f;

.field private static final d:Lcom/bytedance/sdk/a/a/f;

.field private static final e:Lcom/bytedance/sdk/a/a/f;

.field private static final f:Lcom/bytedance/sdk/a/a/f;

.field private static final g:Lcom/bytedance/sdk/a/a/f;

.field private static final h:Lcom/bytedance/sdk/a/a/f;

.field private static final i:Lcom/bytedance/sdk/a/a/f;

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/a/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/bytedance/sdk/a/b/a/b/g;

.field private final l:Lcom/bytedance/sdk/a/b/v;

.field private final m:Lcom/bytedance/sdk/a/b/t$a;

.field private final n:Lcom/bytedance/sdk/a/b/a/e/g;

.field private o:Lcom/bytedance/sdk/a/b/a/e/i;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "connection"

    .line 58
    invoke-static {v0}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/f;->b:Lcom/bytedance/sdk/a/a/f;

    const-string v1, "host"

    .line 59
    invoke-static {v1}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/a/b/a/e/f;->c:Lcom/bytedance/sdk/a/a/f;

    const-string v2, "keep-alive"

    .line 60
    invoke-static {v2}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/a/b/a/e/f;->d:Lcom/bytedance/sdk/a/a/f;

    const-string v3, "proxy-connection"

    .line 61
    invoke-static {v3}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v3

    sput-object v3, Lcom/bytedance/sdk/a/b/a/e/f;->e:Lcom/bytedance/sdk/a/a/f;

    const-string v4, "transfer-encoding"

    .line 62
    invoke-static {v4}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v4

    sput-object v4, Lcom/bytedance/sdk/a/b/a/e/f;->f:Lcom/bytedance/sdk/a/a/f;

    const-string v5, "te"

    .line 63
    invoke-static {v5}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v5

    sput-object v5, Lcom/bytedance/sdk/a/b/a/e/f;->g:Lcom/bytedance/sdk/a/a/f;

    const-string v6, "encoding"

    .line 64
    invoke-static {v6}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v6

    sput-object v6, Lcom/bytedance/sdk/a/b/a/e/f;->h:Lcom/bytedance/sdk/a/a/f;

    const-string v7, "upgrade"

    .line 65
    invoke-static {v7}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v7

    sput-object v7, Lcom/bytedance/sdk/a/b/a/e/f;->i:Lcom/bytedance/sdk/a/a/f;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/bytedance/sdk/a/a/f;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v10, 0x1

    aput-object v1, v8, v10

    const/4 v11, 0x2

    aput-object v2, v8, v11

    const/4 v12, 0x3

    aput-object v3, v8, v12

    const/4 v13, 0x4

    aput-object v5, v8, v13

    const/4 v14, 0x5

    aput-object v4, v8, v14

    const/4 v15, 0x6

    aput-object v6, v8, v15

    const/16 v16, 0x7

    aput-object v7, v8, v16

    .line 70
    sget-object v17, Lcom/bytedance/sdk/a/b/a/e/c;->c:Lcom/bytedance/sdk/a/a/f;

    const/16 v15, 0x8

    aput-object v17, v8, v15

    sget-object v17, Lcom/bytedance/sdk/a/b/a/e/c;->d:Lcom/bytedance/sdk/a/a/f;

    const/16 v18, 0x9

    aput-object v17, v8, v18

    sget-object v17, Lcom/bytedance/sdk/a/b/a/e/c;->e:Lcom/bytedance/sdk/a/a/f;

    const/16 v18, 0xa

    aput-object v17, v8, v18

    sget-object v17, Lcom/bytedance/sdk/a/b/a/e/c;->f:Lcom/bytedance/sdk/a/a/f;

    const/16 v18, 0xb

    aput-object v17, v8, v18

    invoke-static {v8}, Lcom/bytedance/sdk/a/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sput-object v8, Lcom/bytedance/sdk/a/b/a/e/f;->j:Ljava/util/List;

    new-array v8, v15, [Lcom/bytedance/sdk/a/a/f;

    aput-object v0, v8, v9

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    aput-object v3, v8, v12

    aput-object v5, v8, v13

    aput-object v4, v8, v14

    const/4 v0, 0x6

    aput-object v6, v8, v0

    aput-object v7, v8, v16

    .line 83
    invoke-static {v8}, Lcom/bytedance/sdk/a/b/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/f;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/a/b/v;Lcom/bytedance/sdk/a/b/t$a;Lcom/bytedance/sdk/a/b/a/b/g;Lcom/bytedance/sdk/a/b/a/e/g;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/f;->l:Lcom/bytedance/sdk/a/b/v;

    .line 102
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/f;->m:Lcom/bytedance/sdk/a/b/t$a;

    .line 103
    iput-object p3, p0, Lcom/bytedance/sdk/a/b/a/e/f;->a:Lcom/bytedance/sdk/a/b/a/b/g;

    .line 104
    iput-object p4, p0, Lcom/bytedance/sdk/a/b/a/e/f;->n:Lcom/bytedance/sdk/a/b/a/e/g;

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/bytedance/sdk/a/b/aa$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)",
            "Lcom/bytedance/sdk/a/b/aa$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    new-instance v0, Lcom/bytedance/sdk/a/b/r$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/r$a;-><init>()V

    .line 170
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 171
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/a/b/a/e/c;

    if-nez v5, :cond_0

    if-eqz v4, :cond_2

    .line 176
    iget v5, v4, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 178
    new-instance v0, Lcom/bytedance/sdk/a/b/r$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/r$a;-><init>()V

    move-object v4, v2

    goto :goto_1

    .line 183
    :cond_0
    iget-object v6, v5, Lcom/bytedance/sdk/a/b/a/e/c;->g:Lcom/bytedance/sdk/a/a/f;

    .line 184
    iget-object v5, v5, Lcom/bytedance/sdk/a/b/a/e/c;->h:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v5}, Lcom/bytedance/sdk/a/a/f;->a()Ljava/lang/String;

    move-result-object v5

    .line 185
    sget-object v7, Lcom/bytedance/sdk/a/b/a/e/c;->b:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/a/a/f;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "HTTP/1.1 "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/a/b/a/c/k;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/a/c/k;

    move-result-object v4

    goto :goto_1

    .line 187
    :cond_1
    sget-object v7, Lcom/bytedance/sdk/a/b/a/e/f;->k:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 188
    sget-object v7, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    invoke-virtual {v6}, Lcom/bytedance/sdk/a/a/f;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v0, v6, v5}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/r$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 194
    new-instance p0, Lcom/bytedance/sdk/a/b/aa$a;

    invoke-direct {p0}, Lcom/bytedance/sdk/a/b/aa$a;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/a/b/w;->d:Lcom/bytedance/sdk/a/b/w;

    .line 195
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/w;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p0

    iget v1, v4, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    .line 196
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(I)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p0

    iget-object v1, v4, Lcom/bytedance/sdk/a/b/a/c/k;->c:Ljava/lang/String;

    .line 197
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/aa$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p0

    .line 198
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/r$a;->a()Lcom/bytedance/sdk/a/b/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/aa$a;->a(Lcom/bytedance/sdk/a/b/r;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object p0

    return-object p0

    .line 192
    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/bytedance/sdk/a/b/y;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/y;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y;->c()Lcom/bytedance/sdk/a/b/r;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/c;

    sget-object v3, Lcom/bytedance/sdk/a/b/a/e/c;->c:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/c;

    sget-object v3, Lcom/bytedance/sdk/a/b/a/e/c;->d:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/a/b/a/c/i;->a(Lcom/bytedance/sdk/a/b/s;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    .line 148
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/a/b/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    new-instance v3, Lcom/bytedance/sdk/a/b/a/e/c;

    sget-object v4, Lcom/bytedance/sdk/a/b/a/e/c;->f:Lcom/bytedance/sdk/a/a/f;

    invoke-direct {v3, v4, v2}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/a/b/a/e/c;

    sget-object v3, Lcom/bytedance/sdk/a/b/a/e/c;->e:Lcom/bytedance/sdk/a/a/f;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y;->a()Lcom/bytedance/sdk/a/b/s;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/s;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 154
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_2

    .line 156
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/a/a/f;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/a/f;

    move-result-object v3

    .line 157
    sget-object v4, Lcom/bytedance/sdk/a/b/a/e/f;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 158
    new-instance v4, Lcom/bytedance/sdk/a/b/a/e/c;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/bytedance/sdk/a/b/a/e/c;-><init>(Lcom/bytedance/sdk/a/a/f;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/bytedance/sdk/a/b/y;J)Lcom/bytedance/sdk/a/a/r;
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/i;->h()Lcom/bytedance/sdk/a/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Z)Lcom/bytedance/sdk/a/b/aa$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->d()Ljava/util/List;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/bytedance/sdk/a/b/a/e/f;->a(Ljava/util/List;)Lcom/bytedance/sdk/a/b/aa$a;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 137
    sget-object p1, Lcom/bytedance/sdk/a/b/a/a;->a:Lcom/bytedance/sdk/a/b/a/a;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/a;->a(Lcom/bytedance/sdk/a/b/aa$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/ab;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->a:Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v0, v0, Lcom/bytedance/sdk/a/b/a/b/g;->c:Lcom/bytedance/sdk/a/b/p;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/f;->a:Lcom/bytedance/sdk/a/b/a/b/g;

    iget-object v1, v1, Lcom/bytedance/sdk/a/b/a/b/g;->b:Lcom/bytedance/sdk/a/b/e;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/p;->f(Lcom/bytedance/sdk/a/b/e;)V

    const-string v0, "Content-Type"

    .line 204
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/c/e;->a(Lcom/bytedance/sdk/a/b/aa;)J

    move-result-wide v1

    .line 206
    new-instance p1, Lcom/bytedance/sdk/a/b/a/e/f$a;

    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/a/b/a/e/i;->g()Lcom/bytedance/sdk/a/a/s;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lcom/bytedance/sdk/a/b/a/e/f$a;-><init>(Lcom/bytedance/sdk/a/b/a/e/f;Lcom/bytedance/sdk/a/a/s;)V

    .line 207
    new-instance v3, Lcom/bytedance/sdk/a/b/a/c/h;

    invoke-static {p1}, Lcom/bytedance/sdk/a/a/l;->a(Lcom/bytedance/sdk/a/a/s;)Lcom/bytedance/sdk/a/a/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/bytedance/sdk/a/b/a/c/h;-><init>(Ljava/lang/String;JLcom/bytedance/sdk/a/a/e;)V

    return-object v3
.end method

.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->n:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/g;->b()V

    return-void
.end method

.method public final a(Lcom/bytedance/sdk/a/b/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/y;->d()Lcom/bytedance/sdk/a/b/z;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/a/b/a/e/f;->b(Lcom/bytedance/sdk/a/b/y;)Ljava/util/List;

    move-result-object p1

    .line 118
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/f;->n:Lcom/bytedance/sdk/a/b/a/e/g;

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/a/b/a/e/g;->a(Ljava/util/List;Z)Lcom/bytedance/sdk/a/b/a/e/i;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    .line 119
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/i;->e()Lcom/bytedance/sdk/a/a/t;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->m:Lcom/bytedance/sdk/a/b/t$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/b/t$a;->c()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/a/a/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/a/t;

    .line 120
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/i;->f()Lcom/bytedance/sdk/a/a/t;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->m:Lcom/bytedance/sdk/a/b/t$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/a/b/t$a;->d()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/a/a/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/a/t;

    return-void
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/f;->o:Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i;->h()Lcom/bytedance/sdk/a/a/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/a/a/r;->close()V

    return-void
.end method
