.class final Lcom/callapp/contacts/util/animation/CallappAnimationUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;IIFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$4;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$4;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$4;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;II)V

    .line 329
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$4;->b:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_0
    return-void
.end method
