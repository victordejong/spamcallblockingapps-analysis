.class public abstract Lcom/bumptech/glide/e/a/f;
.super Lcom/bumptech/glide/e/a/k;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/b/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e/a/k<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lcom/bumptech/glide/e/b/d$a;"
    }
.end annotation


# instance fields
.field private b:Landroid/graphics/drawable/Animatable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/a/k;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/e/a/k;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .line 124
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e/a/f;->a(Ljava/lang/Object;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/a/f;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .line 129
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 130
    check-cast p1, Landroid/graphics/drawable/Animatable;

    iput-object p1, p0, Lcom/bumptech/glide/e/a/f;->b:Landroid/graphics/drawable/Animatable;

    .line 131
    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/bumptech/glide/e/a/f;->b:Landroid/graphics/drawable/Animatable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/bumptech/glide/e/a/f;->b:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/bumptech/glide/e/a/k;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/a/f;->b(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e/a/f;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/e/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/e/b/d<",
            "-TZ;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 100
    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/e/b/d;->a(Ljava/lang/Object;Lcom/bumptech/glide/e/b/d$a;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/a/f;->c(Ljava/lang/Object;)V

    return-void

    .line 101
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/e/a/f;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/e/a/f;->b:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/bumptech/glide/e/a/k;->b(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/e/a/f;->b:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/a/f;->b(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e/a/f;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/bumptech/glide/e/a/k;->c(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lcom/bumptech/glide/e/a/f;->b(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/e/a/f;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/bumptech/glide/e/a/f;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/e/a/f;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
