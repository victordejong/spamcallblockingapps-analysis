.class Lcom/allinone/callerid/b/t$d$a;
.super Ljava/lang/Object;
.source "RecycleViewAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/t$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/b/t$d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/t$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/t$d$a;->a:Lcom/allinone/callerid/b/t$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/t$d$a;->a:Lcom/allinone/callerid/b/t$d;

    iget-object p1, p1, Lcom/allinone/callerid/b/t$d;->d:Lcom/allinone/callerid/b/t$k;

    invoke-static {p1}, Lcom/allinone/callerid/b/t$k;->Q(Lcom/allinone/callerid/b/t$k;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/h1;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/b/t$d$a;->a:Lcom/allinone/callerid/b/t$d;

    iget-object p1, p1, Lcom/allinone/callerid/b/t$d;->d:Lcom/allinone/callerid/b/t$k;

    invoke-static {p1}, Lcom/allinone/callerid/b/t$k;->P(Lcom/allinone/callerid/b/t$k;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/b/t$d$a;->a:Lcom/allinone/callerid/b/t$d;

    iget-object p1, p1, Lcom/allinone/callerid/b/t$d;->e:Lcom/allinone/callerid/b/t;

    invoke-static {p1}, Lcom/allinone/callerid/b/t;->I(Lcom/allinone/callerid/b/t;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "permission_guide_show"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/b/t$d$a;->a:Lcom/allinone/callerid/b/t$d;

    iget-object p1, p1, Lcom/allinone/callerid/b/t$d;->e:Lcom/allinone/callerid/b/t;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/allinone/callerid/b/t;->J(Lcom/allinone/callerid/b/t;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
