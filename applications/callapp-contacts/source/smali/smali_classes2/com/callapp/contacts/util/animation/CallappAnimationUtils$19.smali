.class final Lcom/callapp/contacts/util/animation/CallappAnimationUtils$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->c(Landroid/view/View;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$19;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 566
    iput p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$19;->a:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 570
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 571
    iget v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$19;->a:I

    sub-int v0, p1, v0

    .line 572
    iput p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$19;->a:I

    .line 573
    iget-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$19;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    neg-int v0, v0

    const/4 v1, 0x0

    .line 574
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->scrollBy(II)V

    :cond_0
    return-void
.end method
