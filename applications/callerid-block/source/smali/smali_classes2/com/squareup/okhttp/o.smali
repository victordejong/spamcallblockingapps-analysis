.class public Lcom/squareup/okhttp/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/squareup/okhttp/u/h;

.field private c:Lcom/squareup/okhttp/i;

.field private d:Ljava/net/Proxy;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/h;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/m;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/m;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/net/ProxySelector;

.field private j:Ljava/net/CookieHandler;

.field private k:Lcom/squareup/okhttp/u/c;

.field private l:Lcom/squareup/okhttp/c;

.field private m:Ljavax/net/SocketFactory;

.field private n:Ljavax/net/ssl/SSLSocketFactory;

.field private o:Ljavax/net/ssl/HostnameVerifier;

.field private p:Lcom/squareup/okhttp/e;

.field private q:Lcom/squareup/okhttp/b;

.field private r:Lcom/squareup/okhttp/g;

.field private s:Lcom/squareup/okhttp/u/e;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/squareup/okhttp/Protocol;

    sget-object v2, Lcom/squareup/okhttp/Protocol;->e:Lcom/squareup/okhttp/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/Protocol;->d:Lcom/squareup/okhttp/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/squareup/okhttp/u/i;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/squareup/okhttp/o;->z:Ljava/util/List;

    new-array v0, v0, [Lcom/squareup/okhttp/h;

    sget-object v1, Lcom/squareup/okhttp/h;->f:Lcom/squareup/okhttp/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/h;->g:Lcom/squareup/okhttp/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/okhttp/h;->h:Lcom/squareup/okhttp/h;

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/squareup/okhttp/u/i;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/o;->A:Ljava/util/List;

    new-instance v0, Lcom/squareup/okhttp/o$a;

    invoke-direct {v0}, Lcom/squareup/okhttp/o$a;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/u/b;->b:Lcom/squareup/okhttp/u/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/o;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/o;->h:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/o;->t:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/o;->u:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/o;->v:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/squareup/okhttp/o;->w:I

    iput v0, p0, Lcom/squareup/okhttp/o;->x:I

    iput v0, p0, Lcom/squareup/okhttp/o;->y:I

    new-instance v0, Lcom/squareup/okhttp/u/h;

    invoke-direct {v0}, Lcom/squareup/okhttp/u/h;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/o;->b:Lcom/squareup/okhttp/u/h;

    new-instance v0, Lcom/squareup/okhttp/i;

    invoke-direct {v0}, Lcom/squareup/okhttp/i;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/o;->c:Lcom/squareup/okhttp/i;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/o;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/o;->g:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/o;->h:Ljava/util/List;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/squareup/okhttp/o;->t:Z

    iput-boolean v2, p0, Lcom/squareup/okhttp/o;->u:Z

    iput-boolean v2, p0, Lcom/squareup/okhttp/o;->v:Z

    const/16 v2, 0x2710

    iput v2, p0, Lcom/squareup/okhttp/o;->w:I

    iput v2, p0, Lcom/squareup/okhttp/o;->x:I

    iput v2, p0, Lcom/squareup/okhttp/o;->y:I

    iget-object v2, p1, Lcom/squareup/okhttp/o;->b:Lcom/squareup/okhttp/u/h;

    iput-object v2, p0, Lcom/squareup/okhttp/o;->b:Lcom/squareup/okhttp/u/h;

    iget-object v2, p1, Lcom/squareup/okhttp/o;->c:Lcom/squareup/okhttp/i;

    iput-object v2, p0, Lcom/squareup/okhttp/o;->c:Lcom/squareup/okhttp/i;

    iget-object v2, p1, Lcom/squareup/okhttp/o;->d:Ljava/net/Proxy;

    iput-object v2, p0, Lcom/squareup/okhttp/o;->d:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/squareup/okhttp/o;->e:Ljava/util/List;

    iput-object v2, p0, Lcom/squareup/okhttp/o;->e:Ljava/util/List;

    iget-object v2, p1, Lcom/squareup/okhttp/o;->f:Ljava/util/List;

    iput-object v2, p0, Lcom/squareup/okhttp/o;->f:Ljava/util/List;

    iget-object v2, p1, Lcom/squareup/okhttp/o;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/squareup/okhttp/o;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/squareup/okhttp/o;->i:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/squareup/okhttp/o;->i:Ljava/net/ProxySelector;

    iget-object v0, p1, Lcom/squareup/okhttp/o;->j:Ljava/net/CookieHandler;

    iput-object v0, p0, Lcom/squareup/okhttp/o;->j:Ljava/net/CookieHandler;

    iget-object v0, p1, Lcom/squareup/okhttp/o;->l:Lcom/squareup/okhttp/c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/squareup/okhttp/c;->a:Lcom/squareup/okhttp/u/c;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/squareup/okhttp/o;->k:Lcom/squareup/okhttp/u/c;

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/o;->k:Lcom/squareup/okhttp/u/c;

    iget-object v0, p1, Lcom/squareup/okhttp/o;->m:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/squareup/okhttp/o;->m:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lcom/squareup/okhttp/o;->n:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/squareup/okhttp/o;->n:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lcom/squareup/okhttp/o;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/squareup/okhttp/o;->o:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lcom/squareup/okhttp/o;->p:Lcom/squareup/okhttp/e;

    iput-object v0, p0, Lcom/squareup/okhttp/o;->p:Lcom/squareup/okhttp/e;

    iget-object v0, p1, Lcom/squareup/okhttp/o;->q:Lcom/squareup/okhttp/b;

    iput-object v0, p0, Lcom/squareup/okhttp/o;->q:Lcom/squareup/okhttp/b;

    iget-object v0, p1, Lcom/squareup/okhttp/o;->r:Lcom/squareup/okhttp/g;

    iput-object v0, p0, Lcom/squareup/okhttp/o;->r:Lcom/squareup/okhttp/g;

    iget-object v0, p1, Lcom/squareup/okhttp/o;->s:Lcom/squareup/okhttp/u/e;

    iput-object v0, p0, Lcom/squareup/okhttp/o;->s:Lcom/squareup/okhttp/u/e;

    iget-boolean v0, p1, Lcom/squareup/okhttp/o;->t:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/o;->t:Z

    iget-boolean v0, p1, Lcom/squareup/okhttp/o;->u:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/o;->u:Z

    iget-boolean v0, p1, Lcom/squareup/okhttp/o;->v:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/o;->v:Z

    iget v0, p1, Lcom/squareup/okhttp/o;->w:I

    iput v0, p0, Lcom/squareup/okhttp/o;->w:I

    iget v0, p1, Lcom/squareup/okhttp/o;->x:I

    iput v0, p0, Lcom/squareup/okhttp/o;->x:I

    iget p1, p1, Lcom/squareup/okhttp/o;->y:I

    iput p1, p0, Lcom/squareup/okhttp/o;->y:I

    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/o;)Lcom/squareup/okhttp/u/e;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/o;->s:Lcom/squareup/okhttp/u/e;

    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/o;Lcom/squareup/okhttp/u/e;)Lcom/squareup/okhttp/u/e;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/o;->s:Lcom/squareup/okhttp/u/e;

    return-object p1
