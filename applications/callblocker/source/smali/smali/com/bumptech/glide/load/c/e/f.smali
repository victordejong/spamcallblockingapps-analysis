.class public Lcom/bumptech/glide/load/c/e/f;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k",
        "<",
        "Lcom/bumptech/glide/load/c/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/bumptech/glide/load/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/k;

    iput-object v0, p0, Lcom/bumptech/glide/load/c/e/f;->b:Lcom/bumptech/glide/load/k;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/t;II)Lcom/bumptech/glide/load/engine/t;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Lcom/bumptech/glide/load/c/e/c;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Lcom/bumptech/glide/load/c/e/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/t;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c/e/c;

    .line 38
    invoke-static {p1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/c;->a()Lcom/bumptech/glide/load/engine/a/e;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lcom/bumptech/glide/load/c/e/c;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 40
    new-instance v3, Lcom/bumptech/glide/load/c/a/d;

    invoke-direct {v3, v2, v1}, Lcom/bumptech/glide/load/c/a/d;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/e;)V

    .line 41
    iget-object v1, p0, Lcom/bumptech/glide/load/c/e/f;->b:Lcom/bumptech/glide/load/k;

    invoke-interface {v1, p1, v3, p3, p4}, Lcom/bumptech/glide/load/k;->a(Landroid/content/Context;Lcom/bumptech/glide/load/engine/t;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object v1

    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/t;->f()V

    .line 45
    :cond_0
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/t;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 47
    iget-object v2, p0, Lcom/bumptech/glide/load/c/e/f;->b:Lcom/bumptech/glide/load/k;

    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/load/c/e/c;->a(Lcom/bumptech/glide/load/k;Landroid/graphics/Bitmap;)V

    .line 48
    return-object p2
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/load/c/e/f;->b:Lcom/bumptech/glide/load/k;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/k;->a(Ljava/security/MessageDigest;)V

    .line 68
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 53
    instance-of v0, p1, Lcom/bumptech/glide/load/c/e/f;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lcom/bumptech/glide/load/c/e/f;

    .line 55
    iget-object v0, p0, Lcom/bumptech/glide/load/c/e/f;->b:Lcom/bumptech/glide/load/k;

    iget-object v1, p1, Lcom/bumptech/glide/load/c/e/f;->b:Lcom/bumptech/glide/load/k;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/load/c/e/f;->b:Lcom/bumptech/glide/load/k;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
