.class public abstract Lcom/bumptech/glide/f/a/d;
.super Lcom/bumptech/glide/f/a/i;
.source "ImageViewTarget.java"

# interfaces
.implements Lcom/bumptech/glide/f/b/b$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/f/a/i",
        "<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lcom/bumptech/glide/f/b/b$a;"
    }
.end annotation


# instance fields
.field private b:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/a/i;-><init>(Landroid/view/View;)V

    .line 27
    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f/a/d;->a(Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/a/d;->c(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .prologue
    .line 132
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Landroid/graphics/drawable/Animatable;

    iput-object p1, p0, Lcom/bumptech/glide/f/a/d;->b:Landroid/graphics/drawable/Animatable;

    .line 134
    iget-object v0, p0, Lcom/bumptech/glide/f/a/d;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/f/a/d;->b:Landroid/graphics/drawable/Animatable;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/bumptech/glide/f/a/i;->a(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/f/a/d;->b:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/f/a/d;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/a/d;->b(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f/a/d;->e(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;Lcom/bumptech/glide/f/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/f/b/b",
            "<-TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/f/b/b;->a(Ljava/lang/Object;Lcom/bumptech/glide/f/b/b$a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/a/d;->b(Ljava/lang/Object;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/a/d;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/bumptech/glide/f/a/i;->b(Landroid/graphics/drawable/Drawable;)V

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/a/d;->b(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f/a/d;->e(Landroid/graphics/drawable/Drawable;)V

    .line 70
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/f/a/d;->b:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/f/a/d;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 115
    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/bumptech/glide/f/a/i;->c(Landroid/graphics/drawable/Drawable;)V

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/a/d;->b(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/f/a/d;->e(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/bumptech/glide/f/a/d;->b:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/f/a/d;->b:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 122
    :cond_0
    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/f/a/d;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void
.end method
