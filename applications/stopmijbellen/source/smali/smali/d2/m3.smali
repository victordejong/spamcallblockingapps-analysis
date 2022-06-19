.class public Ld2/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/r3;


# direct methods
.method public constructor <init>(Ld2/r3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/m3;->a:Ld2/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ld2/m3;->a:Ld2/r3;

    invoke-static {v0, p1}, Ld2/r3;->a(Ld2/r3;Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld2/m3;->a:Ld2/r3;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "x"

    .line 5
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ld2/r3;->i:I

    const-string v1, "y"

    .line 6
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ld2/r3;->j:I

    const-string v1, "width"

    .line 7
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ld2/r3;->k:I

    const-string v1, "height"

    .line 8
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Ld2/r3;->l:I

    .line 9
    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    iget v1, v0, Ld2/r3;->i:I

    iget v2, v0, Ld2/r3;->j:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 11
    iget v1, v0, Ld2/r3;->k:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 12
    iget v1, v0, Ld2/r3;->l:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-boolean p1, v0, Ld2/r3;->z:Z

    if-eqz p1, :cond_0

    iget-object p1, v0, Ld2/r3;->I:Ld2/r3$b;

    if-eqz p1, :cond_0

    .line 15
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Ld2/r3;->a:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    iget-object v1, v0, Ld2/r3;->F:Ld2/j0;

    .line 17
    iget v1, v1, Ld2/j0;->i:I

    .line 18
    iget v4, v0, Ld2/r3;->a:F

    mul-float v4, v4, v2

    float-to-int v2, v4

    sub-int/2addr v1, v2

    invoke-virtual {p1, v3, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 19
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 20
    iget-object v0, v0, Ld2/r3;->I:Ld2/r3$b;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
