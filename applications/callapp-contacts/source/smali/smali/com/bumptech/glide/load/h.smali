.class public final Lcom/bumptech/glide/load/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# instance fields
.field private final b:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a<",
            "Lcom/bumptech/glide/load/g<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/bumptech/glide/g/b;

    invoke-direct {v0}, Lcom/bumptech/glide/g/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/load/h;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, p1, p2}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lcom/bumptech/glide/load/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, p1}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1101
    :cond_0
    iget-object p1, p1, Lcom/bumptech/glide/load/g;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/load/h;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    iget-object p1, p1, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, p1}, Landroidx/b/a;->a(Landroidx/b/g;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 32
    instance-of v0, p1, Lcom/bumptech/glide/load/h;

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lcom/bumptech/glide/load/h;

    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    iget-object p1, p1, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, p1}, Landroidx/b/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0}, Landroidx/b/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Options{values="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 6

    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v1}, Landroidx/b/a;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v1, v0}, Landroidx/b/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/g;

    .line 48
    iget-object v2, p0, Lcom/bumptech/glide/load/h;->b:Landroidx/b/a;

    invoke-virtual {v2, v0}, Landroidx/b/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 2110
    iget-object v3, v1, Lcom/bumptech/glide/load/g;->b:Lcom/bumptech/glide/load/g$a;

    .line 2115
    iget-object v4, v1, Lcom/bumptech/glide/load/g;->d:[B

    if-nez v4, :cond_0

    .line 2116
    iget-object v4, v1, Lcom/bumptech/glide/load/g;->c:Ljava/lang/String;

    sget-object v5, Lcom/bumptech/glide/load/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/bumptech/glide/load/g;->d:[B

    .line 2118
    :cond_0
    iget-object v1, v1, Lcom/bumptech/glide/load/g;->d:[B

    .line 2110
    invoke-interface {v3, v1, v2, p1}, Lcom/bumptech/glide/load/g$a;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
