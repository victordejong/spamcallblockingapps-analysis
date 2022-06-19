.class public Lhj0;
.super Ljava/io/FilterOutputStream;
.source ""

# interfaces
.implements Lij0;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Ljj0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lzi0;

.field public final c:J

.field public d:J

.field public f:J

.field public g:J

.field public h:Ljj0;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lzi0;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lzi0;",
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Ljj0;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Lhj0;->b:Lzi0;

    iput-object p3, p0, Lhj0;->a:Ljava/util/Map;

    iput-wide p4, p0, Lhj0;->g:J

    invoke-static {}, Lui0;->s()J

    move-result-wide p1

    iput-wide p1, p0, Lhj0;->c:J

    return-void
.end method

.method public static synthetic e(Lhj0;)Lzi0;
    .locals 0

    iget-object p0, p0, Lhj0;->b:Lzi0;

    return-object p0
.end method

.method public static synthetic g(Lhj0;)J
    .locals 2

    iget-wide v0, p0, Lhj0;->d:J

    return-wide v0
.end method

.method public static synthetic h(Lhj0;)J
    .locals 2

    iget-wide v0, p0, Lhj0;->g:J

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/facebook/GraphRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhj0;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljj0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lhj0;->h:Ljj0;

    return-void
.end method

.method public close()V
    .locals 2

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iget-object v0, p0, Lhj0;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj0;

    invoke-virtual {v1}, Ljj0;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lhj0;->m()V

    return-void
.end method

.method public final l(J)V
    .locals 4

    iget-object v0, p0, Lhj0;->h:Ljj0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljj0;->a(J)V

    :cond_0
    iget-wide v0, p0, Lhj0;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lhj0;->d:J

    iget-wide p1, p0, Lhj0;->f:J

    iget-wide v2, p0, Lhj0;->c:J

    add-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    iget-wide p1, p0, Lhj0;->g:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lhj0;->m()V

    :cond_2
    return-void
.end method

.method public final m()V
    .locals 9

    iget-wide v0, p0, Lhj0;->d:J

    iget-wide v2, p0, Lhj0;->f:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    iget-object v0, p0, Lhj0;->b:Lzi0;

    invoke-virtual {v0}, Lzi0;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzi0$a;

    instance-of v2, v1, Lzi0$b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhj0;->b:Lzi0;

    invoke-virtual {v2}, Lzi0;->j()Landroid/os/Handler;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lzi0$b;

    if-nez v2, :cond_1

    iget-object v4, p0, Lhj0;->b:Lzi0;

    iget-wide v5, p0, Lhj0;->d:J

    iget-wide v7, p0, Lhj0;->g:J

    invoke-interface/range {v3 .. v8}, Lzi0$b;->b(Lzi0;JJ)V

    goto :goto_0

    :cond_1
    new-instance v1, Lhj0$a;

    invoke-direct {v1, p0, v3}, Lhj0$a;-><init>(Lhj0;Lzi0$b;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lhj0;->d:J

    iput-wide v0, p0, Lhj0;->f:J

    :cond_3
    return-void
.end method

.method public write(I)V
    .locals 2

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lhj0;->l(J)V

    return-void
.end method

.method public write([B)V
    .locals 2

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    array-length p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lhj0;->l(J)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p1, p3

    invoke-virtual {p0, p1, p2}, Lhj0;->l(J)V

    return-void
.end method
