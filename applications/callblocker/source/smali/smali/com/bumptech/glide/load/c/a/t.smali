.class public Lcom/bumptech/glide/load/c/a/t;
.super Ljava/lang/Object;
.source "ResourceBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/i",
        "<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/c/d;

.field private final b:Lcom/bumptech/glide/load/engine/a/e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/c/c/d;Lcom/bumptech/glide/load/engine/a/e;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/bumptech/glide/load/c/a/t;->a:Lcom/bumptech/glide/load/c/c/d;

    .line 38
    iput-object p2, p0, Lcom/bumptech/glide/load/c/a/t;->b:Lcom/bumptech/glide/load/engine/a/e;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lcom/bumptech/glide/load/h;",
            ")",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/t;->a:Lcom/bumptech/glide/load/c/c/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/c/c/d;->a(Landroid/net/Uri;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/t;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v1, p0, Lcom/bumptech/glide/load/c/a/t;->b:Lcom/bumptech/glide/load/engine/a/e;

    invoke-static {v1, v0, p2, p3}, Lcom/bumptech/glide/load/c/a/m;->a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/drawable/Drawable;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/c/a/t;->a(Landroid/net/Uri;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/net/Uri;Lcom/bumptech/glide/load/h;)Z
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "android.resource"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/h;)Z
    .locals 1

    .prologue
    .line 31
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/c/a/t;->a(Landroid/net/Uri;Lcom/bumptech/glide/load/h;)Z

    move-result v0

    return v0
.end method
