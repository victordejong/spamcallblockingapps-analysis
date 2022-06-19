.class public Lw7/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz7/a;
.implements Lz7/b;
.implements Lz7/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw7/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz7/a;",
        "Lz7/b;",
        "Lz7/c<",
        "Lz7/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lw7/e;

.field public b:Lw7/g;

.field public c:Landroid/os/Handler;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ln7/w;

.field public g:I

.field public h:Lo7/a;

.field public i:Z


# direct methods
.method public constructor <init>(Lw7/g;Lw7/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lw7/e;->i:Landroid/os/Handler;

    iput-object v0, p0, Lw7/p;->c:Landroid/os/Handler;

    const-string v0, "GET"

    .line 3
    iput-object v0, p0, Lw7/p;->d:Ljava/lang/String;

    const/16 v0, 0x7530

    .line 4
    iput v0, p0, Lw7/p;->g:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lw7/p;->i:Z

    .line 6
    invoke-interface {p1}, Lw7/g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Building request with dead context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ion"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iput-object p2, p0, Lw7/p;->a:Lw7/e;

    .line 9
    iput-object p1, p0, Lw7/p;->b:Lw7/g;

    return-void
.end method

.method public static g(Lw7/p;Lw7/p$a;Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lw7/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lw7/i;-><init>(Lw7/p;Lw7/p$a;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lw7/p;->c:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 4
    iget-object p0, p0, Lw7/p;->a:Lw7/e;

    iget-object p0, p0, Lw7/e;->a:Ln7/a;

    .line 5
    iget-object p0, p0, Ln7/a;->d:Lk7/h;

    .line 6
    invoke-virtual {p0, v0}, Lk7/h;->g(Ljava/lang/Runnable;)Lm7/a;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1, v0}, Lk7/h;->h(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a([B)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lo7/b;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {v0, v1, p1}, Lo7/b;-><init>(Ljava/io/InputStream;I)V

    const-string p1, "POST"

    .line 2
    iput-object p1, p0, Lw7/p;->d:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lw7/p;->h:Lo7/a;

    :cond_0
    return-object p0
.end method

.method public b(Ls6/k;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lz2/x;

    iget-object v1, p0, Lw7/p;->a:Lw7/e;

    .line 2
    iget-object v1, v1, Lw7/e;->f:Lw7/e$b;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v1, Lw7/e$b;->b:Lw7/e;

    iget-object v3, v2, Lw7/e;->b:Ls6/g;

    if-nez v3, :cond_0

    .line 5
    new-instance v3, Ls6/g;

    invoke-direct {v3}, Ls6/g;-><init>()V

    iput-object v3, v2, Lw7/e;->b:Ls6/g;

    .line 6
    :cond_0
    iget-object v2, v1, Lw7/e$b;->b:Lw7/e;

    iget-object v2, v2, Lw7/e;->b:Ls6/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 7
    invoke-direct {v0, v2, p1}, Lz2/x;-><init>(Ls6/g;Ls6/i;)V

    const-string p1, "POST"

    .line 8
    iput-object p1, p0, Lw7/p;->d:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lw7/p;->h:Lo7/a;

    return-object p0

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v1

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lz7/a;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lw7/p;->h()Ln7/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ln7/w;->a(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    :cond_0
    return-object p0
.end method

.method public d()Lc8/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/a<",
            "Ls6/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ld8/a;

    invoke-direct {v0}, Ld8/a;-><init>()V

    const-string v1, "application/json"

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lw7/p;->h()Ln7/w;

    move-result-object v2

    .line 4
    iget-object v2, v2, Ln7/w;->a:Ln7/a0;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Accept"

    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*/*"

    if-ne v2, v3, :cond_0

    .line 5
    invoke-virtual {p0, v4, v1}, Lw7/p;->m(Ljava/lang/String;Ljava/lang/String;)Lw7/p;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lw7/p;->l()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Lw7/p;->k(Landroid/net/Uri;)Ln7/h;

    move-result-object v3

    .line 8
    invoke-virtual {v0}, Ld8/b;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lw7/p;->a:Lw7/e;

    iget-object v5, v5, Lw7/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw7/q;

    .line 10
    iget-object v7, p0, Lw7/p;->a:Lw7/e;

    invoke-interface {v6, v7, v3, v4}, Lw7/q;->a(Lw7/e;Ln7/h;Ljava/lang/reflect/Type;)Lc8/a;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v2

    .line 11
    :cond_3
    new-instance v6, Lw7/n;

    invoke-direct {v6, p0, v2, v0}, Lw7/n;-><init>(Lw7/p;Ljava/lang/Runnable;Ls7/a;)V

    const-string v0, "Invalid URI"

    if-nez v1, :cond_4

    .line 12
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6, v1, v2, v2}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    goto :goto_0

    .line 14
    :cond_4
    iput-object v3, v6, Lw7/p$a;->j:Ln7/h;

    .line 15
    invoke-virtual {p0}, Lw7/p;->l()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_5

    .line 16
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v6, v1, v2, v2}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    goto :goto_0

    .line 18
    :cond_5
    invoke-virtual {p0, v1}, Lw7/p;->k(Landroid/net/Uri;)Ln7/h;

    move-result-object v0

    .line 19
    iput-object v0, v6, Lw7/p$a;->j:Ln7/h;

    .line 20
    new-instance v1, Lm7/g;

    invoke-direct {v1}, Lm7/g;-><init>()V

    .line 21
    new-instance v2, Lw7/j;

    invoke-direct {v2, p0, v0, v1}, Lw7/j;-><init>(Lw7/p;Ln7/h;Lm7/g;)V

    .line 22
    invoke-virtual {v2}, Lw7/j;->run()V

    .line 23
    new-instance v0, Lw7/l;

    invoke-direct {v0, p0, v6}, Lw7/l;-><init>(Lw7/p;Lw7/p$a;)V

    .line 24
    invoke-virtual {v1, v0}, Lm7/g;->k(Lm7/d;)V

    :goto_0
    return-object v6
.end method

.method public e(I)Lz7/a;
    .locals 0

    .line 1
    iput p1, p0, Lw7/p;->g:I

    return-object p0
.end method

.method public bridge synthetic f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lw7/p;->m(Ljava/lang/String;Ljava/lang/String;)Lw7/p;

    return-object p0
.end method

.method public final h()Ln7/w;
    .locals 2

    .line 1
    iget-object v0, p0, Lw7/p;->f:Ln7/w;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ln7/w;

    invoke-direct {v0}, Ln7/w;-><init>()V

    iput-object v0, p0, Lw7/p;->f:Ln7/w;

    .line 3
    iget-object v1, p0, Lw7/p;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Ln7/h;->f(Ln7/w;Landroid/net/Uri;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lw7/p;->f:Ln7/w;

    return-object v0
.end method

.method public i(Ln7/h;Lw7/p$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln7/h;",
            "Lw7/p$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw7/p;->a:Lw7/e;

    iget-object v0, v0, Lw7/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw7/q;

    .line 2
    iget-object v2, p0, Lw7/p;->a:Lw7/e;

    invoke-interface {v1, v2, p1, p2}, Lw7/q;->c(Lw7/e;Ln7/h;Lm7/d;)Lm7/c;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using loader: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln7/h;->d(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, v2}, Lm7/g;->d(Lm7/a;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unknown uri scheme"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, p1, v0, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    :goto_0
    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "GET"

    .line 1
    iput-object v0, p0, Lw7/p;->d:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    iput-object p1, p0, Lw7/p;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final k(Landroid/net/Uri;)Ln7/h;
    .locals 4

    .line 1
    iget-object v0, p0, Lw7/p;->a:Lw7/e;

    .line 2
    iget-object v0, v0, Lw7/e;->f:Lw7/e$b;

    .line 3
    iget-object v0, v0, Lw7/e$b;->a:Le8/b;

    .line 4
    iget-object v1, p0, Lw7/p;->d:Ljava/lang/String;

    iget-object v2, p0, Lw7/p;->f:Ln7/w;

    check-cast v0, Lw7/e$b$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v3, Ln7/h;

    invoke-direct {v3, p1, v1, v2}, Ln7/h;-><init>(Landroid/net/Uri;Ljava/lang/String;Ln7/w;)V

    .line 6
    iget-object p1, v0, Lw7/e$b$a;->a:Lw7/e$b;

    iget-object p1, p1, Lw7/e$b;->b:Lw7/e;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, v3, Ln7/h;->d:Ln7/w;

    .line 8
    iget-object v0, v0, Lw7/e$b$a;->a:Lw7/e$b;

    iget-object v0, v0, Lw7/e$b;->b:Lw7/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "User-Agent"

    invoke-virtual {v1, v0, p1}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    .line 9
    :cond_0
    iget-boolean v0, p0, Lw7/p;->i:Z

    .line 10
    iput-boolean v0, v3, Ln7/h;->e:Z

    .line 11
    iget-object v0, p0, Lw7/p;->h:Lo7/a;

    .line 12
    iput-object v0, v3, Ln7/h;->f:Lo7/a;

    .line 13
    iget-object v0, p0, Lw7/p;->a:Lw7/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lw7/p;->a:Lw7/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iput-object p1, v3, Ln7/h;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    iput v0, v3, Ln7/h;->k:I

    .line 16
    iput-object p1, v3, Ln7/h;->h:Ljava/lang/String;

    .line 17
    iput v0, v3, Ln7/h;->i:I

    .line 18
    iget p1, p0, Lw7/p;->g:I

    .line 19
    iput p1, v3, Ln7/h;->g:I

    const-string p1, "preparing request"

    .line 20
    invoke-virtual {v3, p1}, Ln7/h;->b(Ljava/lang/String;)V

    return-object v3
.end method

.method public final l()Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lw7/p;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)Lw7/p;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lw7/p;->h()Ln7/w;

    move-result-object p2

    .line 2
    iget-object p2, p2, Ln7/w;->a:Ln7/a0;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lw7/p;->h()Ln7/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    :goto_0
    return-object p0
.end method
