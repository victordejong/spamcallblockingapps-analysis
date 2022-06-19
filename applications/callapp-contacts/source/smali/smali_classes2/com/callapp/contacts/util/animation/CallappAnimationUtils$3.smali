.class final Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/Animator$AnimatorListener;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/animation/Animator$AnimatorListener;Landroid/view/View;I)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;->a:Landroid/animation/Animator$AnimatorListener;

    iput-object p2, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;->b:Landroid/view/View;

    iput p3, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;->b:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 289
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;->a:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;->b:Landroid/view/View;

    iget v1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;->a:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;->a:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$3;->a:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
