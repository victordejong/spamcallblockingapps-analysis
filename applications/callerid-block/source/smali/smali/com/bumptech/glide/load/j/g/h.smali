.class public final Lcom/bumptech/glide/load/j/g/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f<",
        "Lcom/bumptech/glide/k/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/x/e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/x/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/j/g/h;->a:Lcom/bumptech/glide/load/engine/x/e;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/s;
    .locals 0

    check-cast p1, Lcom/bumptech/glide/k/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/j/g/h;->c(Lcom/bumptech/glide/k/a;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/s;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lcom/bumptech/glide/load/e;)Z
    .locals 0

    check-cast p1, Lcom/bumptech/glide/k/a;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/j/g/h;->d(Lcom/bumptech/glide/k/a;Lcom/bumptech/glide/load/e;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/bumptech/glide/k/a;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/k/a;",
            "II",
            "Lcom/bumptech/glide/load/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/s<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/k/a;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/j/g/h;->a:Lcom/bumptech/glide/load/engine/x/e;

    invoke-static {p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/e;->f(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/x/e;)Lcom/bumptech/glide/load/resource/bitmap/e;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/bumptech/glide/k/a;Lcom/bumptech/glide/load/e;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
