.class public Ln7/d;
.super Ln7/j;
.source "SourceFile"


# instance fields
.field public final synthetic q:Ln7/a$d;

.field public final synthetic r:Ln7/h;

.field public final synthetic s:Lq7/a;

.field public final synthetic t:Ln7/g$g;

.field public final synthetic u:I

.field public final synthetic v:Ln7/a;


# direct methods
.method public constructor <init>(Ln7/a;Ln7/h;Ln7/a$d;Ln7/h;Lq7/a;Ln7/g$g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/d;->v:Ln7/a;

    iput-object p3, p0, Ln7/d;->q:Ln7/a$d;

    iput-object p4, p0, Ln7/d;->r:Ln7/h;

    iput-object p5, p0, Ln7/d;->s:Lq7/a;

    iput-object p6, p0, Ln7/d;->t:Ln7/g$g;

    iput p7, p0, Ln7/d;->u:I

    invoke-direct {p0, p2}, Ln7/j;-><init>(Ln7/h;)V

    return-void
.end method


# virtual methods
.method public n(Ljava/lang/Exception;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ln7/d;->r:Ln7/h;

    const-string v1, "exception during response"

    invoke-virtual {v0, v1, p1}, Ln7/h;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 2
    :cond_0
    iget-object v0, p0, Ln7/d;->q:Ln7/a$d;

    invoke-virtual {v0}, Lm7/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    instance-of v0, p1, Lcom/koushikdutta/async/AsyncSSLException;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Ln7/d;->r:Ln7/h;

    const-string v1, "SSL Exception"

    invoke-virtual {v0, v1, p1}, Ln7/h;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/koushikdutta/async/AsyncSSLException;

    .line 6
    iget-object v1, p0, Ln7/d;->r:Ln7/h;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    iget-object v0, p0, Ln7/j;->j:Lk7/j;

    if-nez v0, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-super {p0, p1}, Ln7/j;->n(Ljava/lang/Exception;)V

    .line 10
    invoke-interface {v0}, Lk7/o;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_5

    .line 11
    :cond_4
    iget-object v0, p0, Ln7/j;->k:Ln7/w;

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 12
    iget-object v1, p0, Ln7/d;->v:Ln7/a;

    iget-object v2, p0, Ln7/d;->q:Ln7/a$d;

    const/4 v4, 0x0

    iget-object v5, p0, Ln7/d;->r:Ln7/h;

    iget-object v6, p0, Ln7/d;->s:Lq7/a;

    move-object v3, p1

    .line 13
    invoke-virtual/range {v1 .. v6}, Ln7/a;->e(Ln7/a$d;Ljava/lang/Exception;Ln7/j;Ln7/h;Lq7/a;)V

    .line 14
    :cond_5
    iget-object v0, p0, Ln7/d;->t:Ln7/g$g;

    iput-object p1, v0, Ln7/g$g;->j:Ljava/lang/Exception;

    .line 15
    iget-object p1, p0, Ln7/d;->v:Ln7/a;

    iget-object p1, p1, Ln7/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln7/g;

    .line 16
    iget-object v1, p0, Ln7/d;->t:Ln7/g$g;

    invoke-interface {v0, v1}, Ln7/g;->g(Ln7/g$g;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public o(Lk7/m;)V
    .locals 10

    .line 1
    iget-object v0, p0, Ln7/d;->t:Ln7/g$g;

    iput-object p1, v0, Ln7/g$b;->i:Lk7/m;

    .line 2
    iget-object p1, p0, Ln7/d;->v:Ln7/a;

    iget-object p1, p1, Ln7/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln7/g;

    .line 3
    iget-object v1, p0, Ln7/d;->t:Ln7/g$g;

    invoke-interface {v0, v1}, Ln7/g;->d(Ln7/g$b;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Ln7/d;->t:Ln7/g$g;

    iget-object p1, p1, Ln7/g$b;->i:Lk7/m;

    invoke-super {p0, p1}, Lk7/r;->o(Lk7/m;)V

    .line 5
    iget-object p1, p0, Ln7/d;->v:Ln7/a;

    iget-object p1, p1, Ln7/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln7/g;

    .line 6
    iget-object v3, p0, Ln7/d;->t:Ln7/g$g;

    invoke-interface {v0, v3}, Ln7/g;->a(Ln7/g$h;)Ln7/h;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 7
    iget-object p1, p0, Ln7/d;->r:Ln7/h;

    iget-wide v3, p1, Ln7/h;->l:J

    iput-wide v3, v6, Ln7/h;->l:J

    .line 8
    iget v0, p1, Ln7/h;->k:I

    iput v0, v6, Ln7/h;->k:I

    .line 9
    iget-object v0, p1, Ln7/h;->j:Ljava/lang/String;

    iput-object v0, v6, Ln7/h;->j:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Ln7/h;->h:Ljava/lang/String;

    iput-object v0, v6, Ln7/h;->h:Ljava/lang/String;

    .line 11
    iget p1, p1, Ln7/h;->i:I

    iput p1, v6, Ln7/h;->i:I

    .line 12
    invoke-static {v6}, Ln7/a;->f(Ln7/h;)V

    .line 13
    iget-object p1, p0, Ln7/d;->r:Ln7/h;

    const-string v0, "Response intercepted by middleware"

    invoke-virtual {p1, v0}, Ln7/h;->d(Ljava/lang/String;)V

    const-string p1, "Request initiated by middleware intercept by middleware"

    .line 14
    invoke-virtual {v6, p1}, Ln7/h;->d(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Ln7/d;->v:Ln7/a;

    iget-object p1, p1, Ln7/a;->d:Lk7/h;

    iget v7, p0, Ln7/d;->u:I

    iget-object v8, p0, Ln7/d;->q:Ln7/a$d;

    iget-object v9, p0, Ln7/d;->s:Lq7/a;

    new-instance v0, Ln7/b;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Ln7/b;-><init>(Ln7/d;Ln7/h;ILn7/a$d;Lq7/a;)V

    .line 16
    invoke-virtual {p1, v0, v1, v2}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    .line 17
    new-instance p1, Ll7/c$a;

    invoke-direct {p1}, Ll7/c$a;-><init>()V

    .line 18
    iput-object p1, p0, Lk7/n;->c:Ll7/c;

    return-void

    .line 19
    :cond_2
    iget-object p1, p0, Ln7/j;->k:Ln7/w;

    .line 20
    iget v0, p0, Ln7/j;->m:I

    const/16 v3, 0x12d

    if-eq v0, v3, :cond_3

    const/16 v3, 0x12e

    if-eq v0, v3, :cond_3

    const/16 v3, 0x133

    if-ne v0, v3, :cond_6

    .line 21
    :cond_3
    iget-object v0, p0, Ln7/d;->r:Ln7/h;

    .line 22
    iget-boolean v0, v0, Ln7/h;->e:Z

    if-eqz v0, :cond_6

    .line 23
    iget-object p1, p1, Ln7/w;->a:Ln7/a0;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Location"

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 26
    new-instance v0, Ljava/net/URL;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Ln7/d;->r:Ln7/h;

    .line 27
    iget-object v4, v4, Ln7/h;->c:Landroid/net/Uri;

    .line 28
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_4
    iget-object p1, p0, Ln7/d;->r:Ln7/h;

    .line 30
    iget-object p1, p1, Ln7/h;->b:Ljava/lang/String;

    const-string v3, "HEAD"

    .line 31
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const-string v3, "GET"

    .line 32
    :goto_1
    new-instance v6, Ln7/h;

    const/4 p1, 0x0

    .line 33
    invoke-direct {v6, v0, v3, p1}, Ln7/h;-><init>(Landroid/net/Uri;Ljava/lang/String;Ln7/w;)V

    .line 34
    iget-object p1, p0, Ln7/d;->r:Ln7/h;

    iget-wide v3, p1, Ln7/h;->l:J

    iput-wide v3, v6, Ln7/h;->l:J

    .line 35
    iget v0, p1, Ln7/h;->k:I

    iput v0, v6, Ln7/h;->k:I

    .line 36
    iget-object v0, p1, Ln7/h;->j:Ljava/lang/String;

    iput-object v0, v6, Ln7/h;->j:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Ln7/h;->h:Ljava/lang/String;

    iput-object v0, v6, Ln7/h;->h:Ljava/lang/String;

    .line 38
    iget p1, p1, Ln7/h;->i:I

    iput p1, v6, Ln7/h;->i:I

    .line 39
    invoke-static {v6}, Ln7/a;->f(Ln7/h;)V

    .line 40
    iget-object p1, p0, Ln7/d;->r:Ln7/h;

    const-string v0, "User-Agent"

    invoke-static {p1, v6, v0}, Ln7/a;->b(Ln7/h;Ln7/h;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Ln7/d;->r:Ln7/h;

    const-string v0, "Range"

    invoke-static {p1, v6, v0}, Ln7/a;->b(Ln7/h;Ln7/h;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Ln7/d;->r:Ln7/h;

    const-string v0, "Redirecting"

    invoke-virtual {p1, v0}, Ln7/h;->d(Ljava/lang/String;)V

    const-string p1, "Redirected"

    .line 43
    invoke-virtual {v6, p1}, Ln7/h;->d(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Ln7/d;->v:Ln7/a;

    iget-object p1, p1, Ln7/a;->d:Lk7/h;

    iget v7, p0, Ln7/d;->u:I

    iget-object v8, p0, Ln7/d;->q:Ln7/a$d;

    iget-object v9, p0, Ln7/d;->s:Lq7/a;

    new-instance v0, Ln7/c;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Ln7/c;-><init>(Ln7/d;Ln7/h;ILn7/a$d;Lq7/a;)V

    .line 45
    invoke-virtual {p1, v0, v1, v2}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    .line 46
    new-instance p1, Ll7/c$a;

    invoke-direct {p1}, Ll7/c$a;-><init>()V

    .line 47
    iput-object p1, p0, Lk7/n;->c:Ll7/c;

    return-void

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 48
    iget-object v0, p0, Ln7/d;->v:Ln7/a;

    iget-object v1, p0, Ln7/d;->q:Ln7/a$d;

    iget-object v4, p0, Ln7/d;->r:Ln7/h;

    iget-object v5, p0, Ln7/d;->s:Lq7/a;

    move-object v3, p0

    .line 49
    invoke-virtual/range {v0 .. v5}, Ln7/a;->e(Ln7/a$d;Ljava/lang/Exception;Ln7/j;Ln7/h;Lq7/a;)V

    return-void

    .line 50
    :cond_6
    iget-object p1, p0, Ln7/d;->r:Ln7/h;

    const-string v0, "Final (post cache response) headers:\n"

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ln7/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln7/h;->e(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Ln7/d;->v:Ln7/a;

    iget-object v2, p0, Ln7/d;->q:Ln7/a$d;

    const/4 v3, 0x0

    iget-object v5, p0, Ln7/d;->r:Ln7/h;

    iget-object v6, p0, Ln7/d;->s:Lq7/a;

    move-object v4, p0

    .line 52
    invoke-virtual/range {v1 .. v6}, Ln7/a;->e(Ln7/a$d;Ljava/lang/Exception;Ln7/j;Ln7/h;Lq7/a;)V

    return-void
.end method

.method public p(Ljava/lang/Exception;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ln7/d;->v:Ln7/a;

    iget-object v1, p0, Ln7/d;->q:Ln7/a$d;

    const/4 v3, 0x0

    iget-object v4, p0, Ln7/d;->r:Ln7/h;

    iget-object v5, p0, Ln7/d;->s:Lq7/a;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Ln7/a;->a(Ln7/a;Ln7/a$d;Ljava/lang/Exception;Ln7/j;Ln7/h;Lq7/a;)V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Ln7/d;->r:Ln7/h;

    const-string v0, "request completed"

    invoke-virtual {p1, v0}, Ln7/h;->e(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Ln7/d;->q:Ln7/a$d;

    invoke-virtual {p1}, Lm7/f;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Ln7/d;->q:Ln7/a$d;

    iget-object v0, p1, Ln7/a$d;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln7/j;->k:Ln7/w;

    if-nez v0, :cond_2

    .line 5
    iget-object p1, p1, Ln7/a$d;->k:Lm7/a;

    invoke-interface {p1}, Lm7/a;->cancel()Z

    .line 6
    iget-object p1, p0, Ln7/d;->q:Ln7/a$d;

    iget-object v0, p0, Ln7/d;->v:Ln7/a;

    iget-object v0, v0, Ln7/a;->d:Lk7/h;

    iget-object v1, p1, Ln7/a$d;->l:Ljava/lang/Runnable;

    iget-object v2, p0, Ln7/d;->r:Ln7/h;

    .line 7
    iget v2, v2, Ln7/h;->g:I

    int-to-long v2, v2

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    move-result-object v0

    iput-object v0, p1, Ln7/a$d;->k:Lm7/a;

    .line 9
    :cond_2
    iget-object p1, p0, Ln7/d;->v:Ln7/a;

    iget-object p1, p1, Ln7/a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln7/g;

    .line 10
    iget-object v1, p0, Ln7/d;->t:Ln7/g$g;

    invoke-interface {v0, v1}, Ln7/g;->e(Ln7/g$f;)V

    goto :goto_0

    :cond_3
    return-void
.end method
