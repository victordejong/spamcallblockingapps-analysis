.class public Lcom/kedlin/cca/ui/CallScreenLayout$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/CallScreenLayout;->y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/kedlin/cca/ui/CallScreenLayout;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/CallScreenLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$g;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$g;->a:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$g;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$g;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-static {p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->n(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$g;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-static {p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->p(Lcom/kedlin/cca/ui/CallScreenLayout;)Lcom/kedlin/cca/ui/CallScreenLayout$i;

    move-result-object p1

    sget-object v0, Lcom/kedlin/cca/ui/CallScreenLayout$i;->d:Lcom/kedlin/cca/ui/CallScreenLayout$i;

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$g;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$g;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-static {p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->q(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/animation/Animator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kedlin/cca/ui/CallScreenLayout;->o(Lcom/kedlin/cca/ui/CallScreenLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$g;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-static {p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->n(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$g;->a:Z

    iget-object v0, p0, Lcom/kedlin/cca/ui/CallScreenLayout$g;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    iget-object v0, v0, Lcom/kedlin/cca/ui/CallScreenLayout;->y0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kedlin/cca/ui/CallScreenLayout$k;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/kedlin/cca/ui/CallScreenLayout$g;->b:Lcom/kedlin/cca/ui/CallScreenLayout;

    invoke-static {p1}, Lcom/kedlin/cca/ui/CallScreenLayout;->n(Lcom/kedlin/cca/ui/CallScreenLayout;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_2
    return-void
.end method
