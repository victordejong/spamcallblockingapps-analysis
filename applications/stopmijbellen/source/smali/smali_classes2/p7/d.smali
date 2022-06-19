.class public Lp7/d;
.super Ln7/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp7/d$i;,
        Lp7/d$f;,
        Lp7/d$e;,
        Lp7/d$h;,
        Lp7/d$g;,
        Lp7/d$d;,
        Lp7/d$b;,
        Lp7/d$c;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lu7/d;

.field public d:Lk7/h;

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln7/d0;-><init>()V

    return-void
.end method

.method public static i(Ln7/a;Ljava/io/File;J)Lp7/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln7/a;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln7/g;

    .line 3
    instance-of v1, v1, Lp7/d;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Response cache already added to http client"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance v0, Lp7/d;

    invoke-direct {v0}, Lp7/d;-><init>()V

    .line 6
    iget-object v1, p0, Ln7/a;->d:Lk7/h;

    .line 7
    iput-object v1, v0, Lp7/d;->d:Lk7/h;

    .line 8
    new-instance v1, Lu7/d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lu7/d;-><init>(Ljava/io/File;JZ)V

    iput-object v1, v0, Lp7/d;->c:Lu7/d;

    .line 9
    iget-object p0, p0, Ln7/a;->a:Ljava/util/List;

    invoke-interface {p0, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public d(Ln7/g$b;)V
    .locals 14

    .line 1
    iget-object v0, p1, Ln7/g$c;->e:Lk7/j;

    const-class v1, Lp7/d$f;

    invoke-static {v0, v1}, Li4/d;->w(Lk7/j;Ljava/lang/Class;)Lk7/j;

    move-result-object v0

    check-cast v0, Lp7/d$f;

    const-string v1, "X-Served-From"

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Ln7/g$c;->f:Ln7/g$i;

    check-cast p1, Ln7/j;

    .line 3
    iget-object p1, p1, Ln7/j;->k:Ln7/w;

    const-string v0, "cache"

    .line 4
    invoke-virtual {p1, v1, v0}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    return-void

    .line 5
    :cond_0
    iget-object v0, p1, Ln7/g$e;->a:Ll1/p;

    .line 6
    iget-object v0, v0, Ll1/p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Hashtable;

    const-string v2, "cache-data"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Lp7/d$c;

    .line 8
    iget-object v3, p1, Ln7/g$c;->f:Ln7/g$i;

    check-cast v3, Ln7/j;

    .line 9
    iget-object v3, v3, Ln7/j;->k:Ln7/w;

    .line 10
    iget-object v3, v3, Ln7/w;->a:Ln7/a0;

    .line 11
    invoke-static {v3}, Lp7/b;->c(Ljava/util/Map;)Lp7/b;

    move-result-object v3

    const-string v4, "Content-Length"

    .line 12
    invoke-virtual {v3, v4}, Lp7/b;->g(Ljava/lang/String;)V

    .line 13
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Ln7/g$c;->f:Ln7/g$i;

    check-cast v6, Ln7/j;

    .line 14
    iget-object v7, v6, Ln7/j;->n:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    .line 15
    iget v6, v6, Ln7/j;->m:I

    .line 16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p1, Ln7/g$c;->f:Ln7/g$i;

    check-cast v6, Ln7/j;

    .line 17
    iget-object v6, v6, Ln7/j;->o:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "%s %s %s"

    .line 18
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lp7/b;->h(Ljava/lang/String;)V

    .line 19
    new-instance v4, Lp7/e;

    iget-object v5, p1, Ln7/g$e;->b:Ln7/h;

    .line 20
    iget-object v5, v5, Ln7/h;->c:Landroid/net/Uri;

    .line 21
    invoke-direct {v4, v5, v3}, Lp7/e;-><init>(Landroid/net/Uri;Lp7/b;)V

    .line 22
    iget-object v3, p1, Ln7/g$e;->a:Ll1/p;

    .line 23
    iget-object v3, v3, Ll1/p;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/Hashtable;

    const-string v5, "response-headers"

    invoke-virtual {v3, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    .line 24
    iget-object v5, v0, Lp7/d$c;->d:Lp7/e;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v6, v4, Lp7/e;->b:Lp7/b;

    .line 26
    iget v6, v6, Lp7/b;->c:I

    const/16 v9, 0x130

    if-ne v6, v9, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    iget-object v6, v5, Lp7/e;->d:Ljava/util/Date;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lp7/e;->d:Ljava/util/Date;

    if-eqz v6, :cond_2

    .line 28
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    iget-object v5, v5, Lp7/e;->d:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v11, v9, v5

    if-gez v11, :cond_2

    :goto_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_b

    .line 29
    iget-object v2, p1, Ln7/g$e;->b:Ln7/h;

    const-string v5, "Serving response from conditional cache"

    invoke-virtual {v2, v5}, Ln7/h;->d(Ljava/lang/String;)V

    .line 30
    iget-object v2, v0, Lp7/d$c;->d:Lp7/e;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v5, Lp7/b;

    invoke-direct {v5}, Lp7/b;-><init>()V

    const/4 v6, 0x0

    .line 32
    :goto_2
    iget-object v9, v2, Lp7/e;->b:Lp7/b;

    invoke-virtual {v9}, Lp7/b;->f()I

    move-result v9

    if-ge v6, v9, :cond_8

    .line 33
    iget-object v9, v2, Lp7/e;->b:Lp7/b;

    invoke-virtual {v9, v6}, Lp7/b;->d(I)Ljava/lang/String;

    move-result-object v9

    .line 34
    iget-object v10, v2, Lp7/e;->b:Lp7/b;

    invoke-virtual {v10, v6}, Lp7/b;->e(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Warning"

    .line 35
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_4

    .line 36
    :cond_3
    invoke-static {v9}, Lp7/e;->b(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v4, Lp7/e;->b:Lp7/b;

    .line 37
    iget-object v12, v11, Lp7/b;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    :cond_4
    add-int/lit8 v12, v12, -0x2

    if-ltz v12, :cond_5

    .line 38
    iget-object v13, v11, Lp7/b;->a:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 39
    iget-object v11, v11, Lp7/b;->a:Ljava/util/List;

    add-int/lit8 v12, v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v11, v3

    :goto_3
    if-nez v11, :cond_7

    .line 40
    :cond_6
    invoke-virtual {v5, v9, v10}, Lp7/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 41
    :cond_8
    :goto_5
    iget-object v3, v4, Lp7/e;->b:Lp7/b;

    invoke-virtual {v3}, Lp7/b;->f()I

    move-result v3

    if-ge v8, v3, :cond_a

    .line 42
    iget-object v3, v4, Lp7/e;->b:Lp7/b;

    invoke-virtual {v3, v8}, Lp7/b;->d(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-static {v3}, Lp7/e;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 44
    iget-object v6, v4, Lp7/e;->b:Lp7/b;

    invoke-virtual {v6, v8}, Lp7/b;->e(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lp7/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 45
    :cond_a
    new-instance v3, Lp7/e;

    iget-object v2, v2, Lp7/e;->a:Landroid/net/Uri;

    invoke-direct {v3, v2, v5}, Lp7/e;-><init>(Landroid/net/Uri;Lp7/b;)V

    .line 46
    iget-object v2, p1, Ln7/g$c;->f:Ln7/g$i;

    new-instance v4, Ln7/w;

    .line 47
    iget-object v5, v3, Lp7/e;->b:Lp7/b;

    .line 48
    invoke-virtual {v5}, Lp7/b;->i()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Ln7/w;-><init>(Ljava/util/Map;)V

    check-cast v2, Ln7/j;

    .line 49
    iput-object v4, v2, Ln7/j;->k:Ln7/w;

    .line 50
    iget-object v2, p1, Ln7/g$c;->f:Ln7/g$i;

    .line 51
    iget-object v3, v3, Lp7/e;->b:Lp7/b;

    .line 52
    iget v4, v3, Lp7/b;->c:I

    .line 53
    check-cast v2, Ln7/j;

    .line 54
    iput v4, v2, Ln7/j;->m:I

    .line 55
    iget-object v3, v3, Lp7/b;->d:Ljava/lang/String;

    .line 56
    iput-object v3, v2, Ln7/j;->o:Ljava/lang/String;

    .line 57
    iget-object v2, v2, Ln7/j;->k:Ln7/w;

    const-string v3, "conditional-cache"

    .line 58
    invoke-virtual {v2, v1, v3}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    .line 59
    iget v1, p0, Lp7/d;->e:I

    add-int/2addr v1, v7

    iput v1, p0, Lp7/d;->e:I

    .line 60
    new-instance v1, Lp7/d$d;

    iget-object v2, v0, Lp7/d$c;->b:Lp7/d$h;

    iget-wide v3, v0, Lp7/d$c;->c:J

    invoke-direct {v1, v2, v3, v4}, Lp7/d$d;-><init>(Lp7/d$h;J)V

    .line 61
    iget-object v0, p1, Ln7/g$b;->i:Lk7/m;

    invoke-virtual {v1, v0}, Lk7/r;->o(Lk7/m;)V

    .line 62
    iput-object v1, p1, Ln7/g$b;->i:Lk7/m;

    .line 63
    invoke-virtual {v1}, Lk7/r;->a()Lk7/h;

    move-result-object p1

    iget-object v0, v1, Lp7/d$d;->l:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lk7/h;->g(Ljava/lang/Runnable;)Lm7/a;

    return-void

    .line 64
    :cond_b
    iget-object v1, p1, Ln7/g$e;->a:Ll1/p;

    .line 65
    iget-object v1, v1, Ll1/p;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, v0, Lp7/d$c;->a:[Ljava/io/FileInputStream;

    invoke-static {v0}, Ly/d;->e([Ljava/io/Closeable;)V

    .line 67
    :cond_c
    iget-object v0, p1, Ln7/g$e;->a:Ll1/p;

    .line 68
    iget-object v0, v0, Ll1/p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Hashtable;

    const-string v1, "request-headers"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    check-cast v0, Lp7/c;

    if-eqz v0, :cond_10

    .line 70
    invoke-virtual {v4, v0}, Lp7/e;->a(Lp7/c;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p1, Ln7/g$e;->b:Ln7/h;

    .line 71
    iget-object v1, v1, Ln7/h;->b:Ljava/lang/String;

    const-string v2, "GET"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_7

    :cond_d
    new-array v1, v7, [Ljava/lang/Object;

    .line 73
    iget-object v2, p1, Ln7/g$e;->b:Ln7/h;

    .line 74
    iget-object v2, v2, Ln7/h;->c:Landroid/net/Uri;

    aput-object v2, v1, v8

    .line 75
    invoke-static {v1}, Lu7/d;->f([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v0, v0, Lp7/c;->a:Lp7/b;

    .line 77
    iget-object v2, v4, Lp7/e;->p:Ljava/util/Set;

    .line 78
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v5, Lp7/b;

    invoke-direct {v5}, Lp7/b;-><init>()V

    .line 80
    :goto_6
    iget-object v6, v0, Lp7/b;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v8, v6, :cond_f

    .line 81
    iget-object v6, v0, Lp7/b;->a:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 82
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 83
    iget-object v9, v0, Lp7/b;->a:Ljava/util/List;

    add-int/lit8 v10, v8, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Lp7/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v8, v8, 0x2

    goto :goto_6

    .line 84
    :cond_f
    new-instance v0, Lp7/d$g;

    iget-object v2, p1, Ln7/g$e;->b:Ln7/h;

    .line 85
    iget-object v6, v2, Ln7/h;->c:Landroid/net/Uri;

    .line 86
    iget-object v4, v4, Lp7/e;->b:Lp7/b;

    .line 87
    invoke-direct {v0, v6, v5, v2, v4}, Lp7/d$g;-><init>(Landroid/net/Uri;Lp7/b;Ln7/h;Lp7/b;)V

    .line 88
    new-instance v2, Lp7/d$b;

    invoke-direct {v2, v3}, Lp7/d$b;-><init>(Lp7/d$a;)V

    .line 89
    new-instance v3, Lp7/d$i;

    invoke-direct {v3, p0, v1}, Lp7/d$i;-><init>(Lp7/d;Ljava/lang/String;)V

    .line 90
    :try_start_0
    invoke-virtual {v0, v3}, Lp7/d$g;->a(Lp7/d$i;)V

    .line 91
    invoke-virtual {v3, v7}, Lp7/d$i;->b(I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    iput-object v3, v2, Lp7/d$b;->h:Lp7/d$i;

    .line 93
    iget-object v0, p1, Ln7/g$b;->i:Lk7/m;

    invoke-virtual {v2, v0}, Lk7/r;->o(Lk7/m;)V

    .line 94
    iput-object v2, p1, Ln7/g$b;->i:Lk7/m;

    .line 95
    iget-object v0, p1, Ln7/g$e;->a:Ll1/p;

    .line 96
    iget-object v0, v0, Ll1/p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Hashtable;

    const-string v1, "body-cacher"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p1, p1, Ln7/g$e;->b:Ln7/h;

    const-string v0, "Caching response"

    invoke-virtual {p1, v0}, Ln7/h;->b(Ljava/lang/String;)V

    .line 98
    iget p1, p0, Lp7/d;->h:I

    add-int/2addr p1, v7

    iput p1, p0, Lp7/d;->h:I

    return-void

    .line 99
    :catch_0
    invoke-virtual {v3}, Lp7/d$i;->a()V

    .line 100
    iget p1, p0, Lp7/d;->g:I

    add-int/2addr p1, v7

    iput p1, p0, Lp7/d;->g:I

    return-void

    .line 101
    :cond_10
    :goto_7
    iget v0, p0, Lp7/d;->g:I

    add-int/2addr v0, v7

    iput v0, p0, Lp7/d;->g:I

    .line 102
    iget-object p1, p1, Ln7/g$e;->b:Ln7/h;

    const-string v0, "Response is not cacheable"

    invoke-virtual {p1, v0}, Ln7/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ln7/g$g;)V
    .locals 11

    .line 1
    iget-object v0, p1, Ln7/g$e;->a:Ll1/p;

    .line 2
    iget-object v0, v0, Ll1/p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Hashtable;

    const-string v1, "cache-data"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lp7/d$c;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lp7/d$c;->a:[Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Ly/d;->e([Ljava/io/Closeable;)V

    .line 6
    :cond_0
    iget-object v0, p1, Ln7/g$c;->e:Lk7/j;

    const-class v1, Lp7/d$f;

    invoke-static {v0, v1}, Li4/d;->w(Lk7/j;Ljava/lang/Class;)Lk7/j;

    move-result-object v0

    check-cast v0, Lp7/d$f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    new-array v3, v2, [Ljava/io/Closeable;

    .line 7
    iget-object v0, v0, Lp7/d$d;->h:Lp7/d$h;

    .line 8
    iget-object v0, v0, Lp7/d$h;->b:Ljava/io/FileInputStream;

    aput-object v0, v3, v1

    .line 9
    invoke-static {v3}, Ly/d;->e([Ljava/io/Closeable;)V

    .line 10
    :cond_1
    iget-object v0, p1, Ln7/g$e;->a:Ll1/p;

    .line 11
    iget-object v0, v0, Ll1/p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Hashtable;

    const-string v3, "body-cacher"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lp7/d$b;

    if-eqz v0, :cond_8

    .line 13
    iget-object p1, p1, Ln7/g$g;->j:Ljava/lang/Exception;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {v0}, Lp7/d$b;->p()V

    goto :goto_5

    .line 15
    :cond_2
    iget-object p1, v0, Lp7/d$b;->h:Lp7/d$i;

    if-eqz p1, :cond_8

    .line 16
    iget-object v3, p1, Lp7/d$i;->c:[Ljava/io/FileOutputStream;

    invoke-static {v3}, Ly/d;->e([Ljava/io/Closeable;)V

    .line 17
    iget-boolean v3, p1, Lp7/d$i;->d:Z

    if-eqz v3, :cond_3

    goto :goto_4

    .line 18
    :cond_3
    iget-object v3, p1, Lp7/d$i;->e:Lp7/d;

    .line 19
    iget-object v3, v3, Lp7/d;->c:Lu7/d;

    .line 20
    iget-object v4, p1, Lp7/d$i;->a:Ljava/lang/String;

    iget-object v5, p1, Lp7/d$i;->b:[Ljava/io/File;

    const/4 v6, 0x0

    .line 21
    :goto_0
    invoke-virtual {v3, v4, v6}, Lu7/d;->b(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 22
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    .line 23
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_7

    .line 24
    aget-object v7, v5, v6

    .line 25
    invoke-virtual {v3, v4, v6}, Lu7/d;->b(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    .line 26
    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 27
    array-length v6, v5

    :goto_2
    if-ge v1, v6, :cond_5

    aget-object v7, v5, v1

    .line 28
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 29
    :cond_5
    invoke-virtual {v3, v4}, Lu7/d;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 30
    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lu7/d;->e(Ljava/lang/String;)V

    .line 31
    iget-object v7, v3, Lu7/d;->d:Lu7/d$c;

    invoke-virtual {v3, v4, v6}, Lu7/d;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lu7/d$b;

    invoke-direct {v10, v3, v8}, Lu7/d$b;-><init>(Lu7/d;Ljava/io/File;)V

    invoke-virtual {v7, v9, v10}, Lu7/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 32
    :cond_7
    :goto_3
    iget-object v1, p1, Lp7/d$i;->e:Lp7/d;

    .line 33
    iget v3, v1, Lp7/d;->a:I

    add-int/2addr v3, v2

    iput v3, v1, Lp7/d;->a:I

    .line 34
    iput-boolean v2, p1, Lp7/d$i;->d:Z

    :goto_4
    const/4 p1, 0x0

    .line 35
    iput-object p1, v0, Lp7/d$b;->h:Lp7/d$i;

    :cond_8
    :goto_5
    return-void
.end method

.method public h(Ln7/g$a;)Lm7/a;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lp7/c;

    iget-object v3, v1, Ln7/g$e;->b:Ln7/h;

    .line 2
    iget-object v4, v3, Ln7/h;->c:Landroid/net/Uri;

    .line 3
    iget-object v3, v3, Ln7/h;->d:Ln7/w;

    .line 4
    iget-object v3, v3, Ln7/w;->a:Ln7/a0;

    .line 5
    invoke-static {v3}, Lp7/b;->c(Ljava/util/Map;)Lp7/b;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lp7/c;-><init>(Landroid/net/Uri;Lp7/b;)V

    .line 6
    iget-object v3, v1, Ln7/g$e;->a:Ll1/p;

    .line 7
    iget-object v3, v3, Ll1/p;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/Hashtable;

    const-string v4, "request-headers"

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, v0, Lp7/d;->c:Lu7/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_27

    .line 9
    iget-boolean v3, v2, Lp7/c;->b:Z

    if-eqz v3, :cond_0

    goto/16 :goto_18

    :cond_0
    new-array v3, v5, [Ljava/lang/Object;

    .line 10
    iget-object v6, v1, Ln7/g$e;->b:Ln7/h;

    .line 11
    iget-object v6, v6, Ln7/h;->c:Landroid/net/Uri;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    .line 12
    invoke-static {v3}, Lu7/d;->f([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 13
    :try_start_0
    iget-object v6, v0, Lp7/d;->c:Lu7/d;

    const/4 v8, 0x2

    invoke-virtual {v6, v3, v8}, Lu7/d;->a(Ljava/lang/String;I)[Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v6

    int-to-long v9, v6

    .line 15
    new-instance v6, Lp7/d$g;

    aget-object v11, v3, v7

    invoke-direct {v6, v11}, Lp7/d$g;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 16
    iget-object v11, v1, Ln7/g$e;->b:Ln7/h;

    .line 17
    iget-object v12, v11, Ln7/h;->c:Landroid/net/Uri;

    .line 18
    iget-object v13, v11, Ln7/h;->b:Ljava/lang/String;

    .line 19
    iget-object v11, v11, Ln7/h;->d:Ln7/w;

    .line 20
    iget-object v11, v11, Ln7/w;->a:Ln7/a0;

    .line 21
    iget-object v14, v6, Lp7/d$g;->a:Ljava/lang/String;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v14, v6, Lp7/d$g;->c:Ljava/lang/String;

    .line 22
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    new-instance v13, Lp7/e;

    iget-object v14, v6, Lp7/d$g;->d:Lp7/b;

    invoke-direct {v13, v12, v14}, Lp7/e;-><init>(Landroid/net/Uri;Lp7/b;)V

    iget-object v12, v6, Lp7/d$g;->b:Lp7/b;

    .line 23
    invoke-virtual {v12}, Lp7/b;->i()Ljava/util/Map;

    move-result-object v12

    .line 24
    iget-object v13, v13, Lp7/e;->p:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 25
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eq v15, v14, :cond_3

    if-eqz v15, :cond_2

    .line 26
    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v14, 0x1

    :goto_1
    if-nez v14, :cond_1

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    const/4 v11, 0x1

    :goto_2
    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_6

    .line 27
    iget v1, v0, Lp7/d;->g:I

    add-int/2addr v1, v5

    iput v1, v0, Lp7/d;->g:I

    .line 28
    invoke-static {v3}, Ly/d;->e([Ljava/io/Closeable;)V

    return-object v4

    .line 29
    :cond_6
    new-instance v11, Lp7/d$h;

    aget-object v12, v3, v5

    invoke-direct {v11, v6, v12}, Lp7/d$h;-><init>(Lp7/d$g;Ljava/io/FileInputStream;)V

    .line 30
    :try_start_2
    invoke-virtual {v11}, Lp7/d$h;->getHeaders()Ljava/util/Map;

    move-result-object v12

    .line 31
    iget-object v13, v11, Lp7/d$h;->b:Ljava/io/FileInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v12, :cond_26

    if-nez v13, :cond_7

    goto/16 :goto_17

    .line 32
    :cond_7
    invoke-static {v12}, Lp7/b;->c(Ljava/util/Map;)Lp7/b;

    move-result-object v12

    .line 33
    new-instance v13, Lp7/e;

    iget-object v14, v1, Ln7/g$e;->b:Ln7/h;

    .line 34
    iget-object v14, v14, Ln7/h;->c:Landroid/net/Uri;

    .line 35
    invoke-direct {v13, v14, v12}, Lp7/e;-><init>(Landroid/net/Uri;Lp7/b;)V

    const-string v14, "Content-Length"

    .line 36
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 37
    invoke-virtual {v12, v14}, Lp7/b;->g(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v12, v14, v15}, Lp7/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "Content-Encoding"

    .line 39
    invoke-virtual {v12, v14}, Lp7/b;->g(Ljava/lang/String;)V

    const-string v14, "Transfer-Encoding"

    .line 40
    invoke-virtual {v12, v14}, Lp7/b;->g(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 42
    iput-wide v14, v13, Lp7/e;->f:J

    .line 43
    iget-object v4, v13, Lp7/e;->b:Lp7/b;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "X-Android-Sent-Millis"

    invoke-virtual {v4, v15, v14}, Lp7/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-wide v7, v13, Lp7/e;->g:J

    .line 45
    iget-object v4, v13, Lp7/e;->b:Lp7/b;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "X-Android-Received-Millis"

    invoke-virtual {v4, v8, v7}, Lp7/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 47
    invoke-virtual {v13, v2}, Lp7/e;->a(Lp7/c;)Z

    move-result v14

    if-nez v14, :cond_9

    :cond_8
    :goto_4
    move-wide/from16 v18, v9

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    goto/16 :goto_13

    .line 48
    :cond_9
    iget-boolean v14, v2, Lp7/c;->b:Z

    if-nez v14, :cond_8

    .line 49
    iget-object v14, v2, Lp7/c;->g:Ljava/lang/String;

    if-nez v14, :cond_b

    iget-object v14, v2, Lp7/c;->h:Ljava/lang/String;

    if-eqz v14, :cond_a

    goto :goto_5

    :cond_a
    const/4 v14, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v14, 0x1

    :goto_6
    if-eqz v14, :cond_c

    goto :goto_4

    .line 50
    :cond_c
    iget-object v14, v13, Lp7/e;->c:Ljava/util/Date;

    if-eqz v14, :cond_d

    iget-wide v4, v13, Lp7/e;->g:J

    .line 51
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v4, v4, v16

    const-wide/16 v14, 0x0

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_7

    :cond_d
    const-wide/16 v4, 0x0

    .line 52
    :goto_7
    iget v14, v13, Lp7/e;->o:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_e

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v18, v9

    int-to-long v9, v14

    .line 53
    invoke-virtual {v15, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_8

    :cond_e
    move-wide/from16 v18, v9

    .line 54
    :goto_8
    iget-wide v9, v13, Lp7/e;->g:J

    iget-wide v14, v13, Lp7/e;->f:J

    sub-long v14, v9, v14

    sub-long/2addr v7, v9

    add-long/2addr v4, v14

    add-long/2addr v4, v7

    .line 55
    iget v7, v13, Lp7/e;->j:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_f

    .line 56
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v9, v7

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    goto :goto_9

    .line 57
    :cond_f
    iget-object v7, v13, Lp7/e;->e:Ljava/util/Date;

    if-eqz v7, :cond_11

    .line 58
    iget-object v7, v13, Lp7/e;->c:Ljava/util/Date;

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 59
    :cond_10
    iget-object v7, v13, Lp7/e;->e:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v14, v7, v9

    if-lez v14, :cond_13

    :goto_9
    move-wide v14, v7

    goto :goto_b

    .line 60
    :cond_11
    iget-object v7, v13, Lp7/e;->d:Ljava/util/Date;

    if-eqz v7, :cond_13

    iget-object v7, v13, Lp7/e;->a:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_13

    .line 61
    iget-object v7, v13, Lp7/e;->c:Ljava/util/Date;

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    goto :goto_a

    :cond_12
    iget-wide v7, v13, Lp7/e;->f:J

    .line 62
    :goto_a
    iget-object v9, v13, Lp7/e;->d:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v14, v7, v9

    if-lez v14, :cond_13

    const-wide/16 v9, 0xa

    .line 63
    div-long v14, v7, v9

    goto :goto_b

    :cond_13
    const-wide/16 v14, 0x0

    .line 64
    :goto_b
    iget v7, v2, Lp7/c;->c:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_14

    .line 65
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v20, v11

    int-to-long v10, v7

    .line 66
    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 67
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    goto :goto_c

    :cond_14
    move-object/from16 v20, v11

    .line 68
    :goto_c
    iget v7, v2, Lp7/c;->e:I

    if-eq v7, v8, :cond_15

    .line 69
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    goto :goto_d

    :cond_15
    const-wide/16 v9, 0x0

    .line 70
    :goto_d
    iget-boolean v7, v13, Lp7/e;->m:Z

    if-nez v7, :cond_16

    .line 71
    iget v7, v2, Lp7/c;->d:I

    if-eq v7, v8, :cond_16

    .line 72
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v21, v12

    int-to-long v11, v7

    invoke-virtual {v8, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    goto :goto_e

    :cond_16
    move-object/from16 v21, v12

    const-wide/16 v7, 0x0

    .line 73
    :goto_e
    iget-boolean v11, v13, Lp7/e;->h:Z

    if-nez v11, :cond_1a

    add-long/2addr v9, v4

    add-long/2addr v7, v14

    cmp-long v11, v9, v7

    if-gez v11, :cond_1a

    const-string v2, "Warning"

    cmp-long v7, v9, v14

    if-ltz v7, :cond_17

    .line 74
    iget-object v7, v13, Lp7/e;->b:Lp7/b;

    const-string v8, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v7, v2, v8}, Lp7/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-wide/32 v7, 0x5265c00

    cmp-long v9, v4, v7

    if-lez v9, :cond_19

    .line 75
    iget v4, v13, Lp7/e;->j:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_18

    iget-object v4, v13, Lp7/e;->e:Ljava/util/Date;

    if-nez v4, :cond_18

    const/4 v15, 0x1

    goto :goto_f

    :cond_18
    const/4 v15, 0x0

    :goto_f
    if-eqz v15, :cond_19

    .line 76
    iget-object v4, v13, Lp7/e;->b:Lp7/b;

    const-string v5, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v4, v2, v5}, Lp7/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_14

    .line 77
    :cond_1a
    iget-object v4, v13, Lp7/e;->n:Ljava/lang/String;

    if-eqz v4, :cond_1c

    .line 78
    iget-object v5, v2, Lp7/c;->h:Ljava/lang/String;

    const-string v7, "If-None-Match"

    if-eqz v5, :cond_1b

    .line 79
    iget-object v5, v2, Lp7/c;->a:Lp7/b;

    invoke-virtual {v5, v7}, Lp7/b;->g(Ljava/lang/String;)V

    .line 80
    :cond_1b
    iget-object v5, v2, Lp7/c;->a:Lp7/b;

    invoke-virtual {v5, v7, v4}, Lp7/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object v4, v2, Lp7/c;->h:Ljava/lang/String;

    goto :goto_10

    .line 82
    :cond_1c
    iget-object v4, v13, Lp7/e;->d:Ljava/util/Date;

    if-eqz v4, :cond_1d

    .line 83
    invoke-virtual {v2, v4}, Lp7/c;->a(Ljava/util/Date;)V

    goto :goto_10

    .line 84
    :cond_1d
    iget-object v4, v13, Lp7/e;->c:Ljava/util/Date;

    if-eqz v4, :cond_1e

    .line 85
    invoke-virtual {v2, v4}, Lp7/c;->a(Ljava/util/Date;)V

    .line 86
    :cond_1e
    :goto_10
    iget-object v4, v2, Lp7/c;->g:Ljava/lang/String;

    if-nez v4, :cond_20

    iget-object v2, v2, Lp7/c;->h:Ljava/lang/String;

    if-eqz v2, :cond_1f

    goto :goto_11

    :cond_1f
    const/4 v15, 0x0

    goto :goto_12

    :cond_20
    :goto_11
    const/4 v15, 0x1

    :goto_12
    if-eqz v15, :cond_21

    const/4 v2, 0x1

    const/4 v4, 0x2

    goto :goto_14

    :cond_21
    :goto_13
    const/4 v2, 0x1

    const/4 v4, 0x3

    :goto_14
    if-ne v4, v2, :cond_24

    .line 87
    iget-object v2, v1, Ln7/g$e;->b:Ln7/h;

    const-string v3, "Response retrieved from cache"

    invoke-virtual {v2, v3}, Ln7/h;->d(Ljava/lang/String;)V

    .line 88
    iget-object v2, v6, Lp7/d$g;->a:Ljava/lang/String;

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 89
    new-instance v2, Lp7/d$e;

    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    invoke-direct {v2, v0, v7, v5, v6}, Lp7/d$e;-><init>(Lp7/d;Lp7/d$h;J)V

    goto :goto_15

    :cond_22
    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    new-instance v2, Lp7/d$f;

    invoke-direct {v2, v0, v7, v5, v6}, Lp7/d$f;-><init>(Lp7/d;Lp7/d$h;J)V

    .line 90
    :goto_15
    iget-object v3, v2, Lp7/d$d;->i:Lk7/l;

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v5, v21

    .line 92
    iget-object v6, v5, Lp7/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    .line 93
    :goto_16
    iget-object v8, v5, Lp7/b;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_23

    .line 94
    iget-object v8, v5, Lp7/b;->a:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lp7/b;->a:Ljava/util/List;

    add-int/lit8 v9, v7, 0x1

    .line 95
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x2

    goto :goto_16

    .line 96
    :cond_23
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    .line 99
    iget-object v3, v0, Lp7/d;->d:Lk7/h;

    new-instance v4, Lp7/d$a;

    invoke-direct {v4, v0, v1, v2}, Lp7/d$a;-><init>(Lp7/d;Ln7/g$a;Lp7/d$f;)V

    const-wide/16 v5, 0x0

    .line 100
    invoke-virtual {v3, v4, v5, v6}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    .line 101
    iget v2, v0, Lp7/d;->f:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lp7/d;->f:I

    .line 102
    iget-object v1, v1, Ln7/g$e;->a:Ll1/p;

    .line 103
    iget-object v1, v1, Ll1/p;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Hashtable;

    const-string v2, "socket-owner"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    new-instance v1, Lm7/f;

    invoke-direct {v1}, Lm7/f;-><init>()V

    .line 105
    invoke-virtual {v1}, Lm7/f;->c()Z

    return-object v1

    :cond_24
    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    const/4 v2, 0x2

    if-ne v4, v2, :cond_25

    .line 106
    iget-object v2, v1, Ln7/g$e;->b:Ln7/h;

    const-string v4, "Response may be served from conditional cache"

    invoke-virtual {v2, v4}, Ln7/h;->d(Ljava/lang/String;)V

    .line 107
    new-instance v2, Lp7/d$c;

    invoke-direct {v2}, Lp7/d$c;-><init>()V

    .line 108
    iput-object v3, v2, Lp7/d$c;->a:[Ljava/io/FileInputStream;

    .line 109
    iput-wide v5, v2, Lp7/d$c;->c:J

    .line 110
    iput-object v13, v2, Lp7/d$c;->d:Lp7/e;

    .line 111
    iput-object v7, v2, Lp7/d$c;->b:Lp7/d$h;

    .line 112
    iget-object v1, v1, Ln7/g$e;->a:Ll1/p;

    .line 113
    iget-object v1, v1, Ll1/p;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Hashtable;

    const-string v3, "cache-data"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    return-object v2

    :cond_25
    const/4 v2, 0x0

    .line 114
    iget-object v1, v1, Ln7/g$e;->b:Ln7/h;

    const-string v4, "Response can not be served from cache"

    invoke-virtual {v1, v4}, Ln7/h;->b(Ljava/lang/String;)V

    .line 115
    iget v1, v0, Lp7/d;->g:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v0, Lp7/d;->g:I

    .line 116
    invoke-static {v3}, Ly/d;->e([Ljava/io/Closeable;)V

    return-object v2

    :cond_26
    :goto_17
    move-object v2, v4

    const/4 v4, 0x1

    .line 117
    iget v1, v0, Lp7/d;->g:I

    add-int/2addr v1, v4

    iput v1, v0, Lp7/d;->g:I

    .line 118
    invoke-static {v3}, Ly/d;->e([Ljava/io/Closeable;)V

    return-object v2

    :catch_0
    move-object v2, v4

    const/4 v4, 0x1

    .line 119
    iget v1, v0, Lp7/d;->g:I

    add-int/2addr v1, v4

    iput v1, v0, Lp7/d;->g:I

    .line 120
    invoke-static {v3}, Ly/d;->e([Ljava/io/Closeable;)V

    return-object v2

    :catch_1
    const/4 v3, 0x0

    .line 121
    :catch_2
    iget v1, v0, Lp7/d;->g:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lp7/d;->g:I

    .line 122
    invoke-static {v3}, Ly/d;->e([Ljava/io/Closeable;)V

    const/4 v1, 0x0

    return-object v1

    :cond_27
    :goto_18
    move-object v1, v4

    const/4 v2, 0x1

    .line 123
    iget v3, v0, Lp7/d;->g:I

    add-int/2addr v3, v2

    iput v3, v0, Lp7/d;->g:I

    return-object v1
.end method
