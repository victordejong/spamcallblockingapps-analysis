.class public Ln7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln7/a$d;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln7/g;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ln7/n;

.field public c:Ln7/s;

.field public d:Lk7/h;


# direct methods
.method public constructor <init>(Lk7/h;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ln7/a;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Ln7/a;->d:Lk7/h;

    .line 4
    new-instance p1, Ln7/s;

    const-string v1, "http"

    const/16 v2, 0x50

    .line 5
    invoke-direct {p1, p0, v1, v2}, Ln7/s;-><init>(Ln7/a;Ljava/lang/String;I)V

    .line 6
    iput-object p1, p0, Ln7/a;->c:Ln7/s;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 8
    new-instance p1, Ln7/n;

    invoke-direct {p1, p0}, Ln7/n;-><init>(Ln7/a;)V

    iput-object p1, p0, Ln7/a;->b:Ln7/n;

    .line 9
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 10
    new-instance p1, Ln7/y;

    invoke-direct {p1}, Ln7/y;-><init>()V

    .line 11
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 12
    iget-object p1, p0, Ln7/a;->b:Ln7/n;

    new-instance v0, Ln7/c0;

    invoke-direct {v0}, Ln7/c0;-><init>()V

    .line 13
    iget-object p1, p1, Ln7/n;->j:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ln7/a;Ln7/a$d;Ljava/lang/Exception;Ln7/j;Ln7/h;Lq7/a;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Ln7/a;->e(Ln7/a$d;Ljava/lang/Exception;Ln7/j;Ln7/h;Lq7/a;)V

    return-void
.end method

.method public static b(Ln7/h;Ln7/h;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Ln7/h;->d:Ln7/w;

    .line 2
    iget-object p0, p0, Ln7/w;->a:Ln7/a0;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Ln7/h;->d:Ln7/w;

    .line 5
    invoke-virtual {p1, p2, p0}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    :cond_0
    return-void
.end method

.method public static f(Ln7/h;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln7/h;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ln7/h;->c:Landroid/net/Uri;

    .line 4
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 7
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 10
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 12
    iput-object v1, p0, Ln7/h;->h:Ljava/lang/String;

    .line 13
    iput v0, p0, Ln7/h;->i:I

    :catch_0
    return-void
.end method


# virtual methods
.method public final c(Ln7/h;ILn7/a$d;Lq7/a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ln7/a;->d:Lk7/h;

    invoke-virtual {v0}, Lk7/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Ln7/a;->d(Ln7/h;ILn7/a$d;Lq7/a;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln7/a;->d:Lk7/h;

    new-instance v7, Ln7/a$a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ln7/a$a;-><init>(Ln7/a;Ln7/h;ILn7/a$d;Lq7/a;)V

    invoke-virtual {v0, v7}, Lk7/h;->g(Ljava/lang/Runnable;)Lm7/a;

    :goto_0
    return-void
.end method

.method public final d(Ln7/h;ILn7/a$d;Lq7/a;)V
    .locals 13

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    const/16 v0, 0xf

    move v6, p2

    if-le v6, v0, :cond_0

    .line 1
    new-instance v2, Lcom/koushikdutta/async/http/RedirectLimitExceededException;

    const-string v0, "too many redirects"

    invoke-direct {v2, v0}, Lcom/koushikdutta/async/http/RedirectLimitExceededException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p3

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Ln7/a;->e(Ln7/a$d;Ljava/lang/Exception;Ln7/j;Ln7/h;Lq7/a;)V

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v10, Ln7/g$g;

    invoke-direct {v10}, Ln7/g$g;-><init>()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Ln7/h;->l:J

    .line 5
    iput-object v8, v10, Ln7/g$e;->b:Ln7/h;

    const-string v0, "Executing request."

    .line 6
    invoke-virtual {p1, v0}, Ln7/h;->b(Ljava/lang/String;)V

    .line 7
    iget-object v0, v7, Ln7/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln7/g;

    .line 8
    invoke-interface {v1, v10}, Ln7/g;->c(Ln7/g$e;)V

    goto :goto_0

    .line 9
    :cond_1
    iget v11, v8, Ln7/h;->g:I

    if-lez v11, :cond_2

    .line 10
    new-instance v12, Ln7/a$b;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Ln7/a$b;-><init>(Ln7/a;Ln7/g$g;Ln7/a$d;Ln7/h;Lq7/a;)V

    iput-object v12, v9, Ln7/a$d;->l:Ljava/lang/Runnable;

    .line 11
    iget-object v0, v7, Ln7/a;->d:Lk7/h;

    int-to-long v1, v11

    invoke-virtual {v0, v12, v1, v2}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    move-result-object v0

    iput-object v0, v9, Ln7/a$d;->k:Lm7/a;

    .line 12
    :cond_2
    new-instance v11, Ln7/a$c;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v10

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ln7/a$c;-><init>(Ln7/a;Ln7/h;Ln7/a$d;Lq7/a;Ln7/g$g;I)V

    iput-object v11, v10, Ln7/g$a;->c:Ll7/b;

    .line 13
    invoke-static {p1}, Ln7/a;->f(Ln7/h;)V

    .line 14
    iget-object v0, v8, Ln7/h;->f:Lo7/a;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, v8, Ln7/h;->d:Ln7/w;

    .line 16
    iget-object v0, v0, Ln7/w;->a:Ln7/a0;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Content-Type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 17
    iget-object v0, v8, Ln7/h;->d:Ln7/w;

    .line 18
    iget-object v1, v8, Ln7/h;->f:Lo7/a;

    .line 19
    invoke-interface {v1}, Lo7/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ln7/w;->d(Ljava/lang/String;Ljava/lang/String;)Ln7/w;

    .line 20
    :cond_3
    iget-object v0, v7, Ln7/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln7/g;

    .line 21
    invoke-interface {v1, v10}, Ln7/g;->h(Ln7/g$a;)Lm7/a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 22
    iput-object v1, v10, Ln7/g$a;->d:Lm7/a;

    .line 23
    invoke-virtual {v9, v1}, Lm7/g;->d(Lm7/a;)Z

    return-void

    .line 24
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid uri="

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    iget-object v1, v8, Ln7/h;->c:Landroid/net/Uri;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " middlewares="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Ln7/a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p3

    move-object v4, p1

    move-object/from16 v5, p4

    .line 27
    invoke-virtual/range {v0 .. v5}, Ln7/a;->e(Ln7/a$d;Ljava/lang/Exception;Ln7/j;Ln7/h;Lq7/a;)V

    return-void
.end method

.method public final e(Ln7/a$d;Ljava/lang/Exception;Ln7/j;Ln7/h;Lq7/a;)V
    .locals 10

    .line 1
    iget-object v0, p1, Ln7/a$d;->k:Lm7/a;

    invoke-interface {v0}, Lm7/a;->cancel()Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "Connection error"

    .line 2
    invoke-virtual {p4, v1, p2}, Ln7/h;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3
    invoke-virtual {p1, p2, v0, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string v1, "Connection successful"

    .line 4
    invoke-virtual {p4, v1}, Ln7/h;->b(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0, p3, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_5

    .line 6
    check-cast p5, Le8/f$a;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    const-wide/16 v1, -0x1

    if-eqz p3, :cond_4

    .line 7
    iget-object v0, p3, Ln7/j;->i:Ln7/h;

    .line 8
    new-instance p4, Lo7/b;

    .line 9
    iget v3, p3, Ln7/j;->m:I

    .line 10
    iget-object v4, p3, Ln7/j;->o:Ljava/lang/String;

    .line 11
    iget-object v5, p3, Ln7/j;->k:Ln7/w;

    .line 12
    invoke-direct {p4, v3, v4, v5}, Lo7/b;-><init>(ILjava/lang/String;Ln7/w;)V

    .line 13
    iget-object v3, v5, Ln7/w;->a:Ln7/a0;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Content-Length"

    invoke-virtual {v5, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 15
    :goto_1
    iget-object v3, p3, Ln7/j;->k:Ln7/w;

    .line 16
    iget-object v3, v3, Ln7/w;->a:Ln7/a0;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "X-Served-From"

    invoke-virtual {v5, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln7/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cache"

    .line 17
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p1, 0x2

    goto :goto_2

    :cond_2
    const-string v4, "conditional-cache"

    .line 18
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, 0x3

    :cond_3
    :goto_2
    move v7, p1

    move-object v8, p4

    move-object v9, v0

    move-wide v5, v1

    goto :goto_3

    :cond_4
    move-object v8, v0

    move-object v9, v8

    move-wide v5, v1

    const/4 v7, 0x4

    .line 19
    :goto_3
    iget-object p1, p5, Le8/f$a;->a:Lm7/d;

    new-instance p4, Lw7/q$a;

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v3 .. v9}, Lw7/q$a;-><init>(Lk7/m;JILo7/b;Ln7/h;)V

    invoke-interface {p1, p2, p4}, Lm7/d;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void

    :cond_5
    if-eqz p3, :cond_6

    .line 20
    new-instance p1, Ll7/c$a;

    invoke-direct {p1}, Ll7/c$a;-><init>()V

    .line 21
    iput-object p1, p3, Lk7/n;->c:Ll7/c;

    .line 22
    invoke-virtual {p3}, Ln7/j;->close()V

    :cond_6
    return-void
.end method
