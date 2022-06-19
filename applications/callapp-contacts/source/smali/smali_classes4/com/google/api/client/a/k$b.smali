.class final Lcom/google/api/client/a/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/a/k;
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
.field final synthetic a:Lcom/google/api/client/a/k;

.field private b:I

.field private c:Lcom/google/api/client/a/m;

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Lcom/google/api/client/a/m;


# direct methods
.method constructor <init>(Lcom/google/api/client/a/k;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/google/api/client/a/k$b;->a:Lcom/google/api/client/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 121
    iput p1, p0, Lcom/google/api/client/a/k$b;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .line 148
    iget-boolean v0, p0, Lcom/google/api/client/a/k$b;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 149
    iput-boolean v1, p0, Lcom/google/api/client/a/k$b;->f:Z

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/google/api/client/a/k$b;->d:Ljava/lang/Object;

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/google/api/client/a/k$b;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/api/client/a/k$b;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/api/client/a/k$b;->b:I

    iget-object v2, p0, Lcom/google/api/client/a/k$b;->a:Lcom/google/api/client/a/k;

    iget-object v2, v2, Lcom/google/api/client/a/k;->b:Lcom/google/api/client/a/h;

    iget-object v2, v2, Lcom/google/api/client/a/h;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/api/client/a/k$b;->a:Lcom/google/api/client/a/k;

    iget-object v0, v0, Lcom/google/api/client/a/k;->b:Lcom/google/api/client/a/h;

    iget-object v2, p0, Lcom/google/api/client/a/k$b;->a:Lcom/google/api/client/a/k;

    iget-object v2, v2, Lcom/google/api/client/a/k;->b:Lcom/google/api/client/a/h;

    iget-object v2, v2, Lcom/google/api/client/a/h;->c:Ljava/util/List;

    iget v3, p0, Lcom/google/api/client/a/k$b;->b:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/api/client/a/h;->a(Ljava/lang/String;)Lcom/google/api/client/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/a/k$b;->c:Lcom/google/api/client/a/m;

    .line 153
    iget-object v2, p0, Lcom/google/api/client/a/k$b;->a:Lcom/google/api/client/a/k;

    iget-object v2, v2, Lcom/google/api/client/a/k;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/google/api/client/a/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/a/k$b;->d:Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/a/k$b;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 4

    .line 1160
    invoke-virtual {p0}, Lcom/google/api/client/a/k$b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/google/api/client/a/k$b;->c:Lcom/google/api/client/a/m;

    iput-object v0, p0, Lcom/google/api/client/a/k$b;->g:Lcom/google/api/client/a/m;

    .line 1164
    iget-object v1, p0, Lcom/google/api/client/a/k$b;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1165
    iput-boolean v2, p0, Lcom/google/api/client/a/k$b;->f:Z

    .line 1166
    iput-boolean v2, p0, Lcom/google/api/client/a/k$b;->e:Z

    const/4 v2, 0x0

    .line 1167
    iput-object v2, p0, Lcom/google/api/client/a/k$b;->c:Lcom/google/api/client/a/m;

    .line 1168
    iput-object v2, p0, Lcom/google/api/client/a/k$b;->d:Ljava/lang/Object;

    .line 1169
    new-instance v2, Lcom/google/api/client/a/k$a;

    iget-object v3, p0, Lcom/google/api/client/a/k$b;->a:Lcom/google/api/client/a/k;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/api/client/a/k$a;-><init>(Lcom/google/api/client/a/k;Lcom/google/api/client/a/m;Ljava/lang/Object;)V

    return-object v2

    .line 1161
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/google/api/client/a/k$b;->g:Lcom/google/api/client/a/m;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/api/client/a/k$b;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1079
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->b(Z)V

    .line 174
    iput-boolean v1, p0, Lcom/google/api/client/a/k$b;->e:Z

    .line 175
    iget-object v0, p0, Lcom/google/api/client/a/k$b;->g:Lcom/google/api/client/a/m;

    iget-object v1, p0, Lcom/google/api/client/a/k$b;->a:Lcom/google/api/client/a/k;

    iget-object v1, v1, Lcom/google/api/client/a/k;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
