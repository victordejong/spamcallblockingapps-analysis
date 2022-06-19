.class public Ld2/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/c4;


# direct methods
.method public constructor <init>(Ld2/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/v3;->a:Ld2/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/v3;->a:Ld2/c4;

    invoke-static {v0, p1}, Ld2/c4;->a(Ld2/c4;Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ld2/v3;->a:Ld2/c4;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "x"

    .line 5
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ld2/c4;->b:I

    const-string v1, "y"

    .line 6
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ld2/c4;->c:I

    const-string v1, "width"

    .line 7
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ld2/c4;->d:I

    const-string v1, "height"

    .line 8
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Ld2/c4;->e:I

    .line 9
    iget-boolean p1, v0, Ld2/c4;->f:Z

    if-eqz p1, :cond_0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->c()F

    move-result p1

    .line 11
    iget v1, v0, Ld2/c4;->e:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, v0, Ld2/c4;->e:I

    .line 13
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, v0, Ld2/c4;->d:I

    .line 14
    iget v1, v0, Ld2/c4;->b:I

    sub-int/2addr v1, p1

    iput v1, v0, Ld2/c4;->b:I

    .line 15
    iget p1, v0, Ld2/c4;->c:I

    iget v1, v0, Ld2/c4;->e:I

    sub-int/2addr p1, v1

    iput p1, v0, Ld2/c4;->c:I

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    iget v1, v0, Ld2/c4;->b:I

    iget v2, v0, Ld2/c4;->c:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 18
    iget v1, v0, Ld2/c4;->d:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 19
    iget v1, v0, Ld2/c4;->e:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
