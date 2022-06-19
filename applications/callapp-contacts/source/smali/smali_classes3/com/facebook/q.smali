.class final Lcom/facebook/q;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/r;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/s;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/i;

.field private final c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/facebook/s;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/i;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lcom/facebook/i;",
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/s;",
            ">;J)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    iput-object p2, p0, Lcom/facebook/q;->b:Lcom/facebook/i;

    .line 44
    iput-object p3, p0, Lcom/facebook/q;->a:Ljava/util/Map;

    .line 45
    iput-wide p4, p0, Lcom/facebook/q;->f:J

    .line 47
    invoke-static {}, Lcom/facebook/g;->l()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/q;->c:J

    return-void
.end method

.method static synthetic a(Lcom/facebook/q;)Lcom/facebook/i;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/q;->b:Lcom/facebook/i;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 63
    iget-wide v0, p0, Lcom/facebook/q;->d:J

    iget-wide v2, p0, Lcom/facebook/q;->e:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 64
    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/i;

    .line 1172
    iget-object v0, v0, Lcom/facebook/i;->e:Ljava/util/List;

    .line 64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/i$a;

    .line 65
    instance-of v2, v1, Lcom/facebook/i$b;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/facebook/q;->b:Lcom/facebook/i;

    .line 2160
    iget-object v2, v2, Lcom/facebook/i;->a:Landroid/os/Handler;

    .line 69
    check-cast v1, Lcom/facebook/i$b;

    if-eqz v2, :cond_0

    .line 74
    new-instance v3, Lcom/facebook/q$1;

    invoke-direct {v3, p0, v1}, Lcom/facebook/q$1;-><init>(Lcom/facebook/q;Lcom/facebook/i$b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 85
    :cond_1
    iget-wide v0, p0, Lcom/facebook/q;->d:J

    iput-wide v0, p0, Lcom/facebook/q;->e:J

    :cond_2
    return-void
.end method

.method private a(J)V
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/facebook/q;->g:Lcom/facebook/s;

    if-eqz v0, :cond_1

    .line 1051
    iget-wide v1, v0, Lcom/facebook/s;->b:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/facebook/s;->b:J

    .line 1053
    iget-wide v1, v0, Lcom/facebook/s;->b:J

    iget-wide v3, v0, Lcom/facebook/s;->c:J

    iget-wide v5, v0, Lcom/facebook/s;->a:J

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    iget-wide v1, v0, Lcom/facebook/s;->b:J

    iget-wide v3, v0, Lcom/facebook/s;->d:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 1054
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/s;->a()V

    .line 55
    :cond_1
    iget-wide v0, p0, Lcom/facebook/q;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/q;->d:J

    .line 57
    iget-wide p1, p0, Lcom/facebook/q;->e:J

    iget-wide v2, p0, Lcom/facebook/q;->c:J

    add-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    iget-wide p1, p0, Lcom/facebook/q;->f:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_3

    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/facebook/q;->a()V

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/facebook/q;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/facebook/q;->d:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/q;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/facebook/q;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/facebook/GraphRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/facebook/q;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/facebook/q;->g:Lcom/facebook/s;

    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 123
    iget-object v0, p0, Lcom/facebook/q;->a:Ljava/util/Map;

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

    check-cast v1, Lcom/facebook/s;

    .line 124
    invoke-virtual {v1}, Lcom/facebook/s;->a()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/facebook/q;->a()V

    return-void
.end method

.method public final write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/facebook/q;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const-wide/16 v0, 0x1

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/facebook/q;->a(J)V

    return-void
.end method

.method public final write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/facebook/q;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 104
    array-length p1, p1

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/facebook/q;->a(J)V

    return-void
.end method

.method public final write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/facebook/q;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p1, p3

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/facebook/q;->a(J)V

    return-void
.end method
