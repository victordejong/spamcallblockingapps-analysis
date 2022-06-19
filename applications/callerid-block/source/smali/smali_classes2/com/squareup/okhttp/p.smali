.class public final Lcom/squareup/okhttp/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/p$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/l;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/squareup/okhttp/k;

.field private final d:Lcom/squareup/okhttp/q;

.field private final e:Ljava/lang/Object;

.field private volatile f:Ljava/net/URL;

.field private volatile g:Ljava/net/URI;

.field private volatile h:Lcom/squareup/okhttp/d;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/p$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/squareup/okhttp/p$b;->a(Lcom/squareup/okhttp/p$b;)Lcom/squareup/okhttp/l;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/l;

    invoke-static {p1}, Lcom/squareup/okhttp/p$b;->b(Lcom/squareup/okhttp/p$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/squareup/okhttp/p$b;->c(Lcom/squareup/okhttp/p$b;)Lcom/squareup/okhttp/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/k$b;->e()Lcom/squareup/okhttp/k;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p;->c:Lcom/squareup/okhttp/k;

    invoke-static {p1}, Lcom/squareup/okhttp/p$b;->d(Lcom/squareup/okhttp/p$b;)Lcom/squareup/okhttp/q;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p;->d:Lcom/squareup/okhttp/q;

    invoke-static {p1}, Lcom/squareup/okhttp/p$b;->e(Lcom/squareup/okhttp/p$b;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/squareup/okhttp/p$b;->e(Lcom/squareup/okhttp/p$b;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p0, Lcom/squareup/okhttp/p;->e:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/p$b;Lcom/squareup/okhttp/p$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/p;-><init>(Lcom/squareup/okhttp/p$b;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/k;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/p;->c:Lcom/squareup/okhttp/k;

    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/l;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/l;

    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/p;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/p;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/q;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/p;->d:Lcom/squareup/okhttp/q;

    return-object p0
.end method

.method static synthetic e(Lcom/squareup/okhttp/p;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/p;->e:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public f()Lcom/squareup/okhttp/q;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/p;->d:Lcom/squareup/okhttp/q;

    return-object v0
.end method

.method public g()Lcom/squareup/okhttp/d;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/p;->h:Lcom/squareup/okhttp/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/p;->c:Lcom/squareup/okhttp/k;

    invoke-static {v0}, Lcom/squareup/okhttp/d;->k(Lcom/squareup/okhttp/k;)Lcom/squareup/okhttp/d;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p;->h:Lcom/squareup/okhttp/d;

    :goto_0
    return-object v0
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/p;->c:Lcom/squareup/okhttp/k;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i()Lcom/squareup/okhttp/k;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/p;->c:Lcom/squareup/okhttp/k;

    return-object v0
.end method

.method public j()Lcom/squareup/okhttp/l;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/l;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/l;

    invoke-virtual {v0}, Lcom/squareup/okhttp/l;->r()Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lcom/squareup/okhttp/p$b;
    .locals 2

    new-instance v0, Lcom/squareup/okhttp/p$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/p$b;-><init>(Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/p$a;)V

    return-object v0
.end method

.method public n()Ljava/net/URI;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/p;->g:Ljava/net/URI;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/l;

    invoke-virtual {v0}, Lcom/squareup/okhttp/l;->E()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p;->g:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public o()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/p;->f:Ljava/net/URL;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/l;

    invoke-virtual {v0}, Lcom/squareup/okhttp/l;->F()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p;->f:Ljava/net/URL;

    :goto_0
    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/l;

    invoke-virtual {v0}, Lcom/squareup/okhttp/l;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/p;->a:Lcom/squareup/okhttp/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/okhttp/p;->e:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
