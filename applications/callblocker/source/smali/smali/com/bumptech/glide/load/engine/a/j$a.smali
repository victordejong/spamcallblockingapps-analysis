.class final Lcom/bumptech/glide/load/engine/a/j$a;
.super Ljava/lang/Object;
.source "LruArrayPool.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field a:I

.field private final b:Lcom/bumptech/glide/load/engine/a/j$b;

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/a/j$b;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/j$a;->b:Lcom/bumptech/glide/load/engine/a/j$b;

    .line 247
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/j$a;->b:Lcom/bumptech/glide/load/engine/a/j$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/a/j$b;->a(Lcom/bumptech/glide/load/engine/a/m;)V

    .line 271
    return-void
.end method

.method a(ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 250
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/j$a;->a:I

    .line 251
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Ljava/lang/Class;

    .line 252
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 256
    instance-of v1, p1, Lcom/bumptech/glide/load/engine/a/j$a;

    if-eqz v1, :cond_0

    .line 257
    check-cast p1, Lcom/bumptech/glide/load/engine/a/j$a;

    .line 258
    iget v1, p0, Lcom/bumptech/glide/load/engine/a/j$a;->a:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/a/j$a;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Ljava/lang/Class;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/a/j$a;->c:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 260
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/j$a;->a:I

    .line 276
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 277
    return v0

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Key{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/a/j$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "array="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/j$a;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
