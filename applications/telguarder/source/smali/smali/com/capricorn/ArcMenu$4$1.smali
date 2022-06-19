.class Lcom/capricorn/ArcMenu$4$1;
.super Ljava/lang/Object;
.source "ArcMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/ArcMenu$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/capricorn/ArcMenu$4;

.field final synthetic val$viewClicked:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/capricorn/ArcMenu$4;Landroid/view/View;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/capricorn/ArcMenu$4$1;->this$1:Lcom/capricorn/ArcMenu$4;

    iput-object p2, p0, Lcom/capricorn/ArcMenu$4$1;->val$viewClicked:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 266
    iget-object p1, p0, Lcom/capricorn/ArcMenu$4$1;->this$1:Lcom/capricorn/ArcMenu$4;

    iget-object p1, p1, Lcom/capricorn/ArcMenu$4;->this$0:Lcom/capricorn/ArcMenu;

    new-instance v0, Lcom/capricorn/ArcMenu$4$1$1;

    invoke-direct {v0, p0}, Lcom/capricorn/ArcMenu$4$1$1;-><init>(Lcom/capricorn/ArcMenu$4$1;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/capricorn/ArcMenu;->postDelayed(Ljava/lang/Runnable;J)Z

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
