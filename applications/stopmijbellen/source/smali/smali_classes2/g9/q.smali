.class public Lg9/q;
.super Lg9/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg9/q$b;,
        Lg9/q$a;
    }
.end annotation


# instance fields
.field public final a:Lg9/j;

.field public final b:Lg9/z;


# direct methods
.method public constructor <init>(Lg9/j;Lg9/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg9/x;-><init>()V

    .line 2
    iput-object p1, p0, Lg9/q;->a:Lg9/j;

    .line 3
    iput-object p2, p0, Lg9/q;->b:Lg9/z;

    return-void
.end method


# virtual methods
.method public c(Lg9/v;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lg9/v;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public f(Lg9/v;I)Lg9/x$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lg9/s$d;->d:Lg9/s$d;

    sget-object v1, Lg9/s$d;->c:Lg9/s$d;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 2
    sget-object p2, Lp9/d;->n:Lp9/d;

    goto :goto_3

    .line 3
    :cond_1
    new-instance v4, Lp9/d$a;

    invoke-direct {v4}, Lp9/d$a;-><init>()V

    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    .line 4
    iput-boolean v2, v4, Lp9/d$a;->a:Z

    :cond_3
    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_5

    .line 5
    iput-boolean v2, v4, Lp9/d$a;->b:Z

    .line 6
    :cond_5
    new-instance p2, Lp9/d;

    invoke-direct {p2, v4}, Lp9/d;-><init>(Lp9/d$a;)V

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    .line 7
    :goto_3
    new-instance v4, Lp9/y$a;

    invoke-direct {v4}, Lp9/y$a;-><init>()V

    iget-object p1, p1, Lg9/v;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lp9/y$a;->d(Ljava/lang/String;)Lp9/y$a;

    if-eqz p2, :cond_8

    .line 8
    invoke-virtual {p2}, Lp9/d;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const-string v5, "Cache-Control"

    if-eqz p2, :cond_7

    .line 10
    iget-object p1, v4, Lp9/y$a;->c:Lp9/r$a;

    invoke-virtual {p1, v5}, Lp9/r$a;->d(Ljava/lang/String;)Lp9/r$a;

    goto :goto_4

    .line 11
    :cond_7
    invoke-virtual {v4, v5, p1}, Lp9/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lp9/y$a;

    .line 12
    :cond_8
    :goto_4
    invoke-virtual {v4}, Lp9/y$a;->a()Lp9/y;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lg9/q;->a:Lg9/j;

    check-cast p2, Lg9/r;

    .line 14
    iget-object p2, p2, Lg9/r;->a:Lp9/e$a;

    check-cast p2, Lp9/v;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v4, Lp9/x;

    invoke-direct {v4, p2, p1, v3}, Lp9/x;-><init>(Lp9/v;Lp9/y;Z)V

    .line 16
    iget-object p1, p2, Lp9/v;->f:Lp9/o$b;

    .line 17
    check-cast p1, Lp9/p;

    .line 18
    iget-object p1, p1, Lp9/p;->a:Lp9/o;

    .line 19
    iput-object p1, v4, Lp9/x;->d:Lp9/o;

    .line 20
    invoke-virtual {v4}, Lp9/x;->a()Lp9/b0;

    move-result-object p1

    .line 21
    iget-object p2, p1, Lp9/b0;->g:Lp9/d0;

    .line 22
    iget v4, p1, Lp9/b0;->c:I

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_9

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_e

    .line 23
    iget-object p1, p1, Lp9/b0;->i:Lp9/b0;

    if-nez p1, :cond_a

    move-object p1, v0

    goto :goto_6

    :cond_a
    move-object p1, v1

    :goto_6
    const-wide/16 v2, 0x0

    if-ne p1, v1, :cond_c

    .line 24
    invoke-virtual {p2}, Lp9/d0;->d()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_b

    goto :goto_7

    .line 25
    :cond_b
    invoke-virtual {p2}, Lp9/d0;->close()V

    .line 26
    new-instance p1, Lg9/q$a;

    const-string p2, "Received response with 0 content-length header."

    invoke-direct {p1, p2}, Lg9/q$a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_7
    if-ne p1, v0, :cond_d

    .line 27
    invoke-virtual {p2}, Lp9/d0;->d()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_d

    .line 28
    iget-object v0, p0, Lg9/q;->b:Lg9/z;

    invoke-virtual {p2}, Lp9/d0;->d()J

    move-result-wide v1

    .line 29
    iget-object v0, v0, Lg9/z;->b:Landroid/os/Handler;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    :cond_d
    new-instance v0, Lg9/x$a;

    invoke-virtual {p2}, Lp9/d0;->l()Laa/h;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lg9/x$a;-><init>(Laa/y;Lg9/s$d;)V

    return-object v0

    .line 31
    :cond_e
    invoke-virtual {p2}, Lp9/d0;->close()V

    .line 32
    new-instance p2, Lg9/q$b;

    .line 33
    iget p1, p1, Lp9/b0;->c:I

    .line 34
    invoke-direct {p2, p1, v3}, Lg9/q$b;-><init>(II)V

    throw p2
.end method

.method public g(ZLandroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
