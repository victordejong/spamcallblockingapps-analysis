.class public Lt7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/m;


# instance fields
.field public a:Lk7/h;

.field public b:Ljava/io/InputStream;

.field public c:Ll7/c;

.field public d:I

.field public e:Lk7/l;

.field public f:Ljava/lang/Runnable;

.field public g:Ll7/a;


# direct methods
.method public constructor <init>(Lk7/h;Ljava/io/InputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lt7/c;->d:I

    .line 3
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    iput-object v0, p0, Lt7/c;->e:Lk7/l;

    .line 4
    new-instance v0, Lt7/c$a;

    invoke-direct {v0, p0}, Lt7/c$a;-><init>(Lt7/c;)V

    iput-object v0, p0, Lt7/c;->f:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lt7/c;->a:Lk7/h;

    .line 6
    iput-object p2, p0, Lt7/c;->b:Ljava/io/InputStream;

    .line 7
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lt7/c;->f:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a()Lk7/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lt7/c;->a:Lk7/h;

    return-object v0
.end method

.method public b(Ll7/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt7/c;->c:Ll7/c;

    return-void
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lt7/c;->a:Lk7/h;

    .line 2
    new-instance v1, Lt7/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lt7/b;-><init>(Lt7/c;Ljava/lang/Exception;)V

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lk7/h;->i(Ljava/lang/Runnable;J)Lm7/a;

    .line 4
    :try_start_0
    iget-object v0, p0, Lt7/c;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Ll7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt7/c;->g:Ll7/a;

    return-void
.end method

.method public i()Ll7/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lt7/c;->c:Ll7/c;

    return-object v0
.end method
