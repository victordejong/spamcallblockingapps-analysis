.class Lcom/github/clans/fab/Label$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/github/clans/fab/Label;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/Label;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/Label$b;->d:Lcom/github/clans/fab/Label;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/Label$b;->d:Lcom/github/clans/fab/Label;

    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->s()V

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/Label$b;->d:Lcom/github/clans/fab/Label;

    invoke-static {v0}, Lcom/github/clans/fab/Label;->a(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/github/clans/fab/Label$b;->d:Lcom/github/clans/fab/Label;

    invoke-static {v0}, Lcom/github/clans/fab/Label;->a(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->z()V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/Label$b;->d:Lcom/github/clans/fab/Label;

    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->t()V

    .line 2
    iget-object v0, p0, Lcom/github/clans/fab/Label$b;->d:Lcom/github/clans/fab/Label;

    invoke-static {v0}, Lcom/github/clans/fab/Label;->a(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/github/clans/fab/Label$b;->d:Lcom/github/clans/fab/Label;

    invoke-static {v0}, Lcom/github/clans/fab/Label;->a(Lcom/github/clans/fab/Label;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->A()V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
