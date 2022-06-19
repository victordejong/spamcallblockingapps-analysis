.class Lcom/capricorn/RayMenu$2$1;
.super Ljava/lang/Object;
.source "RayMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/RayMenu$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/capricorn/RayMenu$2;


# direct methods
.method constructor <init>(Lcom/capricorn/RayMenu$2;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/capricorn/RayMenu$2$1;->this$1:Lcom/capricorn/RayMenu$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 86
    iget-object p1, p0, Lcom/capricorn/RayMenu$2$1;->this$1:Lcom/capricorn/RayMenu$2;

    iget-object p1, p1, Lcom/capricorn/RayMenu$2;->this$0:Lcom/capricorn/RayMenu;

    new-instance v0, Lcom/capricorn/RayMenu$2$1$1;

    invoke-direct {v0, p0}, Lcom/capricorn/RayMenu$2$1$1;-><init>(Lcom/capricorn/RayMenu$2$1;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/capricorn/RayMenu;->postDelayed(Ljava/lang/Runnable;J)Z

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
