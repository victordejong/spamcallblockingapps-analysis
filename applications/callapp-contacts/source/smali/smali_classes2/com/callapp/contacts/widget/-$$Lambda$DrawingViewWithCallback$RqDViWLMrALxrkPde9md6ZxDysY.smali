.class public final synthetic Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$RqDViWLMrALxrkPde9md6ZxDysY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/widget/DrawingViewWithCallback;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/widget/DrawingViewWithCallback;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$RqDViWLMrALxrkPde9md6ZxDysY;->f$0:Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    iput p2, p0, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$RqDViWLMrALxrkPde9md6ZxDysY;->f$1:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$RqDViWLMrALxrkPde9md6ZxDysY;->f$0:Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    iget v1, p0, Lcom/callapp/contacts/widget/-$$Lambda$DrawingViewWithCallback$RqDViWLMrALxrkPde9md6ZxDysY;->f$1:F

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->lambda$RqDViWLMrALxrkPde9md6ZxDysY(Lcom/callapp/contacts/widget/DrawingViewWithCallback;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
