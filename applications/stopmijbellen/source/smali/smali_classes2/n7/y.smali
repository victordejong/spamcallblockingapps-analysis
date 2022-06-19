.class public Ln7/y;
.super Ln7/d0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln7/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ln7/g$c;)Z
    .locals 11

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ln7/b0;->a(Ljava/lang/String;)Ln7/b0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    sget-object v3, Ln7/b0;->b:Ln7/b0;

    if-eq v1, v3, :cond_0

    sget-object v3, Ln7/b0;->c:Ln7/b0;

    if-eq v1, v3, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p1, Ln7/g$e;->b:Ln7/h;

    .line 4
    iget-object v3, v1, Ln7/h;->f:Lo7/a;

    if-eqz v3, :cond_3

    .line 5
    invoke-interface {v3}, Lo7/a;->length()I

    move-result v4

    if-ltz v4, :cond_1

    .line 6
    iget-object v4, v1, Ln7/h;->d:Ln7/w;

    .line 7
    invoke-interface {v3}, Lo7/a;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Content-Length"

    invoke-virtual {v4, v6, v5}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    .line 8
    iget-object v4, p1, Ln7/g$c;->f:Ln7/g$i;

    iget-object v5, p1, Ln7/g$c;->e:Lk7/j;

    check-cast v4, Ln7/j;

    .line 9
    iput-object v5, v4, Ln7/j;->p:Lk7/o;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v4, v1, Ln7/h;->d:Ln7/w;

    .line 11
    iget-object v4, v4, Ln7/w;->a:Ln7/a0;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Connection"

    invoke-virtual {v6, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "close"

    .line 12
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    iget-object v4, p1, Ln7/g$c;->f:Ln7/g$i;

    iget-object v5, p1, Ln7/g$c;->e:Lk7/j;

    check-cast v4, Ln7/j;

    .line 14
    iput-object v5, v4, Ln7/j;->p:Lk7/o;

    goto :goto_0

    .line 15
    :cond_2
    iget-object v4, v1, Ln7/h;->d:Ln7/w;

    const-string v5, "Transfer-Encoding"

    const-string v6, "Chunked"

    .line 16
    invoke-virtual {v4, v5, v6}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    .line 17
    iget-object v4, p1, Ln7/g$c;->f:Ln7/g$i;

    new-instance v5, Lr7/b;

    iget-object v6, p1, Ln7/g$c;->e:Lk7/j;

    invoke-direct {v5, v6}, Lr7/b;-><init>(Lk7/o;)V

    check-cast v4, Ln7/j;

    .line 18
    iput-object v5, v4, Ln7/j;->p:Lk7/o;

    .line 19
    :cond_3
    :goto_0
    iget-object v4, v1, Ln7/h;->h:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v7, "%s %s %s"

    const/4 v8, 0x1

    if-eqz v4, :cond_4

    .line 20
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 21
    iget-object v9, v1, Ln7/h;->b:Ljava/lang/String;

    aput-object v9, v6, v2

    .line 22
    iget-object v9, v1, Ln7/h;->c:Landroid/net/Uri;

    aput-object v9, v6, v8

    .line 23
    iget-object v9, v1, Ln7/h;->a:Ljava/lang/String;

    aput-object v9, v6, v5

    .line 24
    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 25
    :cond_4
    iget-object v4, v1, Ln7/h;->c:Landroid/net/Uri;

    .line 26
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    const-string v4, "/"

    .line 28
    :cond_6
    iget-object v9, v1, Ln7/h;->c:Landroid/net/Uri;

    .line 29
    invoke-virtual {v9}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 30
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "?"

    .line 31
    invoke-static {v4, v10, v9}, Landroid/support/v4/media/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    :cond_7
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 33
    iget-object v10, v1, Ln7/h;->b:Ljava/lang/String;

    aput-object v10, v6, v2

    aput-object v4, v6, v8

    .line 34
    iget-object v4, v1, Ln7/h;->a:Ljava/lang/String;

    aput-object v4, v6, v5

    .line 35
    invoke-static {v9, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 36
    :goto_1
    iget-object v5, v1, Ln7/h;->d:Ln7/w;

    .line 37
    invoke-virtual {v5, v4}, Ln7/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    if-eqz v3, :cond_8

    .line 39
    invoke-interface {v3}, Lo7/a;->length()I

    move-result v6

    if-ltz v6, :cond_8

    invoke-interface {v3}, Lo7/a;->length()I

    move-result v3

    array-length v6, v5

    add-int/2addr v3, v6

    const/16 v6, 0x400

    if-ge v3, v6, :cond_8

    const/4 v2, 0x1

    :cond_8
    if-eqz v2, :cond_9

    .line 40
    new-instance v0, Lk7/k;

    iget-object v2, p1, Ln7/g$c;->f:Ln7/g$i;

    check-cast v2, Ln7/j;

    .line 41
    iget-object v2, v2, Ln7/j;->p:Lk7/o;

    .line 42
    invoke-direct {v0, v2}, Lk7/k;-><init>(Lk7/o;)V

    .line 43
    iput-boolean v8, v0, Lk7/k;->b:Z

    .line 44
    iget-object v2, p1, Ln7/g$c;->f:Ln7/g$i;

    check-cast v2, Ln7/j;

    .line 45
    iput-object v0, v2, Ln7/j;->p:Lk7/o;

    move-object v2, v0

    goto :goto_2

    .line 46
    :cond_9
    iget-object v2, p1, Ln7/g$c;->e:Lk7/j;

    .line 47
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ln7/h;->e(Ljava/lang/String;)V

    .line 48
    iget-object v1, p1, Ln7/g$c;->g:Ll7/a;

    .line 49
    new-instance v3, Ln7/y$a;

    invoke-direct {v3, p0, v1, v0}, Ln7/y$a;-><init>(Ln7/y;Ll7/a;Lk7/k;)V

    invoke-static {v2, v5, v3}, Li4/d;->I(Lk7/o;[BLl7/a;)V

    .line 50
    new-instance v0, Ln7/y$b;

    invoke-direct {v0, p0, p1}, Ln7/y$b;-><init>(Ln7/y;Ln7/g$c;)V

    .line 51
    new-instance v1, Lk7/s;

    invoke-direct {v1}, Lk7/s;-><init>()V

    .line 52
    iget-object p1, p1, Ln7/g$c;->e:Lk7/j;

    invoke-interface {p1, v1}, Lk7/m;->b(Ll7/c;)V

    .line 53
    iput-object v0, v1, Lk7/s;->b:Lk7/s$a;

    return v8
.end method

.method public e(Ln7/g$f;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ln7/b0;->a(Ljava/lang/String;)Ln7/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ln7/b0;->b:Ln7/b0;

    if-eq v0, v1, :cond_0

    sget-object v1, Ln7/b0;->c:Ln7/b0;

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p1, Ln7/g$c;->f:Ln7/g$i;

    check-cast p1, Ln7/j;

    .line 4
    iget-object p1, p1, Ln7/j;->p:Lk7/o;

    .line 5
    instance-of v0, p1, Lr7/b;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1}, Lk7/o;->j()V

    :cond_1
    return-void
.end method
