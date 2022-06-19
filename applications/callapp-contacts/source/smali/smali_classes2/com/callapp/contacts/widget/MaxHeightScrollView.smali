.class public Lcom/callapp/contacts/widget/MaxHeightScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Lcom/callapp/contacts/widget/OnSizeChangedListener;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/MaxHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/MaxHeightScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/MaxHeightScrollView;->c:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 29
    sget-object v2, Lcom/callapp/contacts/R$styleable;->MaxHeightScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 30
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    .line 31
    iget-boolean p3, p0, Lcom/callapp/contacts/widget/MaxHeightScrollView;->c:Z

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/callapp/contacts/widget/MaxHeightScrollView;->c:Z

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move v1, p2

    .line 35
    :cond_0
    iput v1, p0, Lcom/callapp/contacts/widget/MaxHeightScrollView;->a:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 40
    iget v0, p0, Lcom/callapp/contacts/widget/MaxHeightScrollView;->a:I

    if-lez v0, :cond_0

    const/high16 p2, -0x80000000

    .line 41
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 52
    iget-object p1, p0, Lcom/callapp/contacts/widget/MaxHeightScrollView;->b:Lcom/callapp/contacts/widget/OnSizeChangedListener;

    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1, p2}, Lcom/callapp/contacts/widget/OnSizeChangedListener;->a(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/MaxHeightScrollView;->c:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnSizeChangedListener(Lcom/callapp/contacts/widget/OnSizeChangedListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/callapp/contacts/widget/MaxHeightScrollView;->b:Lcom/callapp/contacts/widget/OnSizeChangedListener;

    return-void
.end method
