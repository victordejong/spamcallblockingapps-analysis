.class final Lcom/facebook/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field b:J

.field c:J

.field d:J

.field private final e:Lcom/facebook/GraphRequest;

.field private final f:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/facebook/s;->e:Lcom/facebook/GraphRequest;

    .line 37
    iput-object p1, p0, Lcom/facebook/s;->f:Landroid/os/Handler;

    .line 39
    invoke-static {}, Lcom/facebook/g;->l()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/s;->a:J

    return-void
.end method


# virtual methods
.method final a()V
    .locals 9

    .line 63
    iget-wide v0, p0, Lcom/facebook/s;->b:J

    iget-wide v2, p0, Lcom/facebook/s;->c:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 64
    iget-object v0, p0, Lcom/facebook/s;->e:Lcom/facebook/GraphRequest;

    .line 1870
    iget-object v0, v0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/GraphRequest$b;

    .line 65
    iget-wide v6, p0, Lcom/facebook/s;->d:J

    const-wide/16 v1, 0x0

    cmp-long v3, v6, v1

    if-lez v3, :cond_1

    instance-of v1, v0, Lcom/facebook/GraphRequest$d;

    if-eqz v1, :cond_1

    .line 67
    iget-wide v4, p0, Lcom/facebook/s;->b:J

    .line 69
    move-object v3, v0

    check-cast v3, Lcom/facebook/GraphRequest$d;

    .line 71
    iget-object v0, p0, Lcom/facebook/s;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 74
    new-instance v8, Lcom/facebook/s$1;

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/s$1;-><init>(Lcom/facebook/s;Lcom/facebook/GraphRequest$d;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    :cond_0
    iget-wide v0, p0, Lcom/facebook/s;->b:J

    iput-wide v0, p0, Lcom/facebook/s;->c:J

    :cond_1
    return-void
.end method

.method final a(J)V
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/facebook/s;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/s;->d:J

    return-void
.end method
