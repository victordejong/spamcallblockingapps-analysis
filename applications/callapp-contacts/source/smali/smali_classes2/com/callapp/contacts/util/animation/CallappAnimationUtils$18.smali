.class final Lcom/callapp/contacts/util/animation/CallappAnimationUtils$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;I)Landroid/animation/Animator;
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

    .line 541
    iput-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$18;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 542
    iput p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$18;->a:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 546
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 547
    iget v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$18;->a:I

    sub-int v0, p1, v0

    .line 548
    iput p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$18;->a:I

    .line 549
    iget-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$18;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 550
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->scrollBy(II)V

    :cond_0
    return-void
.end method
