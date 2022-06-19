.class public Lcom/callerid/block/customview/ScrollerViewpager$d;
.super Landroidx/viewpager/widget/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/customview/ScrollerViewpager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/customview/ScrollerViewpager;


# direct methods
.method public constructor <init>(Lcom/callerid/block/customview/ScrollerViewpager;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/ScrollerViewpager$d;->b:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public e()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public j(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/customview/ScrollerViewpager$d;->b:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-static {v0}, Lcom/callerid/block/customview/ScrollerViewpager;->b0(Lcom/callerid/block/customview/ScrollerViewpager;)I

    move-result v0

    rem-int/2addr p2, v0

    iget-object v0, p0, Lcom/callerid/block/customview/ScrollerViewpager$d;->b:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-static {v0}, Lcom/callerid/block/customview/ScrollerViewpager;->d0(Lcom/callerid/block/customview/ScrollerViewpager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public k(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
