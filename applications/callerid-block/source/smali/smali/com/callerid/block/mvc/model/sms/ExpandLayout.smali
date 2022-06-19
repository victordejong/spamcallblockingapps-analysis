.class public Lcom/callerid/block/mvc/model/sms/ExpandLayout;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private b:Landroid/view/View;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/callerid/block/mvc/model/sms/ExpandLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/callerid/block/mvc/model/sms/ExpandLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/callerid/block/mvc/model/sms/ExpandLayout;->d()V

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/mvc/model/sms/ExpandLayout;)I
    .locals 0

    iget p0, p0, Lcom/callerid/block/mvc/model/sms/ExpandLayout;->c:I

    return p0
.end method

.method static synthetic b(Lcom/callerid/block/mvc/model/sms/ExpandLayout;I)I
    .locals 0

    iput p1, p0, Lcom/callerid/block/mvc/model/sms/ExpandLayout;->c:I

    return p1
.end method

.method static synthetic c(Lcom/callerid/block/mvc/model/sms/ExpandLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/mvc/model/sms/ExpandLayout;->b:Landroid/view/View;

    return-object p0
.end method

.method private d()V
    .locals 0

    iput-object p0, p0, Lcom/callerid/block/mvc/model/sms/ExpandLayout;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/callerid/block/mvc/model/sms/ExpandLayout;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/mvc/model/sms/ExpandLayout;->b:Landroid/view/View;

    new-instance v1, Lcom/callerid/block/mvc/model/sms/ExpandLayout$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/model/sms/ExpandLayout$a;-><init>(Lcom/callerid/block/mvc/model/sms/ExpandLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setViewHeight(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public f(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public setAnimationDuration(J)V
    .locals 0

    return-void
.end method

.method public setViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/mvc/model/sms/ExpandLayout;->c:I

    return-void
.end method
