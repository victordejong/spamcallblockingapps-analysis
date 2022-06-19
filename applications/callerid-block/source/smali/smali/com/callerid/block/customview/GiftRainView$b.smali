.class Lcom/callerid/block/customview/GiftRainView$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/customview/GiftRainView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/customview/GiftRainView;


# direct methods
.method constructor <init>(Lcom/callerid/block/customview/GiftRainView;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/GiftRainView$b;->a:Lcom/callerid/block/customview/GiftRainView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p1, "flag"

    const-string v0, "\u52a8\u753b\u7ed3\u675f"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/callerid/block/customview/GiftRainView$b;->a:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {p1}, Lcom/callerid/block/customview/GiftRainView;->g()V

    iget-object p1, p0, Lcom/callerid/block/customview/GiftRainView$b;->a:Lcom/callerid/block/customview/GiftRainView;

    invoke-virtual {p1}, Lcom/callerid/block/customview/GiftRainView;->j()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
