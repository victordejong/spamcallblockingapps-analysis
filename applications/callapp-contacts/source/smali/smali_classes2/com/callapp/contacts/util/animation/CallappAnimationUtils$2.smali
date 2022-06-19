.class final Lcom/callapp/contacts/util/animation/CallappAnimationUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;Landroid/util/Property;III)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:F


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$2;->a:Landroid/view/View;

    iput p2, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$2;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 227
    iget-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$2;->a:Landroid/view/View;

    iget v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$2;->b:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$2;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
