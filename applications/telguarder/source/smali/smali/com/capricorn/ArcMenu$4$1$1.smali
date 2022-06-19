.class Lcom/capricorn/ArcMenu$4$1$1;
.super Ljava/lang/Object;
.source "ArcMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/ArcMenu$4$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/capricorn/ArcMenu$4$1;


# direct methods
.method constructor <init>(Lcom/capricorn/ArcMenu$4$1;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/capricorn/ArcMenu$4$1$1;->this$2:Lcom/capricorn/ArcMenu$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/capricorn/ArcMenu$4$1$1;->this$2:Lcom/capricorn/ArcMenu$4$1;

    iget-object v0, v0, Lcom/capricorn/ArcMenu$4$1;->this$1:Lcom/capricorn/ArcMenu$4;

    iget-object v0, v0, Lcom/capricorn/ArcMenu$4;->this$0:Lcom/capricorn/ArcMenu;

    invoke-static {v0}, Lcom/capricorn/ArcMenu;->access$300(Lcom/capricorn/ArcMenu;)V

    .line 273
    iget-object v0, p0, Lcom/capricorn/ArcMenu$4$1$1;->this$2:Lcom/capricorn/ArcMenu$4$1;

    iget-object v0, v0, Lcom/capricorn/ArcMenu$4$1;->this$1:Lcom/capricorn/ArcMenu$4;

    iget-object v0, v0, Lcom/capricorn/ArcMenu$4;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/capricorn/ArcMenu$4$1$1;->this$2:Lcom/capricorn/ArcMenu$4$1;

    iget-object v0, v0, Lcom/capricorn/ArcMenu$4$1;->this$1:Lcom/capricorn/ArcMenu$4;

    iget-object v0, v0, Lcom/capricorn/ArcMenu$4;->val$listener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/capricorn/ArcMenu$4$1$1;->this$2:Lcom/capricorn/ArcMenu$4$1;

    iget-object v1, v1, Lcom/capricorn/ArcMenu$4$1;->val$viewClicked:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
