.class Lcom/allinone/callerid/b/t$c$a;
.super Ljava/lang/Object;
.source "RecycleViewAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/t$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/b/t$c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/t$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/t$c$a;->a:Lcom/allinone/callerid/b/t$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/t$c$a;->a:Lcom/allinone/callerid/b/t$c;

    iget-object p1, p1, Lcom/allinone/callerid/b/t$c;->d:Lcom/allinone/callerid/b/t$k;

    invoke-static {p1}, Lcom/allinone/callerid/b/t$k;->Q(Lcom/allinone/callerid/b/t$k;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

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
