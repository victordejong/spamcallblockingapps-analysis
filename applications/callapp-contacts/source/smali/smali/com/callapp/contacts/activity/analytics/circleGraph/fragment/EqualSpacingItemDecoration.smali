.class public Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, -0x1

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    .line 23
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    .line 24
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 5

    .line 29
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$v;->getAdapterPosition()I

    move-result p2

    .line 30
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$s;->a()I

    move-result p4

    .line 31
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p3

    .line 1041
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 1074
    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1075
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1042
    :goto_0
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->b:I

    .line 1045
    :cond_2
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->b:I

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_3

    goto :goto_3

    .line 1059
    :cond_3
    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_a

    .line 1060
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 1811
    iget p3, p3, Landroidx/recyclerview/widget/GridLayoutManager;->b:I

    .line 1062
    div-int/2addr p4, p3

    .line 1064
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1065
    rem-int v0, p2, p3

    add-int/lit8 v1, p3, -0x1

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1066
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1067
    div-int/2addr p2, p3

    sub-int/2addr p4, v3

    if-ne p2, p4, :cond_9

    iget v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    goto :goto_2

    .line 1053
    :cond_5
    iget p3, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 1054
    iget p3, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 1055
    iget p3, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, v3

    if-ne p2, p4, :cond_6

    .line 1056
    iget v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    :cond_6
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 1047
    :cond_7
    iget p3, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, v3

    if-ne p2, p4, :cond_8

    .line 1048
    iget v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    :cond_8
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 1049
    iget p2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 1050
    iget v2, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/fragment/EqualSpacingItemDecoration;->a:I

    .line 1067
    :cond_9
    :goto_2
    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_a
    :goto_3
    return-void
.end method
