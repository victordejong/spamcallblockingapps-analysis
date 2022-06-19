.class Lcom/capricorn/RayMenu$1;
.super Ljava/lang/Object;
.source "RayMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/RayMenu;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/capricorn/RayMenu;


# direct methods
.method constructor <init>(Lcom/capricorn/RayMenu;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/capricorn/RayMenu$1;->this$0:Lcom/capricorn/RayMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/capricorn/RayMenu$1;->this$0:Lcom/capricorn/RayMenu;

    invoke-static {p1}, Lcom/capricorn/RayMenu;->access$200(Lcom/capricorn/RayMenu;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/capricorn/RayMenu$1;->this$0:Lcom/capricorn/RayMenu;

    invoke-static {p2}, Lcom/capricorn/RayMenu;->access$000(Lcom/capricorn/RayMenu;)Lcom/capricorn/RayLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/capricorn/RayLayout;->isExpanded()Z

    move-result p2

    invoke-static {p2}, Lcom/capricorn/RayMenu;->access$100(Z)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    iget-object p1, p0, Lcom/capricorn/RayMenu$1;->this$0:Lcom/capricorn/RayMenu;

    invoke-static {p1}, Lcom/capricorn/RayMenu;->access$000(Lcom/capricorn/RayMenu;)Lcom/capricorn/RayLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/capricorn/RayLayout;->switchState(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
