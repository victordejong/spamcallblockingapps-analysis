.class Lcom/google/android/material/floatingactionbutton/b$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b$e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/material/floatingactionbutton/b$e;

.field final synthetic c:Lcom/google/android/material/floatingactionbutton/b;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/b;ZLcom/google/android/material/floatingactionbutton/b$e;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b$1;->c:Lcom/google/android/material/floatingactionbutton/b;

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/b$1;->a:Z

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/b$1;->b:Lcom/google/android/material/floatingactionbutton/b$e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b$1;->d:Z

    .line 449
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$1;->c:Lcom/google/android/material/floatingactionbutton/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b;I)I

    .line 454
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$1;->c:Lcom/google/android/material/floatingactionbutton/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 456
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b$1;->d:Z

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$1;->c:Lcom/google/android/material/floatingactionbutton/b;

    iget-object v1, v0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/b$1;->a:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/material/floatingactionbutton/b$1;->a:Z

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(IZ)V

    .line 458
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$1;->b:Lcom/google/android/material/floatingactionbutton/b$e;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$1;->b:Lcom/google/android/material/floatingactionbutton/b$e;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/b$e;->b()V

    .line 462
    :cond_0
    return-void

    .line 457
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 439
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$1;->c:Lcom/google/android/material/floatingactionbutton/b;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/b$1;->a:Z

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(IZ)V

    .line 441
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$1;->c:Lcom/google/android/material/floatingactionbutton/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b;I)I

    .line 442
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$1;->c:Lcom/google/android/material/floatingactionbutton/b;

    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 443
    iput-boolean v2, p0, Lcom/google/android/material/floatingactionbutton/b$1;->d:Z

    .line 444
    return-void
.end method
