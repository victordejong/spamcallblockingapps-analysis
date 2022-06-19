.class Lcom/google/android/material/floatingactionbutton/b$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/b;->b(Lcom/google/android/material/floatingactionbutton/b$e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/material/floatingactionbutton/b$e;

.field final synthetic c:Lcom/google/android/material/floatingactionbutton/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/b;ZLcom/google/android/material/floatingactionbutton/b$e;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/b$2;->c:Lcom/google/android/material/floatingactionbutton/b;

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/b$2;->a:Z

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/b$2;->b:Lcom/google/android/material/floatingactionbutton/b$e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$2;->c:Lcom/google/android/material/floatingactionbutton/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b;I)I

    .line 517
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$2;->c:Lcom/google/android/material/floatingactionbutton/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 519
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$2;->b:Lcom/google/android/material/floatingactionbutton/b$e;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$2;->b:Lcom/google/android/material/floatingactionbutton/b$e;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/b$e;->a()V

    .line 522
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$2;->c:Lcom/google/android/material/floatingactionbutton/b;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/b;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/material/floatingactionbutton/b$2;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(IZ)V

    .line 510
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$2;->c:Lcom/google/android/material/floatingactionbutton/b;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b;I)I

    .line 511
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/b$2;->c:Lcom/google/android/material/floatingactionbutton/b;

    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/b;->a(Lcom/google/android/material/floatingactionbutton/b;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 512
    return-void
.end method
