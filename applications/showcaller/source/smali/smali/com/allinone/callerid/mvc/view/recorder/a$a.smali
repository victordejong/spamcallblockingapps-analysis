.class Lcom/allinone/callerid/mvc/view/recorder/a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularRevealAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/view/recorder/a;->b(ZLandroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/allinone/callerid/mvc/view/recorder/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/view/recorder/a;ZLandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/a$a;->c:Lcom/allinone/callerid/mvc/view/recorder/a;

    iput-boolean p2, p0, Lcom/allinone/callerid/mvc/view/recorder/a$a;->a:Z

    iput-object p3, p0, Lcom/allinone/callerid/mvc/view/recorder/a$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-boolean p1, p0, Lcom/allinone/callerid/mvc/view/recorder/a$a;->a:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/a$a;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/a$a;->c:Lcom/allinone/callerid/mvc/view/recorder/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/view/recorder/a;->a(Lcom/allinone/callerid/mvc/view/recorder/a;)Lcom/allinone/callerid/mvc/view/recorder/a$b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/a$a;->c:Lcom/allinone/callerid/mvc/view/recorder/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/view/recorder/a;->a(Lcom/allinone/callerid/mvc/view/recorder/a;)Lcom/allinone/callerid/mvc/view/recorder/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/allinone/callerid/mvc/view/recorder/a$b;->b()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/a$a;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/a$a;->c:Lcom/allinone/callerid/mvc/view/recorder/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/view/recorder/a;->a(Lcom/allinone/callerid/mvc/view/recorder/a;)Lcom/allinone/callerid/mvc/view/recorder/a$b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/a$a;->c:Lcom/allinone/callerid/mvc/view/recorder/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/view/recorder/a;->a(Lcom/allinone/callerid/mvc/view/recorder/a;)Lcom/allinone/callerid/mvc/view/recorder/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/allinone/callerid/mvc/view/recorder/a$b;->a()V

    :cond_1
    :goto_0
    return-void
.end method
