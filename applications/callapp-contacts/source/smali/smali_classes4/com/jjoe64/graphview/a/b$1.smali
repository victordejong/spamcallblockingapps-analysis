.class final Lcom/jjoe64/graphview/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjoe64/graphview/a/b;->a(DD)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field b:Lcom/jjoe64/graphview/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field c:Lcom/jjoe64/graphview/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field d:Z

.field final synthetic e:D

.field final synthetic f:D

.field final synthetic g:Lcom/jjoe64/graphview/a/b;


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/a/b;DD)V
    .locals 3

    .line 187
    iput-object p1, p0, Lcom/jjoe64/graphview/a/b$1;->g:Lcom/jjoe64/graphview/a/b;

    iput-wide p2, p0, Lcom/jjoe64/graphview/a/b$1;->e:D

    iput-wide p4, p0, Lcom/jjoe64/graphview/a/b$1;->f:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    iget-object p1, p1, Lcom/jjoe64/graphview/a/b;->a:Ljava/util/List;

    .line 188
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/jjoe64/graphview/a/b$1;->a:Ljava/util/Iterator;

    const/4 p4, 0x0

    .line 189
    iput-object p4, p0, Lcom/jjoe64/graphview/a/b$1;->b:Lcom/jjoe64/graphview/a/d;

    .line 190
    iput-object p4, p0, Lcom/jjoe64/graphview/a/b$1;->c:Lcom/jjoe64/graphview/a/d;

    const/4 p5, 0x1

    .line 191
    iput-boolean p5, p0, Lcom/jjoe64/graphview/a/b$1;->d:Z

    .line 197
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/jjoe64/graphview/a/b$1;->a:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jjoe64/graphview/a/d;

    goto :goto_0

    :cond_0
    move-object p1, p4

    :goto_0
    if-eqz p1, :cond_3

    .line 201
    invoke-interface {p1}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v0

    cmpl-double v2, v0, p2

    if-ltz v2, :cond_1

    .line 202
    iput-object p1, p0, Lcom/jjoe64/graphview/a/b$1;->b:Lcom/jjoe64/graphview/a/d;

    goto :goto_2

    .line 205
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/jjoe64/graphview/a/b$1;->a:Ljava/util/Iterator;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 206
    iget-object p2, p0, Lcom/jjoe64/graphview/a/b$1;->a:Ljava/util/Iterator;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jjoe64/graphview/a/d;

    iput-object p2, p0, Lcom/jjoe64/graphview/a/b$1;->b:Lcom/jjoe64/graphview/a/d;

    .line 207
    invoke-interface {p2}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide p2

    iget-wide v0, p0, Lcom/jjoe64/graphview/a/b$1;->e:D

    cmpl-double v2, p2, v0

    if-ltz v2, :cond_2

    .line 209
    iget-object p2, p0, Lcom/jjoe64/graphview/a/b$1;->b:Lcom/jjoe64/graphview/a/d;

    iput-object p2, p0, Lcom/jjoe64/graphview/a/b$1;->c:Lcom/jjoe64/graphview/a/d;

    .line 210
    iput-object p1, p0, Lcom/jjoe64/graphview/a/b$1;->b:Lcom/jjoe64/graphview/a/d;

    goto :goto_2

    .line 213
    :cond_2
    iget-object p1, p0, Lcom/jjoe64/graphview/a/b$1;->b:Lcom/jjoe64/graphview/a/d;

    goto :goto_1

    :cond_3
    const/4 p5, 0x0

    :goto_2
    if-nez p5, :cond_4

    .line 218
    iput-object p4, p0, Lcom/jjoe64/graphview/a/b$1;->b:Lcom/jjoe64/graphview/a/d;

    :cond_4
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 5

    .line 247
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b$1;->b:Lcom/jjoe64/graphview/a/d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/jjoe64/graphview/a/b$1;->f:D

    cmpg-double v4, v0, v2

    if-lez v4, :cond_0

    iget-boolean v0, p0, Lcom/jjoe64/graphview/a/b$1;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 6

    .line 1229
    invoke-virtual {p0}, Lcom/jjoe64/graphview/a/b$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1230
    iget-object v0, p0, Lcom/jjoe64/graphview/a/b$1;->b:Lcom/jjoe64/graphview/a/d;

    .line 1231
    invoke-interface {v0}, Lcom/jjoe64/graphview/a/d;->a()D

    move-result-wide v1

    iget-wide v3, p0, Lcom/jjoe64/graphview/a/b$1;->f:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x0

    .line 1232
    iput-boolean v1, p0, Lcom/jjoe64/graphview/a/b$1;->d:Z

    .line 1234
    :cond_0
    iget-object v1, p0, Lcom/jjoe64/graphview/a/b$1;->c:Lcom/jjoe64/graphview/a/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1235
    iput-object v1, p0, Lcom/jjoe64/graphview/a/b$1;->b:Lcom/jjoe64/graphview/a/d;

    .line 1236
    iput-object v2, p0, Lcom/jjoe64/graphview/a/b$1;->c:Lcom/jjoe64/graphview/a/d;

    goto :goto_0

    .line 1237
    :cond_1
    iget-object v1, p0, Lcom/jjoe64/graphview/a/b$1;->a:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jjoe64/graphview/a/b$1;->a:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/a/d;

    iput-object v1, p0, Lcom/jjoe64/graphview/a/b$1;->b:Lcom/jjoe64/graphview/a/d;

    goto :goto_0

    .line 1238
    :cond_2
    iput-object v2, p0, Lcom/jjoe64/graphview/a/b$1;->b:Lcom/jjoe64/graphview/a/d;

    :goto_0
    return-object v0

    .line 1241
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
