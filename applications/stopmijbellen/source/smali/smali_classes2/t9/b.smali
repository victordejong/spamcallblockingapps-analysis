.class public final Lt9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt9/b$a;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lt9/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lp9/t$a;)Lp9/b0;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lt9/f;

    .line 2
    iget-object v0, p1, Lt9/f;->c:Lt9/c;

    .line 3
    iget-object v1, p1, Lt9/f;->b:Ls9/e;

    .line 4
    iget-object v2, p1, Lt9/f;->d:Ls9/c;

    .line 5
    iget-object v3, p1, Lt9/f;->f:Lp9/y;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7
    iget-object v6, p1, Lt9/f;->h:Lp9/o;

    .line 8
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v0, v3}, Lt9/c;->e(Lp9/y;)V

    .line 10
    iget-object v6, p1, Lt9/f;->h:Lp9/o;

    .line 11
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v6, v3, Lp9/y;->b:Ljava/lang/String;

    .line 13
    invoke-static {v6}, Lb0/a;->g(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 14
    iget-object v6, v3, Lp9/y;->d:Lp9/a0;

    if-eqz v6, :cond_2

    .line 15
    iget-object v6, v3, Lp9/y;->c:Lp9/r;

    const-string v8, "Expect"

    invoke-virtual {v6, v8}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    .line 16
    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 17
    invoke-interface {v0}, Lt9/c;->c()V

    .line 18
    iget-object v6, p1, Lt9/f;->h:Lp9/o;

    .line 19
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    .line 20
    invoke-interface {v0, v6}, Lt9/c;->f(Z)Lp9/b0$a;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    if-nez v6, :cond_1

    .line 21
    iget-object v2, p1, Lt9/f;->h:Lp9/o;

    .line 22
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v2, v3, Lp9/y;->d:Lp9/a0;

    .line 24
    check-cast v2, Lp9/z;

    .line 25
    iget v2, v2, Lp9/z;->b:I

    int-to-long v8, v2

    .line 26
    new-instance v2, Lt9/b$a;

    .line 27
    invoke-interface {v0, v3, v8, v9}, Lt9/c;->d(Lp9/y;J)Laa/x;

    move-result-object v8

    invoke-direct {v2, v8}, Lt9/b$a;-><init>(Laa/x;)V

    .line 28
    sget-object v8, Laa/o;->a:Ljava/util/logging/Logger;

    .line 29
    new-instance v8, Laa/r;

    invoke-direct {v8, v2}, Laa/r;-><init>(Laa/x;)V

    .line 30
    iget-object v2, v3, Lp9/y;->d:Lp9/a0;

    .line 31
    check-cast v2, Lp9/z;

    .line 32
    iget-object v9, v2, Lp9/z;->c:[B

    iget v10, v2, Lp9/z;->d:I

    iget v2, v2, Lp9/z;->b:I

    invoke-virtual {v8, v9, v10, v2}, Laa/r;->d([BII)Laa/g;

    .line 33
    invoke-virtual {v8}, Laa/r;->close()V

    .line 34
    iget-object v2, p1, Lt9/f;->h:Lp9/o;

    .line 35
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {v2}, Ls9/c;->h()Z

    move-result v2

    if-nez v2, :cond_3

    .line 37
    invoke-virtual {v1}, Ls9/e;->f()V

    goto :goto_1

    :cond_2
    move-object v6, v7

    .line 38
    :cond_3
    :goto_1
    invoke-interface {v0}, Lt9/c;->b()V

    const/4 v2, 0x0

    if-nez v6, :cond_4

    .line 39
    iget-object v6, p1, Lt9/f;->h:Lp9/o;

    .line 40
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-interface {v0, v2}, Lt9/c;->f(Z)Lp9/b0$a;

    move-result-object v6

    .line 42
    :cond_4
    iput-object v3, v6, Lp9/b0$a;->a:Lp9/y;

    .line 43
    invoke-virtual {v1}, Ls9/e;->b()Ls9/c;

    move-result-object v8

    .line 44
    iget-object v8, v8, Ls9/c;->f:Lp9/q;

    .line 45
    iput-object v8, v6, Lp9/b0$a;->e:Lp9/q;

    .line 46
    iput-wide v4, v6, Lp9/b0$a;->k:J

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 48
    iput-wide v8, v6, Lp9/b0$a;->l:J

    .line 49
    invoke-virtual {v6}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object v6

    .line 50
    iget v8, v6, Lp9/b0;->c:I

    const/16 v9, 0x64

    if-ne v8, v9, :cond_5

    .line 51
    invoke-interface {v0, v2}, Lt9/c;->f(Z)Lp9/b0$a;

    move-result-object v2

    .line 52
    iput-object v3, v2, Lp9/b0$a;->a:Lp9/y;

    .line 53
    invoke-virtual {v1}, Ls9/e;->b()Ls9/c;

    move-result-object v3

    .line 54
    iget-object v3, v3, Ls9/c;->f:Lp9/q;

    .line 55
    iput-object v3, v2, Lp9/b0$a;->e:Lp9/q;

    .line 56
    iput-wide v4, v2, Lp9/b0$a;->k:J

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 58
    iput-wide v3, v2, Lp9/b0$a;->l:J

    .line 59
    invoke-virtual {v2}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object v6

    .line 60
    iget v8, v6, Lp9/b0;->c:I

    .line 61
    :cond_5
    iget-object p1, p1, Lt9/f;->h:Lp9/o;

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-boolean p1, p0, Lt9/b;->a:Z

    if-eqz p1, :cond_6

    const/16 p1, 0x65

    if-ne v8, p1, :cond_6

    .line 64
    new-instance p1, Lp9/b0$a;

    invoke-direct {p1, v6}, Lp9/b0$a;-><init>(Lp9/b0;)V

    .line 65
    sget-object v0, Lq9/c;->c:Lp9/d0;

    .line 66
    iput-object v0, p1, Lp9/b0$a;->g:Lp9/d0;

    .line 67
    invoke-virtual {p1}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object p1

    goto :goto_2

    .line 68
    :cond_6
    new-instance p1, Lp9/b0$a;

    invoke-direct {p1, v6}, Lp9/b0$a;-><init>(Lp9/b0;)V

    .line 69
    invoke-interface {v0, v6}, Lt9/c;->a(Lp9/b0;)Lp9/d0;

    move-result-object v0

    .line 70
    iput-object v0, p1, Lp9/b0$a;->g:Lp9/d0;

    .line 71
    invoke-virtual {p1}, Lp9/b0$a;->b()Lp9/b0;

    move-result-object p1

    .line 72
    :goto_2
    iget-object v0, p1, Lp9/b0;->a:Lp9/y;

    .line 73
    iget-object v0, v0, Lp9/y;->c:Lp9/r;

    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "close"

    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 75
    iget-object v0, p1, Lp9/b0;->f:Lp9/r;

    invoke-virtual {v0, v2}, Lp9/r;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v7, v0

    .line 76
    :cond_7
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 77
    :cond_8
    invoke-virtual {v1}, Ls9/e;->f()V

    :cond_9
    const/16 v0, 0xcc

    if-eq v8, v0, :cond_a

    const/16 v0, 0xcd

    if-ne v8, v0, :cond_b

    .line 78
    :cond_a
    iget-object v0, p1, Lp9/b0;->g:Lp9/d0;

    .line 79
    invoke-virtual {v0}, Lp9/d0;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_c

    :cond_b
    return-object p1

    .line 80
    :cond_c
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "HTTP "

    const-string v2, " had non-zero Content-Length: "

    invoke-static {v1, v8, v2}, Landroid/support/v4/media/b;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    iget-object p1, p1, Lp9/b0;->g:Lp9/d0;

    .line 82
    invoke-virtual {p1}, Lp9/d0;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
