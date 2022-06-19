.class public Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static a:I = -0x1


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    sget p1, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->a:I

    iput p1, p0, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget v0, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->a:I

    iput v0, p0, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->b:I

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    sget p3, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->a:I

    iput p3, p0, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->b:I

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 16
    sget p3, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->a:I

    iput p3, p0, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->b:I

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 39
    sget-object v0, Lcom/callapp/contacts/R$styleable;->MaxHeightLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 41
    :try_start_0
    sget v0, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->a:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    throw p2

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 50
    iget v0, p0, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->b:I

    sget v1, Lcom/callapp/contacts/util/ads/MaxHeightFrameLayout;->a:I

    if-eq v0, v1, :cond_0

    const/high16 p2, -0x80000000

    .line 51
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 53
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
