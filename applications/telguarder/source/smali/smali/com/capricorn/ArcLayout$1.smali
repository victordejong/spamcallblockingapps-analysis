.class Lcom/capricorn/ArcLayout$1;
.super Ljava/lang/Object;
.source "ArcLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/ArcLayout;->bindChildAnimation(Landroid/view/View;IJLandroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/capricorn/ArcLayout;

.field final synthetic val$allAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field final synthetic val$isLast:Z


# direct methods
.method constructor <init>(Lcom/capricorn/ArcLayout;Landroid/view/animation/Animation$AnimationListener;Z)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/capricorn/ArcLayout$1;->this$0:Lcom/capricorn/ArcLayout;

    iput-object p2, p0, Lcom/capricorn/ArcLayout$1;->val$allAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iput-boolean p3, p0, Lcom/capricorn/ArcLayout$1;->val$isLast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 257
    iget-boolean v0, p0, Lcom/capricorn/ArcLayout$1;->val$isLast:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/capricorn/ArcLayout$1;->this$0:Lcom/capricorn/ArcLayout;

    new-instance v1, Lcom/capricorn/ArcLayout$1$1;

    invoke-direct {v1, p0}, Lcom/capricorn/ArcLayout$1$1;-><init>(Lcom/capricorn/ArcLayout$1;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/capricorn/ArcLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    iget-object v0, p0, Lcom/capricorn/ArcLayout$1;->val$allAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/capricorn/ArcLayout$1;->val$allAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
