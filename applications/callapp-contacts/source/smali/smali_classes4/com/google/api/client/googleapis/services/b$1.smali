.class final Lcom/google/api/client/googleapis/services/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/googleapis/services/b;->buildHttpRequest(Z)Lcom/google/api/client/http/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/client/http/u;

.field final synthetic b:Lcom/google/api/client/http/q;

.field final synthetic c:Lcom/google/api/client/googleapis/services/b;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/services/b;Lcom/google/api/client/http/u;Lcom/google/api/client/http/q;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/b$1;->c:Lcom/google/api/client/googleapis/services/b;

    iput-object p2, p0, Lcom/google/api/client/googleapis/services/b$1;->a:Lcom/google/api/client/http/u;

    iput-object p3, p0, Lcom/google/api/client/googleapis/services/b$1;->b:Lcom/google/api/client/http/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b$1;->a:Lcom/google/api/client/http/u;

    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0, p1}, Lcom/google/api/client/http/u;->a(Lcom/google/api/client/http/t;)V

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b$1;->b:Lcom/google/api/client/http/q;

    invoke-virtual {v0}, Lcom/google/api/client/http/q;->n()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/b$1;->c:Lcom/google/api/client/googleapis/services/b;

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/services/b;->newExceptionOnError(Lcom/google/api/client/http/t;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
