.class Lcom/allinone/callerid/customview/ExpandableTextView$a;
.super Ljava/lang/Object;
.source "ExpandableTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView$a;->a:Lcom/allinone/callerid/customview/ExpandableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView$a;->a:Lcom/allinone/callerid/customview/ExpandableTextView;

    iget-object v1, v0, Lcom/allinone/callerid/customview/ExpandableTextView;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/allinone/callerid/customview/ExpandableTextView;->a(Lcom/allinone/callerid/customview/ExpandableTextView;)I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/customview/ExpandableTextView$a;->a:Lcom/allinone/callerid/customview/ExpandableTextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/customview/ExpandableTextView$a;->a:Lcom/allinone/callerid/customview/ExpandableTextView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
