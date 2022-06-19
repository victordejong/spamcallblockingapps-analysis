.class final Lit/gmariotti/cardslib/library/view/listener/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lit/gmariotti/cardslib/library/view/listener/a;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/listener/a;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$3;->c:Lit/gmariotti/cardslib/library/view/listener/a;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/a$3;->a:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lit/gmariotti/cardslib/library/view/listener/a$3;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a$3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 452
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$3;->b:Landroid/view/View;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a$3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
