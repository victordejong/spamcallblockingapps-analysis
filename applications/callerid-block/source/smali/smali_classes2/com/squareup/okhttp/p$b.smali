.class public Lcom/squareup/okhttp/p$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/squareup/okhttp/l;

.field private b:Ljava/lang/String;

.field private c:Lcom/squareup/okhttp/k$b;

.field private d:Lcom/squareup/okhttp/q;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/squareup/okhttp/p$b;->b:Ljava/lang/String;

    new-instance v0, Lcom/squareup/okhttp/k$b;

    invoke-direct {v0}, Lcom/squareup/okhttp/k$b;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/p$b;->c:Lcom/squareup/okhttp/k$b;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/squareup/okhttp/p;->b(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/l;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p$b;->a:Lcom/squareup/okhttp/l;

    invoke-static {p1}, Lcom/squareup/okhttp/p;->c(Lcom/squareup/okhttp/p;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p$b;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/squareup/okhttp/p;->d(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/q;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p$b;->d:Lcom/squareup/okhttp/q;

    invoke-static {p1}, Lcom/squareup/okhttp/p;->e(Lcom/squareup/okhttp/p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/p$b;->e:Ljava/lang/Object;

    invoke-static {p1}, Lcom/squareup/okhttp/p;->a(Lcom/squareup/okhttp/p;)Lcom/squareup/okhttp/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/k;->e()Lcom/squareup/okhttp/k$b;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/p$b;->c:Lcom/squareup/okhttp/k$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/p;Lcom/squareup/okhttp/p$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/p$b;-><init>(Lcom/squareup/okhttp/p;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/p$b;)Lcom/squareup/okhttp/l;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/p$b;->a:Lcom/squareup/okhttp/l;

    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/p$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/p$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/p$b;)Lcom/squareup/okhttp/k$b;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/p$b;->c:Lcom/squareup/okhttp/k$b;

    return-object p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/p$b;)Lcom/squareup/okhttp/q;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/p$b;->d:Lcom/squareup/okhttp/q;

    return-object p0
.end method

.method static synthetic e(Lcom/squareup/okhttp/p$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/p$b;->e:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public f(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/p$b;->c:Lcom/squareup/okhttp/k$b;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/k$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    return-object p0
.end method

.method public g()Lcom/squareup/okhttp/p;
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/p$b;->a:Lcom/squareup/okhttp/l;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/squareup/okhttp/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/p;-><init>(Lcom/squareup/okhttp/p$b;Lcom/squareup/okhttp/p$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/p$b;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/p$b;->c:Lcom/squareup/okhttp/k$b;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/k$b;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    return-object p0
.end method

.method public i(Ljava/lang/String;Lcom/squareup/okhttp/q;)Lcom/squareup/okhttp/p$b;
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/h;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/squareup/okhttp/p$b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/squareup/okhttp/p$b;->d:Lcom/squareup/okhttp/q;

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method == null || method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Ljava/lang/String;)Lcom/squareup/okhttp/p$b;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/p$b;->c:Lcom/squareup/okhttp/k$b;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/k$b;->h(Ljava/lang/String;)Lcom/squareup/okhttp/k$b;

    return-object p0
.end method

.method public k(Lcom/squareup/okhttp/l;)Lcom/squareup/okhttp/p$b;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/squareup/okhttp/p$b;->a:Lcom/squareup/okhttp/l;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Ljava/net/URL;)Lcom/squareup/okhttp/p$b;
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/squareup/okhttp/l;->p(Ljava/net/URL;)Lcom/squareup/okhttp/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/p$b;->k(Lcom/squareup/okhttp/l;)Lcom/squareup/okhttp/p$b;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
