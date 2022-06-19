.class Lcom/allinone/callerid/customview/e/d$a;
.super Ljava/lang/Object;
.source "ViewAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/customview/e/d;->i()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/customview/e/d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/customview/e/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/e/d$a;->a:Lcom/allinone/callerid/customview/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/customview/e/d$a;->a:Lcom/allinone/callerid/customview/e/d;

    invoke-static {p1}, Lcom/allinone/callerid/customview/e/d;->b(Lcom/allinone/callerid/customview/e/d;)Lcom/allinone/callerid/customview/e/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/customview/e/d$a;->a:Lcom/allinone/callerid/customview/e/d;

    invoke-static {p1}, Lcom/allinone/callerid/customview/e/d;->b(Lcom/allinone/callerid/customview/e/d;)Lcom/allinone/callerid/customview/e/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/allinone/callerid/customview/e/c;->a()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/customview/e/d$a;->a:Lcom/allinone/callerid/customview/e/d;

    invoke-static {p1}, Lcom/allinone/callerid/customview/e/d;->c(Lcom/allinone/callerid/customview/e/d;)Lcom/allinone/callerid/customview/e/d;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/customview/e/d$a;->a:Lcom/allinone/callerid/customview/e/d;

    invoke-static {p1}, Lcom/allinone/callerid/customview/e/d;->c(Lcom/allinone/callerid/customview/e/d;)Lcom/allinone/callerid/customview/e/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/allinone/callerid/customview/e/d;->d(Lcom/allinone/callerid/customview/e/d;Lcom/allinone/callerid/customview/e/d;)Lcom/allinone/callerid/customview/e/d;

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/customview/e/d$a;->a:Lcom/allinone/callerid/customview/e/d;

    invoke-static {p1}, Lcom/allinone/callerid/customview/e/d;->c(Lcom/allinone/callerid/customview/e/d;)Lcom/allinone/callerid/customview/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/customview/e/d;->n()Lcom/allinone/callerid/customview/e/d;

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/customview/e/d$a;->a:Lcom/allinone/callerid/customview/e/d;

    invoke-static {p1}, Lcom/allinone/callerid/customview/e/d;->a(Lcom/allinone/callerid/customview/e/d;)Lcom/allinone/callerid/customview/e/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/customview/e/d$a;->a:Lcom/allinone/callerid/customview/e/d;

    invoke-static {p1}, Lcom/allinone/callerid/customview/e/d;->a(Lcom/allinone/callerid/customview/e/d;)Lcom/allinone/callerid/customview/e/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/allinone/callerid/customview/e/b;->onStart()V

    :cond_0
    return-void
.end method
