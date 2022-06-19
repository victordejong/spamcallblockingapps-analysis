.class Lcom/allinone/callerid/b/t$c;
.super Ljava/lang/Object;
.source "RecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/t;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/b/t$k;

.field final synthetic e:Lcom/allinone/callerid/b/t;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/t;Lcom/allinone/callerid/b/t$k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/t$c;->e:Lcom/allinone/callerid/b/t;

    iput-object p2, p0, Lcom/allinone/callerid/b/t$c;->d:Lcom/allinone/callerid/b/t$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/t$c;->e:Lcom/allinone/callerid/b/t;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/allinone/callerid/b/t;->G(Lcom/allinone/callerid/b/t;Z)Z

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "find_spamcall_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/b/t$c;->e:Lcom/allinone/callerid/b/t;

    invoke-static {p1}, Lcom/allinone/callerid/b/t;->H(Lcom/allinone/callerid/b/t;)Lcom/allinone/callerid/b/t$l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/b/t$c;->e:Lcom/allinone/callerid/b/t;

    invoke-static {p1}, Lcom/allinone/callerid/b/t;->H(Lcom/allinone/callerid/b/t;)Lcom/allinone/callerid/b/t$l;

    move-result-object p1

    invoke-interface {p1}, Lcom/allinone/callerid/b/t$l;->a()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    const v0, 0x7f01001b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/allinone/callerid/b/t$c$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/b/t$c$a;-><init>(Lcom/allinone/callerid/b/t$c;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/b/t$c;->d:Lcom/allinone/callerid/b/t$k;

    invoke-static {v0}, Lcom/allinone/callerid/b/t$k;->Q(Lcom/allinone/callerid/b/t$k;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
