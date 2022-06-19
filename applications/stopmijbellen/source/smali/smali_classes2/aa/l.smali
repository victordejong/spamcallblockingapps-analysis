.class public Laa/l;
.super Laa/z;
.source "SourceFile"


# instance fields
.field public e:Laa/z;


# direct methods
.method public constructor <init>(Laa/z;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Laa/z;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Laa/l;->e:Laa/z;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Laa/z;
    .locals 1

    .line 1
    iget-object v0, p0, Laa/l;->e:Laa/z;

    invoke-virtual {v0}, Laa/z;->a()Laa/z;

    move-result-object v0

    return-object v0
.end method

.method public b()Laa/z;
    .locals 1

    .line 1
    iget-object v0, p0, Laa/l;->e:Laa/z;

    invoke-virtual {v0}, Laa/z;->b()Laa/z;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Laa/l;->e:Laa/z;

    invoke-virtual {v0}, Laa/z;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Laa/z;
    .locals 1

    .line 1
    iget-object v0, p0, Laa/l;->e:Laa/z;

    invoke-virtual {v0, p1, p2}, Laa/z;->d(J)Laa/z;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Laa/l;->e:Laa/z;

    invoke-virtual {v0}, Laa/z;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Laa/l;->e:Laa/z;

    invoke-virtual {v0}, Laa/z;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Laa/z;
    .locals 1

    .line 1
    iget-object v0, p0, Laa/l;->e:Laa/z;

    invoke-virtual {v0, p1, p2, p3}, Laa/z;->g(JLjava/util/concurrent/TimeUnit;)Laa/z;

    move-result-object p1

    return-object p1
.end method
