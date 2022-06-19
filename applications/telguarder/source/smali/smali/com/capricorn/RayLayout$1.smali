.class Lcom/capricorn/RayLayout$1;
.super Ljava/lang/Object;
.source "RayLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/RayLayout;->bindChildAnimation(Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/capricorn/RayLayout;

.field final synthetic val$isLast:Z


# direct methods
.method constructor <init>(Lcom/capricorn/RayLayout;Z)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/capricorn/RayLayout$1;->this$0:Lcom/capricorn/RayLayout;

    iput-boolean p2, p0, Lcom/capricorn/RayLayout$1;->val$isLast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 182
    iget-boolean p1, p0, Lcom/capricorn/RayLayout$1;->val$isLast:Z

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/capricorn/RayLayout$1;->this$0:Lcom/capricorn/RayLayout;

    new-instance v0, Lcom/capricorn/RayLayout$1$1;

    invoke-direct {v0, p0}, Lcom/capricorn/RayLayout$1$1;-><init>(Lcom/capricorn/RayLayout$1;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/capricorn/RayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
