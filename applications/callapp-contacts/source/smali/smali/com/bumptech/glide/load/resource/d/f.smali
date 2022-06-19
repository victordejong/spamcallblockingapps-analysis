.class public final Lcom/bumptech/glide/load/resource/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/l<",
        "Lcom/bumptech/glide/load/resource/d/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/bumptech/glide/load/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 1023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 23
    check-cast p1, Lcom/bumptech/glide/load/l;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/f;->b:Lcom/bumptech/glide/load/l;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/u;II)Lcom/bumptech/glide/load/engine/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/u<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/u<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/u;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/c;

    .line 40
    invoke-static {p1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v1

    .line 1631
    iget-object v1, v1, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/load/engine/a/e;

    .line 41
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/c;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 42
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {v3, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/e;)V

    .line 43
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/f;->b:Lcom/bumptech/glide/load/l;

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/bumptech/glide/load/l;->a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/u;II)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 45
    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/u;->d()V

    .line 47
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/u;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 49
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/d/f;->b:Lcom/bumptech/glide/load/l;

    .line 2162
    iget-object p4, v0, Lcom/bumptech/glide/load/resource/d/c;->a:Lcom/bumptech/glide/load/resource/d/c$a;

    iget-object p4, p4, Lcom/bumptech/glide/load/resource/d/c$a;->a:Lcom/bumptech/glide/load/resource/d/g;

    invoke-virtual {p4, p3, p1}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 55
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/d/f;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Lcom/bumptech/glide/load/resource/d/f;

    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->b:Lcom/bumptech/glide/load/l;

    iget-object p1, p1, Lcom/bumptech/glide/load/resource/d/f;->b:Lcom/bumptech/glide/load/l;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->b:Lcom/bumptech/glide/load/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->b:Lcom/bumptech/glide/load/l;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/l;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
