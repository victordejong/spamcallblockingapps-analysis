.class Lcom/bumptech/glide/load/engine/o;
.super Ljava/lang/Object;
.source "EngineResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/t",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private c:Lcom/bumptech/glide/load/engine/o$a;

.field private d:Lcom/bumptech/glide/load/f;

.field private e:I

.field private f:Z

.field private final g:Lcom/bumptech/glide/load/engine/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/t",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/t;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<TZ;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/t;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/o;->g:Lcom/bumptech/glide/load/engine/t;

    .line 29
    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/o;->a:Z

    .line 30
    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/o;->b:Z

    .line 31
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/load/engine/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/t",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/o;->g:Lcom/bumptech/glide/load/engine/t;

    return-object v0
.end method

.method a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o$a;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/o;->d:Lcom/bumptech/glide/load/f;

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/o;->c:Lcom/bumptech/glide/load/engine/o$a;

    .line 36
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/o;->a:Z

    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/o;->g:Lcom/bumptech/glide/load/engine/t;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/t;->c()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/o;->g:Lcom/bumptech/glide/load/engine/t;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/t;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/o;->g:Lcom/bumptech/glide/load/engine/t;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/t;->e()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/bumptech/glide/load/engine/o;->e:I

    if-lez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/o;->f:Z

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/o;->f:Z

    .line 72
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/o;->b:Z

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/o;->g:Lcom/bumptech/glide/load/engine/t;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/t;->f()V

    .line 75
    :cond_2
    return-void
.end method

.method g()V
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/o;->f:Z

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "Must call acquire on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/load/engine/o;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/engine/o;->e:I

    .line 94
    return-void
.end method

.method h()V
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/bumptech/glide/load/engine/o;->e:I

    if-gtz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "Must call release on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/load/engine/o;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/engine/o;->e:I

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/o;->c:Lcom/bumptech/glide/load/engine/o$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/o;->d:Lcom/bumptech/glide/load/f;

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/engine/o$a;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/o;)V

    .line 114
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EngineResource{isCacheable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/o;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/o;->c:Lcom/bumptech/glide/load/engine/o$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/o;->d:Lcom/bumptech/glide/load/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", acquired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/o;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isRecycled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/o;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/o;->g:Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
