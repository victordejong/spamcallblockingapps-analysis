.class Lcom/victor/loading/newton/NewtonCradleLoading$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/victor/loading/newton/NewtonCradleLoading;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/victor/loading/newton/NewtonCradleLoading;


# direct methods
.method constructor <init>(Lcom/victor/loading/newton/NewtonCradleLoading;)V
    .locals 0

    iput-object p1, p0, Lcom/victor/loading/newton/NewtonCradleLoading$b;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/victor/loading/newton/NewtonCradleLoading$b;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    invoke-static {p1}, Lcom/victor/loading/newton/NewtonCradleLoading;->a(Lcom/victor/loading/newton/NewtonCradleLoading;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/victor/loading/newton/NewtonCradleLoading$b;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    invoke-static {p1}, Lcom/victor/loading/newton/NewtonCradleLoading;->c(Lcom/victor/loading/newton/NewtonCradleLoading;)Lcom/victor/loading/newton/CradleBall;

    move-result-object p1

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading$b;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    iget-object v0, v0, Lcom/victor/loading/newton/NewtonCradleLoading;->j:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/victor/loading/newton/NewtonCradleLoading$b;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    invoke-static {p1}, Lcom/victor/loading/newton/NewtonCradleLoading;->d(Lcom/victor/loading/newton/NewtonCradleLoading;)Lcom/victor/loading/newton/CradleBall;

    move-result-object p1

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading$b;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    iget-object v0, v0, Lcom/victor/loading/newton/NewtonCradleLoading;->j:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/victor/loading/newton/NewtonCradleLoading$b;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    invoke-static {p1}, Lcom/victor/loading/newton/NewtonCradleLoading;->e(Lcom/victor/loading/newton/NewtonCradleLoading;)Lcom/victor/loading/newton/CradleBall;

    move-result-object p1

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading$b;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    iget-object v0, v0, Lcom/victor/loading/newton/NewtonCradleLoading;->j:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/victor/loading/newton/NewtonCradleLoading$b;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    invoke-static {p1}, Lcom/victor/loading/newton/NewtonCradleLoading;->f(Lcom/victor/loading/newton/NewtonCradleLoading;)Lcom/victor/loading/newton/CradleBall;

    move-result-object p1

    iget-object v0, p0, Lcom/victor/loading/newton/NewtonCradleLoading$b;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    iget-object v0, v0, Lcom/victor/loading/newton/NewtonCradleLoading;->i:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
