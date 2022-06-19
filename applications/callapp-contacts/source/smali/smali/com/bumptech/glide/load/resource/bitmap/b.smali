.class public final Lcom/bumptech/glide/load/resource/bitmap/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/a/e;

.field private final b:Lcom/bumptech/glide/load/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/load/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/load/k<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->a:Lcom/bumptech/glide/load/engine/a/e;

    .line 21
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->b:Lcom/bumptech/glide/load/k;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/c;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->b:Lcom/bumptech/glide/load/k;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/k;->a(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/h;)Z
    .locals 3

    .line 14
    check-cast p1, Lcom/bumptech/glide/load/engine/u;

    .line 1027
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->b:Lcom/bumptech/glide/load/k;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/u;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->a:Lcom/bumptech/glide/load/engine/a/e;

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/a/e;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/k;->encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/h;)Z

    move-result p1

    return p1
.end method
