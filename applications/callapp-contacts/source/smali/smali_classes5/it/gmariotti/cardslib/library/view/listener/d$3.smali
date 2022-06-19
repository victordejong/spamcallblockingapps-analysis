.class final Lit/gmariotti/cardslib/library/view/listener/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:Lit/gmariotti/cardslib/library/view/listener/d;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/listener/d;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/d$3;->b:Lit/gmariotti/cardslib/library/view/listener/d;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d$3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/d$3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 285
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/d$3;->b:Lit/gmariotti/cardslib/library/view/listener/d;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/d;->b(Lit/gmariotti/cardslib/library/view/listener/d;)Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/d$3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
