.class Lcom/allinone/callerid/customview/ExpandableTextView$b;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/customview/ExpandableTextView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/customview/ExpandableTextView;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/customview/ExpandableTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView$b;->a:Lcom/allinone/callerid/customview/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView$b;->a:Lcom/allinone/callerid/customview/ExpandableTextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/allinone/callerid/customview/ExpandableTextView;->c(Lcom/allinone/callerid/customview/ExpandableTextView;Z)Z

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView$b;->a:Lcom/allinone/callerid/customview/ExpandableTextView;

    invoke-static {p1}, Lcom/allinone/callerid/customview/ExpandableTextView;->d(Lcom/allinone/callerid/customview/ExpandableTextView;)Lcom/allinone/callerid/customview/ExpandableTextView$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView$b;->a:Lcom/allinone/callerid/customview/ExpandableTextView;

    invoke-static {p1}, Lcom/allinone/callerid/customview/ExpandableTextView;->d(Lcom/allinone/callerid/customview/ExpandableTextView;)Lcom/allinone/callerid/customview/ExpandableTextView$d;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView$b;->a:Lcom/allinone/callerid/customview/ExpandableTextView;

    iget-object v1, v0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/allinone/callerid/customview/ExpandableTextView;->e(Lcom/allinone/callerid/customview/ExpandableTextView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/allinone/callerid/customview/ExpandableTextView$d;->a(Landroid/widget/TextView;Z)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
