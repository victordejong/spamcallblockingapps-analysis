.class final Lcom/viewpagerindicator/TabPageIndicator$b;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/viewpagerindicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/viewpagerindicator/TabPageIndicator;


# direct methods
.method public constructor <init>(Lcom/viewpagerindicator/TabPageIndicator;Landroid/content/Context;)V
    .locals 1

    .line 264
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$b;->b:Lcom/viewpagerindicator/TabPageIndicator;

    .line 265
    sget p1, Lcom/viewpagerindicator/d$a;->vpiTabPageIndicatorStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/viewpagerindicator/TabPageIndicator$b;I)I
    .locals 0

    .line 261
    iput p1, p0, Lcom/viewpagerindicator/TabPageIndicator$b;->a:I

    return p1
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 1

    .line 270
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 273
    iget-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$b;->b:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {p1}, Lcom/viewpagerindicator/TabPageIndicator;->d(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator$b;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator$b;->b:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {v0}, Lcom/viewpagerindicator/TabPageIndicator;->d(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 274
    iget-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$b;->b:Lcom/viewpagerindicator/TabPageIndicator;

    invoke-static {p1}, Lcom/viewpagerindicator/TabPageIndicator;->d(Lcom/viewpagerindicator/TabPageIndicator;)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_0
    return-void
.end method
