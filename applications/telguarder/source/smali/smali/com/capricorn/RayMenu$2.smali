.class Lcom/capricorn/RayMenu$2;
.super Ljava/lang/Object;
.source "RayMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/RayMenu;->getItemClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/capricorn/RayMenu;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/capricorn/RayMenu;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/capricorn/RayMenu$2;->this$0:Lcom/capricorn/RayMenu;

    iput-object p2, p0, Lcom/capricorn/RayMenu$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 71
    iget-object v0, p0, Lcom/capricorn/RayMenu$2;->this$0:Lcom/capricorn/RayMenu;

    const/4 v1, 0x1

    const-wide/16 v2, 0x190

    invoke-static {v0, p1, v1, v2, v3}, Lcom/capricorn/RayMenu;->access$300(Lcom/capricorn/RayMenu;Landroid/view/View;ZJ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 72
    new-instance v2, Lcom/capricorn/RayMenu$2$1;

    invoke-direct {v2, p0}, Lcom/capricorn/RayMenu$2$1;-><init>(Lcom/capricorn/RayMenu$2;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 96
    iget-object v0, p0, Lcom/capricorn/RayMenu$2;->this$0:Lcom/capricorn/RayMenu;

    invoke-static {v0}, Lcom/capricorn/RayMenu;->access$000(Lcom/capricorn/RayMenu;)Lcom/capricorn/RayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/capricorn/RayLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 98
    iget-object v4, p0, Lcom/capricorn/RayMenu$2;->this$0:Lcom/capricorn/RayMenu;

    invoke-static {v4}, Lcom/capricorn/RayMenu;->access$000(Lcom/capricorn/RayMenu;)Lcom/capricorn/RayLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/capricorn/RayLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq p1, v4, :cond_0

    .line 100
    iget-object v5, p0, Lcom/capricorn/RayMenu$2;->this$0:Lcom/capricorn/RayMenu;

    const-wide/16 v6, 0x12c

    invoke-static {v5, v4, v2, v6, v7}, Lcom/capricorn/RayMenu;->access$300(Lcom/capricorn/RayMenu;Landroid/view/View;ZJ)Landroid/view/animation/Animation;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/capricorn/RayMenu$2;->this$0:Lcom/capricorn/RayMenu;

    invoke-static {v0}, Lcom/capricorn/RayMenu;->access$000(Lcom/capricorn/RayMenu;)Lcom/capricorn/RayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/capricorn/RayLayout;->invalidate()V

    .line 105
    iget-object v0, p0, Lcom/capricorn/RayMenu$2;->this$0:Lcom/capricorn/RayMenu;

    invoke-static {v0}, Lcom/capricorn/RayMenu;->access$200(Lcom/capricorn/RayMenu;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v1}, Lcom/capricorn/RayMenu;->access$100(Z)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    iget-object v0, p0, Lcom/capricorn/RayMenu$2;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 108
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    return-void
.end method
