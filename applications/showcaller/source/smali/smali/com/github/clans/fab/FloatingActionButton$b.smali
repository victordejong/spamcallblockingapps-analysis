.class Lcom/github/clans/fab/FloatingActionButton$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/github/clans/fab/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionButton$b;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$b;->d:Lcom/github/clans/fab/FloatingActionButton;

    const v1, 0x7f0901b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->s()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$b;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->z()V

    .line 4
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$b;->d:Lcom/github/clans/fab/FloatingActionButton;

    const v1, 0x7f0901b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->t()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionButton$b;->d:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->A()V

    .line 4
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
