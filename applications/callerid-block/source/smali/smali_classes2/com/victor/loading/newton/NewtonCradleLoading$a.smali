.class Lcom/victor/loading/newton/NewtonCradleLoading$a;
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

    iput-object p1, p0, Lcom/victor/loading/newton/NewtonCradleLoading$a;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p1, p0, Lcom/victor/loading/newton/NewtonCradleLoading$a;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    invoke-static {p1}, Lcom/victor/loading/newton/NewtonCradleLoading;->a(Lcom/victor/loading/newton/NewtonCradleLoading;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/victor/loading/newton/NewtonCradleLoading$a;->a:Lcom/victor/loading/newton/NewtonCradleLoading;

    invoke-static {p1}, Lcom/victor/loading/newton/NewtonCradleLoading;->b(Lcom/victor/loading/newton/NewtonCradleLoading;)V

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
