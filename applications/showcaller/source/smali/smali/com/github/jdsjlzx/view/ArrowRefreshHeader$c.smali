.class Lcom/github/jdsjlzx/view/ArrowRefreshHeader$c;
.super Ljava/lang/Object;
.source "ArrowRefreshHeader.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->j(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/jdsjlzx/view/ArrowRefreshHeader;


# direct methods
.method constructor <init>(Lcom/github/jdsjlzx/view/ArrowRefreshHeader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader$c;->a:Lcom/github/jdsjlzx/view/ArrowRefreshHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/jdsjlzx/view/ArrowRefreshHeader$c;->a:Lcom/github/jdsjlzx/view/ArrowRefreshHeader;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/github/jdsjlzx/view/ArrowRefreshHeader;->setVisibleHeight(I)V

    return-void
.end method
