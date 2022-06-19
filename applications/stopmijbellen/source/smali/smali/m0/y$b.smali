.class public Lm0/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm0/y;->f(Lm0/a0;)Lm0/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/a0;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lm0/y;Lm0/a0;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lm0/y$b;->a:Lm0/a0;

    iput-object p3, p0, Lm0/y$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lm0/y$b;->a:Lm0/a0;

    check-cast p1, Lf/y$c;

    .line 2
    iget-object p1, p1, Lf/y$c;->a:Lf/y;

    iget-object p1, p1, Lf/y;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 3
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
