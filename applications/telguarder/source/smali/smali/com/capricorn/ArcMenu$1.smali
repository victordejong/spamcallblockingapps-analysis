.class Lcom/capricorn/ArcMenu$1;
.super Ljava/lang/Object;
.source "ArcMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capricorn/ArcMenu;->openArcMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/capricorn/ArcMenu;


# direct methods
.method constructor <init>(Lcom/capricorn/ArcMenu;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/capricorn/ArcMenu$1;->this$0:Lcom/capricorn/ArcMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/capricorn/ArcMenu$1;->this$0:Lcom/capricorn/ArcMenu;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/capricorn/ArcMenu;->access$002(Lcom/capricorn/ArcMenu;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/capricorn/ArcMenu$1;->this$0:Lcom/capricorn/ArcMenu;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/capricorn/ArcMenu;->access$002(Lcom/capricorn/ArcMenu;Z)Z

    return-void
.end method
