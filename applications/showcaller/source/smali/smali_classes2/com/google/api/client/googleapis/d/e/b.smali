.class public abstract Lcom/google/api/client/googleapis/d/e/b;
.super Lcom/google/api/client/googleapis/d/b;
.source "AbstractGoogleJsonClientRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/googleapis/d/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final jsonContent:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/googleapis/d/e/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/d/e/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :goto_0
    move-object v5, v0

    goto :goto_2

    .line 1
    :cond_0
    new-instance v1, Lcom/google/api/client/http/h0/a;

    .line 2
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/d/e/a;->getJsonFactory()Lcom/google/api/client/json/c;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lcom/google/api/client/http/h0/a;-><init>(Lcom/google/api/client/json/c;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/d/e/a;->getObjectParser()Lcom/google/api/client/json/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/json/e;->c()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "data"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/api/client/http/h0/a;->g(Ljava/lang/String;)Lcom/google/api/client/http/h0/a;

    move-result-object v0

    goto :goto_0

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/api/client/googleapis/d/b;-><init>(Lcom/google/api/client/googleapis/d/a;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/j;Ljava/lang/Class;)V

    .line 5
    iput-object p4, p0, Lcom/google/api/client/googleapis/d/e/b;->jsonContent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/e/b;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/e/a;

    move-result-object v0

    return-object v0
.end method

.method public getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/e/a;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/google/api/client/googleapis/d/b;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/a;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/d/e/a;

    return-object v0
.end method

.method public getJsonContent()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/d/e/b;->jsonContent:Ljava/lang/Object;

    return-object v0
.end method

.method protected newExceptionOnError(Lcom/google/api/client/http/t;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/e/b;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/d/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/d/e/a;->getJsonFactory()Lcom/google/api/client/json/c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->from(Lcom/google/api/client/json/c;Lcom/google/api/client/http/t;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic newExceptionOnError(Lcom/google/api/client/http/t;)Ljava/io/IOException;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/e/b;->newExceptionOnError(Lcom/google/api/client/http/t;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    move-result-object p1

    return-object p1
.end method

.method public final queue(Lcom/google/api/client/googleapis/b/b;Lcom/google/api/client/googleapis/b/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/b/b;",
            "Lcom/google/api/client/googleapis/b/c/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    invoke-super {p0, p1, v0, p2}, Lcom/google/api/client/googleapis/d/b;->queue(Lcom/google/api/client/googleapis/b/b;Ljava/lang/Class;Lcom/google/api/client/googleapis/b/a;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/d/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/d/e/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/d/e/b;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/d/e/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/googleapis/d/e/b<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/googleapis/d/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/d/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/d/e/b;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/d/e/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/d/e/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setDisableGZipContent(Z)Lcom/google/api/client/googleapis/d/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/e/b;->setDisableGZipContent(Z)Lcom/google/api/client/googleapis/d/e/b;

    move-result-object p1

    return-object p1
.end method

.method public setDisableGZipContent(Z)Lcom/google/api/client/googleapis/d/e/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/api/client/googleapis/d/e/b<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/b;->setDisableGZipContent(Z)Lcom/google/api/client/googleapis/d/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/d/e/b;

    return-object p1
.end method

.method public bridge synthetic setRequestHeaders(Lcom/google/api/client/http/n;)Lcom/google/api/client/googleapis/d/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/e/b;->setRequestHeaders(Lcom/google/api/client/http/n;)Lcom/google/api/client/googleapis/d/e/b;

    move-result-object p1

    return-object p1
.end method

.method public setRequestHeaders(Lcom/google/api/client/http/n;)Lcom/google/api/client/googleapis/d/e/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/n;",
            ")",
            "Lcom/google/api/client/googleapis/d/e/b<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/b;->setRequestHeaders(Lcom/google/api/client/http/n;)Lcom/google/api/client/googleapis/d/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/d/e/b;

    return-object p1
.end method
