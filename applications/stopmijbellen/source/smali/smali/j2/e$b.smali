.class public Lj2/e$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj2/e;


# direct methods
.method public constructor <init>(Lj2/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj2/e$b;->a:Lj2/e;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj2/e$b;->a:Lj2/e;

    invoke-virtual {v0}, Lj2/e;->c()V

    .line 2
    iget-object v0, p0, Lj2/e$b;->a:Lj2/e;

    .line 3
    iget-object v0, v0, Lj2/e;->m:Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->j()V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj2/e$b;->a:Lj2/e;

    invoke-virtual {v0}, Lj2/e;->d()V

    .line 2
    iget-object v0, p0, Lj2/e$b;->a:Lj2/e;

    .line 3
    iget-object v0, v0, Lj2/e;->m:Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->k()V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
