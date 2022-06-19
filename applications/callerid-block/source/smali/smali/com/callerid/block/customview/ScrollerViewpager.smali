.class public Lcom/callerid/block/customview/ScrollerViewpager;
.super Landroidx/viewpager/widget/ViewPager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/customview/ScrollerViewpager$d;
    }
.end annotation


# instance fields
.field private l0:Landroid/os/Handler;

.field private m0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private n0:I

.field private o0:Ljava/lang/Thread;

.field private p0:I

.field private q0:Z

.field private r0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/callerid/block/customview/ScrollerViewpager$a;

    invoke-direct {p1, p0}, Lcom/callerid/block/customview/ScrollerViewpager$a;-><init>(Lcom/callerid/block/customview/ScrollerViewpager;)V

    iput-object p1, p0, Lcom/callerid/block/customview/ScrollerViewpager;->l0:Landroid/os/Handler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/callerid/block/customview/ScrollerViewpager;->q0:Z

    iput-boolean p1, p0, Lcom/callerid/block/customview/ScrollerViewpager;->r0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/callerid/block/customview/ScrollerViewpager$a;

    invoke-direct {p1, p0}, Lcom/callerid/block/customview/ScrollerViewpager$a;-><init>(Lcom/callerid/block/customview/ScrollerViewpager;)V

    iput-object p1, p0, Lcom/callerid/block/customview/ScrollerViewpager;->l0:Landroid/os/Handler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/callerid/block/customview/ScrollerViewpager;->q0:Z

    iput-boolean p1, p0, Lcom/callerid/block/customview/ScrollerViewpager;->r0:Z

    return-void
.end method

.method static synthetic W(Lcom/callerid/block/customview/ScrollerViewpager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/customview/ScrollerViewpager;->r0:Z

    return p0
.end method

.method static synthetic X(Lcom/callerid/block/customview/ScrollerViewpager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/callerid/block/customview/ScrollerViewpager;->q0:Z

    return p0
.end method

.method static synthetic Y(Lcom/callerid/block/customview/ScrollerViewpager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/callerid/block/customview/ScrollerViewpager;->q0:Z

    return p1
.end method

.method static synthetic Z(Lcom/callerid/block/customview/ScrollerViewpager;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/customview/ScrollerViewpager;->p0:I

    return p0
.end method

.method static synthetic a0(Lcom/callerid/block/customview/ScrollerViewpager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/customview/ScrollerViewpager;->l0:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b0(Lcom/callerid/block/customview/ScrollerViewpager;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/customview/ScrollerViewpager;->n0:I

    return p0
.end method

.method static synthetic c0(Lcom/callerid/block/customview/ScrollerViewpager;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/customview/ScrollerViewpager;->o0:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic d0(Lcom/callerid/block/customview/ScrollerViewpager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/customview/ScrollerViewpager;->m0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public e0(Ljava/util/List;ILcom/callerid/block/customview/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I",
            "Lcom/callerid/block/customview/e;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/callerid/block/customview/ScrollerViewpager;->m0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/callerid/block/customview/ScrollerViewpager;->n0:I

    iput p2, p0, Lcom/callerid/block/customview/ScrollerViewpager;->p0:I

    new-instance p2, Lcom/callerid/block/customview/ScrollerViewpager$d;

    invoke-direct {p2, p0}, Lcom/callerid/block/customview/ScrollerViewpager$d;-><init>(Lcom/callerid/block/customview/ScrollerViewpager;)V

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const p2, 0x3fffffff    # 1.9999999f

    rem-int p1, p2, p1

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/callerid/block/customview/ScrollerViewpager$b;

    invoke-direct {p2, p0}, Lcom/callerid/block/customview/ScrollerViewpager$b;-><init>(Lcom/callerid/block/customview/ScrollerViewpager;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/callerid/block/customview/ScrollerViewpager;->o0:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/callerid/block/customview/ScrollerViewpager$c;

    invoke-direct {p1, p0, p3}, Lcom/callerid/block/customview/ScrollerViewpager$c;-><init>(Lcom/callerid/block/customview/ScrollerViewpager;Lcom/callerid/block/customview/e;)V

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$i;)V

    return-void
.end method
