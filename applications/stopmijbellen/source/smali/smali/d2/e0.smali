.class public Ld2/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/j0;


# direct methods
.method public constructor <init>(Ld2/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/e0;->a:Ld2/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ld2/e0;->a:Ld2/j0;

    invoke-virtual {v0, p1}, Ld2/j0;->b(Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Ld2/e0;->a:Ld2/j0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "id"

    .line 4
    invoke-static {v1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    .line 5
    new-instance v2, Ld2/c4;

    iget-object v3, v0, Ld2/j0;->y:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v1, v0}, Ld2/c4;-><init>(Landroid/content/Context;Ld2/t0;ILd2/j0;)V

    .line 6
    iget-object p1, v2, Ld2/c4;->k:Ld2/t0;

    .line 7
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v3, "ad_session_id"

    .line 8
    invoke-virtual {p1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    iput-object v3, v2, Ld2/c4;->j:Ljava/lang/String;

    const-string v3, "x"

    .line 10
    invoke-static {p1, v3}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Ld2/c4;->b:I

    const-string v3, "y"

    .line 11
    invoke-static {p1, v3}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Ld2/c4;->c:I

    const-string v3, "width"

    .line 12
    invoke-static {p1, v3}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Ld2/c4;->d:I

    const-string v3, "height"

    .line 13
    invoke-static {p1, v3}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Ld2/c4;->e:I

    const-string v3, "filepath"

    .line 14
    invoke-virtual {p1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    iput-object v3, v2, Ld2/c4;->i:Ljava/lang/String;

    const-string v3, "dpi"

    .line 16
    invoke-static {p1, v3}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Ld2/c4;->f:Z

    const-string v3, "invert_y"

    .line 17
    invoke-static {p1, v3}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Ld2/c4;->g:Z

    const-string v3, "wrap_content"

    .line 18
    invoke-static {p1, v3}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v2, Ld2/c4;->h:Z

    .line 19
    new-instance p1, Ljava/io/File;

    iget-object v3, v2, Ld2/c4;->i:Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 20
    iget-boolean p1, v2, Ld2/c4;->f:Z

    if-eqz p1, :cond_1

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->c()F

    move-result p1

    .line 22
    iget v3, v2, Ld2/c4;->e:I

    int-to-float v3, v3

    mul-float v3, v3, p1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v3, p1

    .line 23
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v3

    float-to-int p1, p1

    iput p1, v2, Ld2/c4;->e:I

    .line 24
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v3

    float-to-int p1, p1

    iput p1, v2, Ld2/c4;->d:I

    .line 25
    iget v3, v2, Ld2/c4;->b:I

    sub-int/2addr v3, p1

    iput v3, v2, Ld2/c4;->b:I

    .line 26
    iget-boolean p1, v2, Ld2/c4;->g:Z

    if-eqz p1, :cond_0

    .line 27
    iget p1, v2, Ld2/c4;->c:I

    iget v3, v2, Ld2/c4;->e:I

    add-int/2addr p1, v3

    goto :goto_0

    .line 28
    :cond_0
    iget p1, v2, Ld2/c4;->c:I

    iget v3, v2, Ld2/c4;->e:I

    sub-int/2addr p1, v3

    :goto_0
    iput p1, v2, Ld2/c4;->c:I

    :cond_1
    const/4 p1, 0x4

    .line 29
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-boolean p1, v2, Ld2/c4;->h:Z

    if-eqz p1, :cond_2

    .line 31
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {p1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 32
    :cond_2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Ld2/c4;->d:I

    iget v4, v2, Ld2/c4;->e:I

    invoke-direct {p1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    :goto_1
    iget v3, v2, Ld2/c4;->b:I

    iget v4, v2, Ld2/c4;->c:I

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 34
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 35
    iget-object v3, v2, Ld2/c4;->l:Ld2/j0;

    invoke-virtual {v3, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object p1, v2, Ld2/c4;->l:Ld2/j0;

    .line 37
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 38
    new-instance v3, Ld2/u3;

    invoke-direct {v3, v2}, Ld2/u3;-><init>(Ld2/c4;)V

    const-string v4, "ImageView.set_visible"

    invoke-static {v4, v3}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p1, v2, Ld2/c4;->l:Ld2/j0;

    .line 40
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 41
    new-instance v3, Ld2/v3;

    invoke-direct {v3, v2}, Ld2/v3;-><init>(Ld2/c4;)V

    const-string v5, "ImageView.set_bounds"

    invoke-static {v5, v3}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, v2, Ld2/c4;->l:Ld2/j0;

    .line 43
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 44
    new-instance v3, Ld2/w3;

    invoke-direct {v3, v2}, Ld2/w3;-><init>(Ld2/c4;)V

    const-string v6, "ImageView.set_image"

    invoke-static {v6, v3}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object p1, v2, Ld2/c4;->l:Ld2/j0;

    .line 46
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p1, v2, Ld2/c4;->l:Ld2/j0;

    .line 49
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, v2, Ld2/c4;->l:Ld2/j0;

    .line 52
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, v0, Ld2/j0;->e:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p1, v0, Ld2/j0;->g:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object p1, La7/e;->b:La7/e;

    .line 57
    iget-object v0, v0, Ld2/j0;->x:Landroid/support/v4/media/a;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/media/a;->f(Landroid/view/View;La7/e;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
