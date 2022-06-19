.class final Lcom/futuremind/recyclerviewfastscroll/a/e$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuremind/recyclerviewfastscroll/a/e;-><init>(Landroid/view/View;IIFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/futuremind/recyclerviewfastscroll/a/e;


# direct methods
.method constructor <init>(Lcom/futuremind/recyclerviewfastscroll/a/e;Landroid/view/View;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$1;->c:Lcom/futuremind/recyclerviewfastscroll/a/e;

    iput-object p2, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$1;->a:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 45
    iget-boolean p1, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$1;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$1;->b:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/futuremind/recyclerviewfastscroll/a/e$1;->a:Z

    return-void
.end method
