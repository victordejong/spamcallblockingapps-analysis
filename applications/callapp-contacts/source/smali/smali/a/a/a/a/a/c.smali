.class public final La/a/a/a/a/c;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroidx/recyclerview/widget/RecyclerView$v;",
            ">;"
        }
    .end annotation
.end field

.field private b:La/a/a/a/a/b;

.field private c:Z


# direct methods
.method public constructor <init>(La/a/a/a/a/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, La/a/a/a/a/c;-><init>(La/a/a/a/a/b;Z)V

    return-void
.end method

.method public constructor <init>(La/a/a/a/a/b;Z)V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    .line 54
    iput-object p1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/b;

    .line 55
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La/a/a/a/a/c;->a:Ljava/util/Map;

    .line 56
    iput-boolean p2, p0, La/a/a/a/a/c;->c:Z

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 1

    .line 206
    iget-boolean v0, p0, La/a/a/a/a/c;->c:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 8

    .line 115
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/b;

    invoke-interface {v0, p2}, La/a/a/a/a/b;->getHeaderId(I)J

    move-result-wide v0

    .line 117
    iget-object v2, p0, La/a/a/a/a/c;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-object p1, p0, La/a/a/a/a/c;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$v;

    return-object p1

    .line 120
    :cond_0
    iget-object v2, p0, La/a/a/a/a/c;->b:La/a/a/a/a/b;

    invoke-interface {v2, p1}, La/a/a/a/a/b;->a(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v2

    .line 121
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    .line 124
    iget-object v4, p0, La/a/a/a/a/c;->b:La/a/a/a/a/b;

    invoke-interface {v4, v2, p2}, La/a/a/a/a/b;->a(Landroidx/recyclerview/widget/RecyclerView$v;I)V

    .line 126
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 127
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 130
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    invoke-static {p2, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 132
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result p1

    add-int/2addr v6, p1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    invoke-static {v4, v6, p1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    .line 134
    invoke-virtual {v3, p2, p1}, Landroid/view/View;->measure(II)V

    .line 135
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {v3, v5, v5, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 137
    iget-object p1, p0, La/a/a/a/a/c;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private a(I)Z
    .locals 4

    .line 111
    iget-object v0, p0, La/a/a/a/a/c;->b:La/a/a/a/a/b;

    invoke-interface {v0, p1}, La/a/a/a/a/b;->getHeaderId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_4

    .line 152
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 153
    invoke-static {v8}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroid/view/View;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 155
    invoke-direct {v0, v9}, La/a/a/a/a/c;->a(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 156
    iget-object v11, v0, La/a/a/a/a/c;->b:La/a/a/a/a/b;

    invoke-interface {v11, v9}, La/a/a/a/a/b;->getHeaderId(I)J

    move-result-wide v11

    cmp-long v13, v11, v5

    if-eqz v13, :cond_3

    .line 160
    invoke-direct {v0, v2, v9}, La/a/a/a/a/c;->a(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v5

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 163
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1177
    invoke-direct {v0, v5}, La/a/a/a/a/c;->a(Landroid/view/View;)I

    move-result v13

    .line 1178
    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v8, v13

    if-nez v7, :cond_2

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v14

    .line 1181
    iget-object v15, v0, La/a/a/a/a/c;->b:La/a/a/a/a/b;

    invoke-interface {v15, v9}, La/a/a/a/a/b;->getHeaderId(I)J

    move-result-wide v15

    const/4 v9, 0x1

    :goto_1
    if-ge v9, v14, :cond_1

    .line 1184
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroid/view/View;)I

    move-result v4

    if-eq v4, v10, :cond_0

    .line 1186
    iget-object v10, v0, La/a/a/a/a/c;->b:La/a/a/a/a/b;

    invoke-interface {v10, v4}, La/a/a/a/a/b;->getHeaderId(I)J

    move-result-wide v18

    cmp-long v10, v18, v15

    if-eqz v10, :cond_0

    .line 1188
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1189
    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v0, v2, v4}, La/a/a/a/a/c;->a(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v4

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v13, v4

    sub-int/2addr v9, v13

    if-gez v9, :cond_1

    const/4 v4, 0x0

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    const/4 v10, -0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1199
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    move v9, v8

    :goto_3
    int-to-float v6, v6

    int-to-float v8, v9

    .line 165
    invoke-virtual {v1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 167
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 168
    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 169
    invoke-virtual {v5, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-wide v5, v11

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 6

    .line 64
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->d(Landroid/view/View;)I

    move-result p2

    const/4 p4, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 68
    invoke-direct {p0, p2}, La/a/a/a/a/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1082
    :cond_0
    iget-object v1, p0, La/a/a/a/a/c;->b:La/a/a/a/a/b;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v1, v2}, La/a/a/a/a/b;->getHeaderId(I)J

    move-result-wide v1

    iget-object v3, p0, La/a/a/a/a/c;->b:La/a/a/a/a/b;

    invoke-interface {v3, p2}, La/a/a/a/a/b;->getHeaderId(I)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 71
    invoke-direct {p0, p3, p2}, La/a/a/a/a/c;->a(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object p2

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    .line 72
    invoke-direct {p0, p2}, La/a/a/a/a/c;->a(Landroid/view/View;)I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 75
    :goto_1
    invoke-virtual {p1, p4, p2, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
