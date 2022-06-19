.class public final Lcom/google/api/client/googleapis/a;
.super Ljava/lang/Object;
.source "MethodOverride.java"

# interfaces
.implements Lcom/google/api/client/http/m;
.implements Lcom/google/api/client/http/s;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/a;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/a;->a:Z

    return-void
.end method

.method private c(Lcom/google/api/client/http/q;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v1, "GET"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->q()Lcom/google/api/client/http/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x800

    if-le v1, v3, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/api/client/googleapis/a;->a:Z

    if-eqz v1, :cond_2

    :goto_0
    return v2

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->o()Lcom/google/api/client/http/w;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/w;->e(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/q;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/a;->c(Lcom/google/api/client/http/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/api/client/http/q;->z(Ljava/lang/String;)Lcom/google/api/client/http/q;

    .line 4
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->f()Lcom/google/api/client/http/n;

    move-result-object v1

    const-string v2, "X-HTTP-Method-Override"

    invoke-virtual {v1, v2, v0}, Lcom/google/api/client/http/n;->s(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/n;

    const-string v1, "GET"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/api/client/http/d0;

    invoke-virtual {p1}, Lcom/google/api/client/http/q;->q()Lcom/google/api/client/http/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/i;->i()Lcom/google/api/client/http/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/d0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->u(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    .line 7
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->q()Lcom/google/api/client/http/i;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractMap;->clear()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->c()Lcom/google/api/client/http/j;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/google/api/client/http/f;

    invoke-direct {v0}, Lcom/google/api/client/http/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/q;->u(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/google/api/client/http/q;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/q;->x(Lcom/google/api/client/http/m;)Lcom/google/api/client/http/q;

    return-void
.end method
