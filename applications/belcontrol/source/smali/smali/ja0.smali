.class public Lja0;
.super Landroid/animation/ValueAnimator;
.source ""


# instance fields
.field public a:Landroid/view/View;

.field public b:Lha0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lja0;->a:Landroid/view/View;

    return-object v0
.end method

.method public c(Lha0;)V
    .locals 0

    iput-object p1, p0, Lja0;->b:Lha0;

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lja0;->a:Landroid/view/View;

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lja0;->b:Lha0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lha0;->a()V

    :cond_0
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
