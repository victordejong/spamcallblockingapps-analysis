.class final Lcom/google/android/material/floatingactionbutton/d$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/d;->b(Lcom/google/android/material/floatingactionbutton/d$e;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/material/floatingactionbutton/d$e;

.field final synthetic c:Lcom/google/android/material/floatingactionbutton/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/d;ZLcom/google/android/material/floatingactionbutton/d$e;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d$2;->c:Lcom/google/android/material/floatingactionbutton/d;

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/d$2;->a:Z

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/d$2;->b:Lcom/google/android/material/floatingactionbutton/d$e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 516
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d$2;->c:Lcom/google/android/material/floatingactionbutton/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d;I)I

    .line 517
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d$2;->c:Lcom/google/android/material/floatingactionbutton/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 519
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d$2;->b:Lcom/google/android/material/floatingactionbutton/d$e;

    if-eqz p1, :cond_0

    .line 520
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d$e;->a()V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d$2;->c:Lcom/google/android/material/floatingactionbutton/d;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/d$2;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(IZ)V

    .line 510
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d$2;->c:Lcom/google/android/material/floatingactionbutton/d;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d;I)I

    .line 511
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d$2;->c:Lcom/google/android/material/floatingactionbutton/d;

    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
