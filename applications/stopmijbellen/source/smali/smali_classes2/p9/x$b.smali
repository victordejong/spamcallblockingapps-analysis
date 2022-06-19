.class public final Lp9/x$b;
.super Lq9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Lp9/f;

.field public final synthetic c:Lp9/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp9/x;

    return-void
.end method

.method public constructor <init>(Lp9/x;Lp9/f;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lp9/x$b;->c:Lp9/x;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lp9/x;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lq9/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lp9/x$b;->b:Lp9/f;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp9/x$b;->c:Lp9/x;

    iget-object v0, v0, Lp9/x;->c:Laa/c;

    invoke-virtual {v0}, Laa/c;->i()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lp9/x$b;->c:Lp9/x;

    invoke-virtual {v0}, Lp9/x;->b()Lp9/b0;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lp9/x$b;->c:Lp9/x;

    iget-object v1, v1, Lp9/x;->b:Lt9/i;

    .line 4
    iget-boolean v1, v1, Lt9/i;->d:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lp9/x$b;->b:Lp9/f;

    iget-object v1, p0, Lp9/x$b;->c:Lp9/x;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Lj6/g;

    invoke-virtual {v0, v1, v2}, Lj6/g;->a(Lp9/e;Ljava/io/IOException;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lp9/x$b;->b:Lp9/f;

    iget-object v2, p0, Lp9/x$b;->c:Lp9/x;

    check-cast v1, Lj6/g;

    invoke-virtual {v1, v2, v0}, Lj6/g;->b(Lp9/e;Lp9/b0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :goto_0
    iget-object v0, p0, Lp9/x$b;->c:Lp9/x;

    iget-object v0, v0, Lp9/x;->a:Lp9/v;

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    .line 8
    :goto_1
    :try_start_2
    iget-object v2, p0, Lp9/x$b;->c:Lp9/x;

    invoke-virtual {v2, v0}, Lp9/x;->d(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 9
    sget-object v1, Lx9/f;->a:Lx9/f;

    const/4 v2, 0x4

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lp9/x$b;->c:Lp9/x;

    invoke-virtual {v4}, Lp9/x;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lx9/f;->l(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lp9/x$b;->c:Lp9/x;

    .line 12
    iget-object v1, v1, Lp9/x;->d:Lp9/o;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lp9/x$b;->b:Lp9/f;

    iget-object v2, p0, Lp9/x$b;->c:Lp9/x;

    check-cast v1, Lj6/g;

    invoke-virtual {v1, v2, v0}, Lj6/g;->a(Lp9/e;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 15
    :goto_2
    iget-object v0, v0, Lp9/v;->a:Lp9/m;

    .line 16
    iget-object v1, v0, Lp9/m;->c:Ljava/util/Deque;

    invoke-virtual {v0, v1, p0}, Lp9/m;->a(Ljava/util/Deque;Ljava/lang/Object;)V

    return-void

    .line 17
    :goto_3
    iget-object v1, p0, Lp9/x$b;->c:Lp9/x;

    iget-object v1, v1, Lp9/x;->a:Lp9/v;

    .line 18
    iget-object v1, v1, Lp9/v;->a:Lp9/m;

    .line 19
    iget-object v2, v1, Lp9/m;->c:Ljava/util/Deque;

    invoke-virtual {v1, v2, p0}, Lp9/m;->a(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 20
    throw v0
.end method
