.class public final Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\r\u001a\u00020\tH\u0016J\u001c\u0010\u000e\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\tH\u0016J\u0014\u0010\u0012\u001a\u00020\u000b2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0013R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;",
        "()V",
        "items",
        "Ljava/util/ArrayList;",
        "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
        "Lkotlin/collections/ArrayList;",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "replaceItems",
        "",
        "ViewHolder",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 199
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;->a:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 12

    .line 19
    check-cast p1, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "items[position]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraph()Lcom/callapp/contacts/activity/analytics/graph/DecoView;

    move-result-object v1

    .line 1033
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCircleGraphDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;

    .line 1034
    new-instance v7, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getColor()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;-><init>(I)V

    .line 1036
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getMinRange()F

    move-result v8

    .line 1037
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getMaxRange()F

    move-result v9

    .line 1038
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getInitialRange()F

    move-result v10

    .line 1039
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getTargetRange()F

    move-result v11

    .line 1035
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a(FFFF)Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;

    move-result-object v7

    .line 1041
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getWidth()F

    move-result v8

    .line 1325
    iput v8, v7, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a:F

    .line 1042
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getInset()Landroid/graphics/PointF;

    move-result-object v8

    .line 1395
    iput-object v8, v7, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->g:Landroid/graphics/PointF;

    .line 1043
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast v8, Landroid/view/animation/Interpolator;

    .line 2385
    iput-object v8, v7, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->f:Landroid/view/animation/Interpolator;

    const-wide/16 v8, 0xbb8

    .line 3333
    iput-wide v8, v7, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->b:J

    .line 1045
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getChartStyle()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    move-result-object v8

    .line 3359
    iput-object v8, v7, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->e:Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$ChartStyle;

    .line 4349
    iput-boolean v6, v7, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->d:Z

    .line 1047
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getSpinClockwise()Z

    move-result v8

    .line 5344
    iput-boolean v8, v7, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->c:Z

    .line 1048
    invoke-virtual {v7}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$Builder;->a()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object v7

    .line 1049
    invoke-virtual {v1, v7}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->a(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;->getUpdateProgress()Z

    move-result v8

    const-string v9, "holder.rootView.findView\u2026id.circleGraphBottomText)"

    const v10, 0x7f0a0233

    if-eqz v8, :cond_3

    .line 1051
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getResourceTextToUpdate()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_2

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 1052
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getRootView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 1053
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1054
    new-instance v4, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$$inlined$let$lambda$1;

    invoke-direct {v4, v8, p1, v7, v3}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$$inlined$let$lambda$1;-><init>(Landroid/widget/TextView;Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;Lcom/callapp/contacts/activity/analytics/circleGraph/data/CircleGraphData;)V

    check-cast v4, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;

    invoke-virtual {v7, v4}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->a(Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem$SeriesItemListener;)V

    .line 1073
    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    :cond_1
    if-nez v4, :cond_0

    .line 1075
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getRootView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1076
    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    goto/16 :goto_0

    .line 1078
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getRootView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1081
    :cond_4
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCircleGraphBackground()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1082
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphBackground()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1083
    instance-of v7, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v7, :cond_5

    .line 1086
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1087
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphBackground()Landroid/widget/ImageView;

    move-result-object v2

    .line 1088
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1089
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCircleGraphBackgroundRadius()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_5

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 1090
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    float-to-int v3, v3

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1091
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v3, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1092
    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 1097
    :cond_5
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCenterText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1098
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphCenterText()Landroid/widget/TextView;

    move-result-object v3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCenterTextSize()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_6

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 1100
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphCenterText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1102
    :cond_6
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphCenterText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1103
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCenterTextColor()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1104
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphCenterText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1108
    :cond_7
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getBottomText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1109
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getBottomTextSize()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_8

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 1110
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphBottomText()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1112
    :cond_8
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getBottomTextColor()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_9

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 1113
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphBottomText()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1115
    :cond_9
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphBottomText()Landroid/widget/TextView;

    move-result-object v3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphBottomText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1117
    :cond_a
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphBottomText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1121
    :goto_1
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getSubBottomText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1122
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphSubBottomText()Landroid/widget/TextView;

    move-result-object v3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphSubBottomText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1124
    :cond_b
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphSubBottomText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1130
    :goto_2
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCircleGraphImage()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1131
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphImage()Landroid/widget/ImageView;

    move-result-object v3

    .line 1132
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1133
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1134
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCircleGraphImageRadius()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_c

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 1135
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    float-to-int v2, v2

    iput v2, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1136
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput v2, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1137
    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    .line 1139
    :cond_c
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCircleGraphImageColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1140
    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1142
    :cond_d
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/widget/ProfilePictureView;->setVisibility(I)V

    .line 1146
    :cond_e
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getCircleGraphProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v2

    .line 1148
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getNeedToShowProfile()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_11

    .line 1149
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCircleGraphProfilePicture()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1151
    invoke-virtual {v2, v6}, Lcom/callapp/contacts/widget/ProfilePictureView;->setVisibility(I)V

    .line 1152
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCircleGraphProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    new-instance v5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v5, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 5371
    iput-boolean v7, v5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 5449
    iput-boolean v7, v5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 1153
    invoke-virtual {v2, v5}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    if-nez v2, :cond_12

    .line 1157
    :cond_f
    invoke-virtual {v2, v6}, Lcom/callapp/contacts/widget/ProfilePictureView;->setVisibility(I)V

    .line 1158
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCircleGraphProfileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 1159
    invoke-virtual {v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a()V

    .line 1160
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCircleGraphProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1162
    :cond_10
    new-instance v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v5, 0x7f0803cf

    invoke-direct {v3, v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    goto :goto_3

    .line 1167
    :cond_11
    invoke-virtual {v2, v5}, Lcom/callapp/contacts/widget/ProfilePictureView;->setVisibility(I)V

    .line 1170
    :cond_12
    :goto_3
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;->getCircleRadius()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_13

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 1171
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    float-to-int v2, v2

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1172
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1173
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->requestLayout()V

    .line 1176
    :cond_13
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;->getRootView()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v2, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$13;

    invoke-direct {v2, p2}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$onBindViewHolder$13;-><init>(Lcom/callapp/contacts/activity/analytics/circleGraph/data/MultiCircleGraphData;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1182
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->a()V

    .line 1183
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    const-string v2, "index"

    .line 1184
    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->getChartSeries(I)Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;

    move-result-object v2

    const-string v3, "chartSeries"

    .line 1185
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object v3

    const-string v5, "chartSeries.seriesItem"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getTargetValue()F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-lez v3, :cond_14

    .line 1187
    new-instance v3, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/ChartSeries;->getSeriesItem()Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/SeriesItem;->getTargetValue()F

    move-result v2

    invoke-direct {v3, v2}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;-><init>(F)V

    .line 1188
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 6265
    iput p2, v3, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->a:I

    .line 6386
    new-instance p2, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    invoke-direct {p2, v3, v4}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;-><init>(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$1;)V

    .line 6439
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/graph/DecoView;->getEventManager()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;

    move-result-object v2

    .line 7048
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v3

    sget-object v5, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-eq v3, v5, :cond_16

    .line 7049
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEffectType()Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    move-result-object v3

    sget-object v5, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    if-eq v3, v5, :cond_16

    .line 7050
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEffectType()Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    move-result-object v3

    sget-object v5, Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;->EFFECT_SPIRAL_OUT_FILL:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    if-ne v3, v5, :cond_15

    goto :goto_5

    :cond_15
    const/4 v3, 0x0

    goto :goto_6

    :cond_16
    :goto_5
    const/4 v3, 0x1

    .line 7052
    :goto_6
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v5

    sget-object v8, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-ne v5, v8, :cond_17

    const/4 v5, 0x1

    goto :goto_7

    :cond_17
    const/4 v5, 0x0

    .line 7054
    :goto_7
    iget-object v8, v2, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;->a:Landroid/os/Handler;

    new-instance v9, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;

    invoke-direct {v9, v2, v3, p2, v5}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;-><init>(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;ZLcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;Z)V

    .line 7100
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getDelay()J

    move-result-wide v2

    .line 7054
    invoke-virtual {v8, v9, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 1193
    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 0

    const-string p2, "parent"

    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/callapp/contacts/databinding/CircleGraphItemBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CircleGraphItemBinding;

    move-result-object p1

    const-string p2, "CircleGraphItemBinding.i\u2026.context), parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    new-instance p2, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter$ViewHolder;-><init>(Lcom/callapp/contacts/activity/analytics/circleGraph/CircleGraphAdapter;Lcom/callapp/contacts/databinding/CircleGraphItemBinding;)V

    .line 19
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$v;

    return-object p2
.end method
