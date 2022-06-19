.class Lcom/google/api/client/util/d0$a$a;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/util/d0$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final d:I

.field e:I

.field final synthetic f:Lcom/google/api/client/util/d0$a;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/d0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/util/d0$a$a;->f:Lcom/google/api/client/util/d0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/api/client/util/d0$a;->d:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/google/api/client/util/d0$a$a;->d:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/api/client/util/d0$a$a;->e:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/client/util/d0$a$a;->e:I

    iget v1, p0, Lcom/google/api/client/util/d0$a$a;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/util/d0$a$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/api/client/util/d0$a$a;->f:Lcom/google/api/client/util/d0$a;

    iget-object v0, v0, Lcom/google/api/client/util/d0$a;->d:Ljava/lang/Object;

    iget v1, p0, Lcom/google/api/client/util/d0$a$a;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/api/client/util/d0$a$a;->e:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
