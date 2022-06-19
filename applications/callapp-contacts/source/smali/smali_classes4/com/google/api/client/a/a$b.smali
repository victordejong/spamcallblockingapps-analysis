.class final Lcom/google/api/client/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/a/a;
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
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/client/a/a;

.field private b:Z

.field private c:I


# direct methods
.method constructor <init>(Lcom/google/api/client/a/a;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/google/api/client/a/a$b;->a:Lcom/google/api/client/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 366
    iget v0, p0, Lcom/google/api/client/a/a$b;->c:I

    iget-object v1, p0, Lcom/google/api/client/a/a$b;->a:Lcom/google/api/client/a/a;

    iget v1, v1, Lcom/google/api/client/a/a;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .line 1370
    iget v0, p0, Lcom/google/api/client/a/a$b;->c:I

    .line 1371
    iget-object v1, p0, Lcom/google/api/client/a/a$b;->a:Lcom/google/api/client/a/a;

    iget v1, v1, Lcom/google/api/client/a/a;->a:I

    if-eq v0, v1, :cond_0

    .line 1374
    iget v1, p0, Lcom/google/api/client/a/a$b;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/api/client/a/a$b;->c:I

    const/4 v1, 0x0

    .line 1375
    iput-boolean v1, p0, Lcom/google/api/client/a/a$b;->b:Z

    .line 1376
    new-instance v1, Lcom/google/api/client/a/a$a;

    iget-object v2, p0, Lcom/google/api/client/a/a$b;->a:Lcom/google/api/client/a/a;

    invoke-direct {v1, v2, v0}, Lcom/google/api/client/a/a$a;-><init>(Lcom/google/api/client/a/a;I)V

    return-object v1

    .line 1372
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 380
    iget v0, p0, Lcom/google/api/client/a/a$b;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 381
    iget-boolean v2, p0, Lcom/google/api/client/a/a$b;->b:Z

    if-nez v2, :cond_0

    if-ltz v0, :cond_0

    .line 384
    iget-object v2, p0, Lcom/google/api/client/a/a$b;->a:Lcom/google/api/client/a/a;

    shl-int/2addr v0, v1

    .line 1170
    invoke-virtual {v2, v0}, Lcom/google/api/client/a/a;->b(I)Ljava/lang/Object;

    .line 385
    iget v0, p0, Lcom/google/api/client/a/a$b;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/api/client/a/a$b;->c:I

    .line 386
    iput-boolean v1, p0, Lcom/google/api/client/a/a$b;->b:Z

    return-void

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
