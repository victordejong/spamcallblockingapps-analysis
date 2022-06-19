.class public final Lcom/google/api/client/http/r;
.super Ljava/lang/Object;
.source "HttpRequestFactory.java"


# instance fields
.field private final a:Lcom/google/api/client/http/w;

.field private final b:Lcom/google/api/client/http/s;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/client/http/r;->a:Lcom/google/api/client/http/w;

    .line 3
    iput-object p2, p0, Lcom/google/api/client/http/r;->b:Lcom/google/api/client/http/s;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;
    .locals 2

    const-string v0, "GET"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/api/client/http/r;->d(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;
    .locals 1

    const-string v0, "POST"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/http/r;->d(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;
    .locals 1

    const-string v0, "PUT"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/http/r;->d(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Lcom/google/api/client/http/i;Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/r;->a:Lcom/google/api/client/http/w;

    invoke-virtual {v0}, Lcom/google/api/client/http/w;->a()Lcom/google/api/client/http/q;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/api/client/http/r;->b:Lcom/google/api/client/http/s;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0}, Lcom/google/api/client/http/s;->b(Lcom/google/api/client/http/q;)V

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/api/client/http/q;->z(Ljava/lang/String;)Lcom/google/api/client/http/q;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/api/client/http/q;->E(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {v0, p3}, Lcom/google/api/client/http/q;->u(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    :cond_2
    return-object v0
.end method

.method public e()Lcom/google/api/client/http/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/r;->b:Lcom/google/api/client/http/s;

    return-object v0
.end method

.method public f()Lcom/google/api/client/http/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/r;->a:Lcom/google/api/client/http/w;

    return-object v0
.end method