.end method


# virtual methods
.method public A(Lcom/squareup/okhttp/b;)Lcom/squareup/okhttp/o;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/o;->q:Lcom/squareup/okhttp/b;

    return-object p0
.end method

.method public D(Lcom/squareup/okhttp/c;)Lcom/squareup/okhttp/o;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/squareup/okhttp/o;->k:Lcom/squareup/okhttp/u/c;

    return-object p0
.end method

.method public E(JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long p3, v2, v4

    if-gtz p3, :cond_2

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too small."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    long-to-int p1, v2

    iput p1, p0, Lcom/squareup/okhttp/o;->w:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too large."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public G(Lcom/squareup/okhttp/g;)Lcom/squareup/okhttp/o;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/o;->r:Lcom/squareup/okhttp/g;

    return-object p0
.end method

.method public H(Ljava/util/List;)Lcom/squareup/okhttp/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/h;",
            ">;)",
            "Lcom/squareup/okhttp/o;"
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/okhttp/u/i;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/o;->f:Ljava/util/List;

    return-object p0
.end method

.method public I(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/o;->u:Z

    return-void
.end method

.method public J(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/o;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/o;->o:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public L(Ljava/util/List;)Lcom/squareup/okhttp/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)",
            "Lcom/squareup/okhttp/o;"
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/okhttp/u/i;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/squareup/okhttp/u/i;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/o;->e:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public M(Ljava/net/Proxy;)Lcom/squareup/okhttp/o;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/o;->d:Ljava/net/Proxy;

    return-object p0
.end method

.method public N(Ljava/net/ProxySelector;)Lcom/squareup/okhttp/o;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/o;->i:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public P(JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long p3, v2, v4

    if-gtz p3, :cond_2

    cmp-long p3, v2, v0

    if-nez p3, :cond_1

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too small."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    long-to-int p1, v2

    iput p1, p0, Lcom/squareup/okhttp/o;->x:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too large."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Q(Ljavax/net/SocketFactory;)Lcom/squareup/okhttp/o;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/o;->m:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public R(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/o;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/o;->n:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/squareup/okhttp/o;->d()Lcom/squareup/okhttp/o;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/squareup/okhttp/o;
    .locals 1

    new-instance v0, Lcom/squareup/okhttp/o;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/o;-><init>(Lcom/squareup/okhttp/o;)V

    return-object v0
.end method

.method public e()Lcom/squareup/okhttp/b;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/o;->q:Lcom/squareup/okhttp/b;

    return-object v0
.end method

.method public f()Lcom/squareup/okhttp/e;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/o;->p:Lcom/squareup/okhttp/e;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/o;->w:I

    return v0
.end method

.method public h()Lcom/squareup/okhttp/g;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/o;->r:Lcom/squareup/okhttp/g;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/o;->f:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/net/CookieHandler;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/o;->j:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/o;->u:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/o;->t:Z

    return v0
.end method

.method public m()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/o;->o:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/o;->e:Ljava/util/List;

    return-object v0
.end method

.method public o()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/o;->d:Ljava/net/Proxy;

    return-object v0
.end method

.method public q()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/o;->i:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/o;->x:I

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/okhttp/o;->v:Z

    return v0
.end method

.method public t()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/o;->m:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public u()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/o;->n:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/o;->y:I

    return v0
.end method

.method w()Lcom/squareup/okhttp/u/c;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/o;->k:Lcom/squareup/okhttp/u/c;

    return-object v0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/o;->h:Ljava/util/List;

    return-object v0
.end method

.method z()Lcom/squareup/okhttp/u/h;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/o;->b:Lcom/squareup/okhttp/u/h;

    return-object v0
.end method
