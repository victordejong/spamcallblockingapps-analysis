.class Lcom/callerid/block/customview/ScrollerViewpager$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/customview/ScrollerViewpager;->e0(Ljava/util/List;ILcom/callerid/block/customview/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/customview/e;

.field final synthetic c:Lcom/callerid/block/customview/ScrollerViewpager;


# direct methods
.method constructor <init>(Lcom/callerid/block/customview/ScrollerViewpager;Lcom/callerid/block/customview/e;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/ScrollerViewpager$c;->c:Lcom/callerid/block/customview/ScrollerViewpager;

    iput-object p2, p0, Lcom/callerid/block/customview/ScrollerViewpager$c;->b:Lcom/callerid/block/customview/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/customview/ScrollerViewpager$c;->c:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-static {v0}, Lcom/callerid/block/customview/ScrollerViewpager;->X(Lcom/callerid/block/customview/ScrollerViewpager;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/customview/ScrollerViewpager$c;->c:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-static {v0}, Lcom/callerid/block/customview/ScrollerViewpager;->X(Lcom/callerid/block/customview/ScrollerViewpager;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/customview/ScrollerViewpager$c;->c:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-static {p1}, Lcom/callerid/block/customview/ScrollerViewpager;->c0(Lcom/callerid/block/customview/ScrollerViewpager;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/customview/ScrollerViewpager$c;->b:Lcom/callerid/block/customview/e;

    iget-object v1, p0, Lcom/callerid/block/customview/ScrollerViewpager$c;->c:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-static {v1}, Lcom/callerid/block/customview/ScrollerViewpager;->b0(Lcom/callerid/block/customview/ScrollerViewpager;)I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/callerid/block/customview/e;->a(I)V

    return-void
.end method
