.class public Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->a:Landroid/content/Context;

    return-void
.end method

.method private b(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 4

    .line 48
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->getHorizontalSpace()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->getItemCount()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->getVerticalSpace()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->getItemCount()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getHorizontalSpace()I
    .locals 2

    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    move-result v0

    const/high16 v1, 0x42100000    # 36.0f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getVerticalSpace()I
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 34
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method public final b()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 29
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/SpanningLinearLayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
