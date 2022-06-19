.class final Lcom/google/api/client/util/k$b;
.super Ljava/lang/Object;
.source "DataMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/util/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private d:I

.field private e:Lcom/google/api/client/util/l;

.field private f:Ljava/lang/Object;

.field private g:Z

.field private h:Z

.field private i:Lcom/google/api/client/util/l;

.field final synthetic j:Lcom/google/api/client/util/k;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/util/k$b;->j:Lcom/google/api/client/util/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/api/client/util/k$b;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/util/k$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/client/util/k$b;->e:Lcom/google/api/client/util/l;

    iput-object v0, p0, Lcom/google/api/client/util/k$b;->i:Lcom/google/api/client/util/l;

    .line 3
    iget-object v1, p0, Lcom/google/api/client/util/k$b;->f:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/google/api/client/util/k$b;->h:Z

    .line 5
    iput-boolean v2, p0, Lcom/google/api/client/util/k$b;->g:Z

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lcom/google/api/client/util/k$b;->e:Lcom/google/api/client/util/l;

    .line 7
    iput-object v2, p0, Lcom/google/api/client/util/k$b;->f:Ljava/lang/Object;

    .line 8
    new-instance v2, Lcom/google/api/client/util/k$a;

    iget-object v3, p0, Lcom/google/api/client/util/k$b;->j:Lcom/google/api/client/util/k;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/api/client/util/k$a;-><init>(Lcom/google/api/client/util/k;Lcom/google/api/client/util/l;Ljava/lang/Object;)V

    return-object v2

    .line 9
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/util/k$b;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/google/api/client/util/k$b;->h:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/api/client/util/k$b;->f:Ljava/lang/Object;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/google/api/client/util/k$b;->f:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/api/client/util/k$b;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/api/client/util/k$b;->d:I

    iget-object v2, p0, Lcom/google/api/client/util/k$b;->j:Lcom/google/api/client/util/k;

    iget-object v2, v2, Lcom/google/api/client/util/k;->e:Lcom/google/api/client/util/i;

    iget-object v2, v2, Lcom/google/api/client/util/i;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/api/client/util/k$b;->j:Lcom/google/api/client/util/k;

    iget-object v0, v0, Lcom/google/api/client/util/k;->e:Lcom/google/api/client/util/i;

    iget-object v2, v0, Lcom/google/api/client/util/i;->f:Ljava/util/List;

    iget v3, p0, Lcom/google/api/client/util/k$b;->d:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/api/client/util/i;->b(Ljava/lang/String;)Lcom/google/api/client/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/k$b;->e:Lcom/google/api/client/util/l;

    .line 6
    iget-object v2, p0, Lcom/google/api/client/util/k$b;->j:Lcom/google/api/client/util/k;

    iget-object v2, v2, Lcom/google/api/client/util/k;->d:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/api/client/util/l;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/k$b;->f:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/util/k$b;->f:Ljava/lang/Object;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/util/k$b;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/k$b;->i:Lcom/google/api/client/util/l;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/api/client/util/k$b;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/w;->g(Z)V

    .line 2
    iput-boolean v1, p0, Lcom/google/api/client/util/k$b;->g:Z

    .line 3
    iget-object v0, p0, Lcom/google/api/client/util/k$b;->i:Lcom/google/api/client/util/l;

    iget-object v1, p0, Lcom/google/api/client/util/k$b;->j:Lcom/google/api/client/util/k;

    iget-object v1, v1, Lcom/google/api/client/util/k;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/l;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
