.class Lcom/google/api/client/googleapis/d/b$a;
.super Ljava/lang/Object;
.source "AbstractGoogleClientRequest.java"

# interfaces
.implements Lcom/google/api/client/http/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/googleapis/d/b;->buildHttpRequest(Z)Lcom/google/api/client/http/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/client/http/u;

.field final synthetic b:Lcom/google/api/client/http/q;

.field final synthetic c:Lcom/google/api/client/googleapis/d/b;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/d/b;Lcom/google/api/client/http/u;Lcom/google/api/client/http/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/d/b$a;->c:Lcom/google/api/client/googleapis/d/b;

    iput-object p2, p0, Lcom/google/api/client/googleapis/d/b$a;->a:Lcom/google/api/client/http/u;

    iput-object p3, p0, Lcom/google/api/client/googleapis/d/b$a;->b:Lcom/google/api/client/http/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b$a;->a:Lcom/google/api/client/http/u;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/api/client/http/u;->a(Lcom/google/api/client/http/t;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->l()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b$a;->b:Lcom/google/api/client/http/q;

    invoke-virtual {v0}, Lcom/google/api/client/http/q;->n()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/b$a;->c:Lcom/google/api/client/googleapis/d/b;

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/d/b;->newExceptionOnError(Lcom/google/api/client/http/t;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
