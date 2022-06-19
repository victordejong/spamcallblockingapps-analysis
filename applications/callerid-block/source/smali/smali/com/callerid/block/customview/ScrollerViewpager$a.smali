.class Lcom/callerid/block/customview/ScrollerViewpager$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/customview/ScrollerViewpager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/customview/ScrollerViewpager;


# direct methods
.method constructor <init>(Lcom/callerid/block/customview/ScrollerViewpager;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/customview/ScrollerViewpager$a;->a:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x186a2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/callerid/block/customview/ScrollerViewpager$a;->a:Lcom/callerid/block/customview/ScrollerViewpager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
