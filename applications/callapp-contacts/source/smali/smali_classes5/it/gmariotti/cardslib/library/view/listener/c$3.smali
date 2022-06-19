.class final Lit/gmariotti/cardslib/library/view/listener/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic b:Lit/gmariotti/cardslib/library/view/listener/c;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/view/listener/c;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c$3;->b:Lit/gmariotti/cardslib/library/view/listener/c;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c$3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c$3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 278
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c$3;->b:Lit/gmariotti/cardslib/library/view/listener/c;

    invoke-static {p1}, Lit/gmariotti/cardslib/library/view/listener/c;->b(Lit/gmariotti/cardslib/library/view/listener/c;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c$3;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
