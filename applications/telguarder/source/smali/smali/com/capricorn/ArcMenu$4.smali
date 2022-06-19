.class Lcom/capricorn/ArcMenu$4;
.super Ljava/lang/Object;
.source "ArcMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/ArcMenu;->getItemClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/capricorn/ArcMenu;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/capricorn/ArcMenu;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/capricorn/ArcMenu$4;->this$0:Lcom/capricorn/ArcMenu;

    iput-object p2, p0, Lcom/capricorn/ArcMenu$4;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 251
    iget-object v0, p0, Lcom/capricorn/ArcMenu$4;->this$0:Lcom/capricorn/ArcMenu;

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-static {v0, p1, v1, v2, v3}, Lcom/capricorn/ArcMenu;->access$200(Lcom/capricorn/ArcMenu;Landroid/view/View;ZJ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 252
    new-instance v4, Lcom/capricorn/ArcMenu$4$1;

    invoke-direct {v4, p0, p1}, Lcom/capricorn/ArcMenu$4$1;-><init>(Lcom/capricorn/ArcMenu$4;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 282
    iget-object v0, p0, Lcom/capricorn/ArcMenu$4;->this$0:Lcom/capricorn/ArcMenu;

    invoke-static {v0}, Lcom/capricorn/ArcMenu;->access$400(Lcom/capricorn/ArcMenu;)Lcom/capricorn/ArcLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/capricorn/ArcLayout;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 284
    iget-object v6, p0, Lcom/capricorn/ArcMenu$4;->this$0:Lcom/capricorn/ArcMenu;

    invoke-static {v6}, Lcom/capricorn/ArcMenu;->access$400(Lcom/capricorn/ArcMenu;)Lcom/capricorn/ArcLayout;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/capricorn/ArcLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eq p1, v6, :cond_0

    .line 286
    iget-object v7, p0, Lcom/capricorn/ArcMenu$4;->this$0:Lcom/capricorn/ArcMenu;

    invoke-static {v7, v6, v4, v2, v3}, Lcom/capricorn/ArcMenu;->access$200(Lcom/capricorn/ArcMenu;Landroid/view/View;ZJ)Landroid/view/animation/Animation;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/capricorn/ArcMenu$4;->this$0:Lcom/capricorn/ArcMenu;

    invoke-static {p1}, Lcom/capricorn/ArcMenu;->access$600(Lcom/capricorn/ArcMenu;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {v2, v3, v4, v4}, Lcom/capricorn/ArcMenu;->access$500(JZZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 292
    iget-object p1, p0, Lcom/capricorn/ArcMenu$4;->this$0:Lcom/capricorn/ArcMenu;

    invoke-static {p1}, Lcom/capricorn/ArcMenu;->access$700(Lcom/capricorn/ArcMenu;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {v2, v3, v4, v4}, Lcom/capricorn/ArcMenu;->access$500(JZZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 293
    iget-object p1, p0, Lcom/capricorn/ArcMenu$4;->this$0:Lcom/capricorn/ArcMenu;

    invoke-static {p1}, Lcom/capricorn/ArcMenu;->access$800(Lcom/capricorn/ArcMenu;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {v2, v3, v4, v4}, Lcom/capricorn/ArcMenu;->access$500(JZZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    iget-object p1, p0, Lcom/capricorn/ArcMenu$4;->this$0:Lcom/capricorn/ArcMenu;

    invoke-static {p1}, Lcom/capricorn/ArcMenu;->access$400(Lcom/capricorn/ArcMenu;)Lcom/capricorn/ArcLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/capricorn/ArcLayout;->invalidate()V

    .line 296
    iget-object p1, p0, Lcom/capricorn/ArcMenu$4;->this$0:Lcom/capricorn/ArcMenu;

    invoke-static {p1}, Lcom/capricorn/ArcMenu;->access$1000(Lcom/capricorn/ArcMenu;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {v1}, Lcom/capricorn/ArcMenu;->access$900(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
