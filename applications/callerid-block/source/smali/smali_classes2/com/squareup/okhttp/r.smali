.class public final Lcom/squareup/okhttp/r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/r$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/p;

.field private final b:Lcom/squareup/okhttp/Protocol;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lcom/squareup/okhttp/j;

.field private final f:Lcom/squareup/okhttp/k;

.field private final g:Lcom/squareup/okhttp/s;

.field private h:Lcom/squareup/okhttp/r;

.field private i:Lcom/squareup/okhttp/r;

.field private final j:Lcom/squareup/okhttp/r;

.field private volatile k:Lcom/squareup/okhttp/d;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/r$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/squareup/okhttp/r$b;->a(Lcom/squareup/okhttp/r$b;)Lcom/squareup/okhttp/p;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/r;->a:Lcom/squareup/okhttp/p;

    invoke-static {p1}, Lcom/squareup/okhttp/r$b;->b(Lcom/squareup/okhttp/r$b;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/r;->b:Lcom/squareup/okhttp/Protocol;

    invoke-static {p1}, Lcom/squareup/okhttp/r$b;->c(Lcom/squareup/okhttp/r$b;)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/r;->c:I

    invoke-static {p1}, Lcom/squareup/okhttp/r$b;->d(Lcom/squareup/okhttp/r$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/r;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/squareup/okhttp/r$b;->e(Lcom/squareup/okhttp/r$b;)Lcom/squareup/okhttp/j;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/r;->e:Lcom/squareup/okhttp/j;

    invoke-static {p1}, Lcom/squareup/okhttp/r$b;->f(Lcom/squareup/okhttp/r$b;)Lcom/squareup/okhttp/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/k$b;->e()Lcom/squareup/okhttp/k;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/r;->f:Lcom/squareup/okhttp/k;

    invoke-static {p1}, Lcom/squareup/okhttp/r$b;->g(Lcom/squareup/okhttp/r$b;)Lcom/squareup/okhttp/s;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/r;->g:Lcom/squareup/okhttp/s;

    invoke-static {p1}, Lcom/squareup/okhttp/r$b;->h(Lcom/squareup/okhttp/r$b;)Lcom/squareup/okhttp/r;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/r;->h:Lcom/squareup/okhttp/r;

    invoke-static {p1}, Lcom/squareup/okhttp/r$b;->i(Lcom/squareup/okhttp/r$b;)Lcom/squareup/okhttp/r;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/r;->i:Lcom/squareup/okhttp/r;

    invoke-static {p1}, Lcom/squareup/okhttp/r$b;->j(Lcom/squareup/okhttp/r$b;)Lcom/squareup/okhttp/r;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/r;->j:Lcom/squareup/okhttp/r;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/r$b;Lcom/squareup/okhttp/r$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/r;-><init>(Lcom/squareup/okhttp/r$b;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/p;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/r;->a:Lcom/squareup/okhttp/p;

    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/Protocol;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/r;->b:Lcom/squareup/okhttp/Protocol;

    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/r;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/r;->c:I

    return p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/r;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/r;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/j;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/r;->e:Lcom/squareup/okhttp/j;

    return-object p0
.end method

.method static synthetic f(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/k;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/r;->f:Lcom/squareup/okhttp/k;

    return-object p0
.end method

.method static synthetic g(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/s;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/r;->g:Lcom/squareup/okhttp/s;

    return-object p0
.end method

.method static synthetic h(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/r;->h:Lcom/squareup/okhttp/r;

    return-object p0
.end method

.method static synthetic i(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/r;->i:Lcom/squareup/okhttp/r;

    return-object p0
.end method

.method static synthetic j(Lcom/squareup/okhttp/r;)Lcom/squareup/okhttp/r;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/r;->j:Lcom/squareup/okhttp/r;

    return-object p0
.end method


# virtual methods
.method public k()Lcom/squareup/okhttp/s;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/r;->g:Lcom/squareup/okhttp/s;

    return-object v0
.end method

.method public l()Lcom/squareup/okhttp/d;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/r;->k:Lcom/squareup/okhttp/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/r;->f:Lcom/squareup/okhttp/k;

    invoke-static {v0}, Lcom/squareup/okhttp/d;->k(Lcom/squareup/okhttp/k;)Lcom/squareup/okhttp/d;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/r;->k:Lcom/squareup/okhttp/d;

    :goto_0
    return-object v0
.end method

.method public m()Lcom/squareup/okhttp/r;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/r;->i:Lcom/squareup/okhttp/r;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/r;->c:I

    return v0
.end method

.method public o()Lcom/squareup/okhttp/j;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/r;->e:Lcom/squareup/okhttp/j;

    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/r;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/r;->f:Lcom/squareup/okhttp/k;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public r()Lcom/squareup/okhttp/k;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/r;->f:Lcom/squareup/okhttp/k;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/r;->d:Ljava/lang/String;

    return-object v0
.end method

.method public t()Lcom/squareup/okhttp/r;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/r;->h:Lcom/squareup/okhttp/r;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/r;->b:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/okhttp/r;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/r;->a:Lcom/squareup/okhttp/p;

    invoke-virtual {v1}, Lcom/squareup/okhttp/p;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/squareup/okhttp/r$b;
    .locals 2

    new-instance v0, Lcom/squareup/okhttp/r$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/r$b;-><init>(Lcom/squareup/okhttp/r;Lcom/squareup/okhttp/r$a;)V

    return-object v0
.end method

.method public v()Lcom/squareup/okhttp/Protocol;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/r;->b:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method public w()Lcom/squareup/okhttp/p;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/r;->a:Lcom/squareup/okhttp/p;

    return-object v0
.end method
