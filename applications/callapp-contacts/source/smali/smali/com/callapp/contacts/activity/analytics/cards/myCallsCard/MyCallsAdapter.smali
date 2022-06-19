.class public Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;,
        Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;",
            ">;",
            "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->b:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;)Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener;

    return-object p0
.end method

.method private static a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;ZJZJZJZJ)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->u:Landroid/widget/TextView;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->t:Landroid/widget/TextView;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    const/16 p3, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->w:Landroid/widget/TextView;

    const-string v0, "h"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->v:Landroid/widget/TextView;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    .line 144
    :goto_1
    iget-object p4, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->v:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object p4, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->w:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->y:Landroid/widget/TextView;

    const-string p4, "m"

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->x:Landroid/widget/TextView;

    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p7, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    .line 150
    :goto_2
    iget-object p4, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->x:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object p4, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->y:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->A:Landroid/widget/TextView;

    const-string p4, "s"

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->z:Landroid/widget/TextView;

    invoke-static {p11, p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p10, :cond_3

    goto :goto_3

    :cond_3
    const/16 p2, 0x8

    .line 156
    :goto_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->z:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->A:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 21

    move-object/from16 v0, p0

    .line 23
    move-object/from16 v14, p1

    check-cast v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;

    .line 1049
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->b:Ljava/util/List;

    move/from16 v2, p2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;

    .line 1050
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1054
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->r:Landroid/widget/TextView;

    iget-object v2, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->D:Landroid/widget/LinearLayout;

    const v2, 0x7f080568

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1056
    iget v1, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->b:I

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    .line 1057
    iget-object v2, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->D:Landroid/widget/LinearLayout;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 1059
    iget-object v1, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->f:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    sget-object v2, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->REGULAR:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-eq v1, v2, :cond_1

    iget-object v1, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->f:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    sget-object v2, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->EMPTY:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1113
    :cond_0
    iget-object v1, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->f:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    sget-object v2, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->BLOCK:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    if-ne v1, v2, :cond_b

    .line 1114
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1115
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1116
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->G:Landroid/widget/TextView;

    const v2, 0x7f1206e5

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->D:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$1;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 1060
    :cond_1
    :goto_0
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1061
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1062
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->s:Landroid/widget/ImageView;

    iget v2, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1065
    iget-wide v1, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->d:J

    const-wide/16 v3, 0xe10

    div-long/2addr v1, v3

    const-wide/16 v3, 0x63

    const-wide/16 v16, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    const-wide/16 v3, 0x18

    .line 1068
    div-long v5, v1, v3

    .line 1069
    rem-long/2addr v1, v3

    move-wide v3, v5

    move-wide v6, v1

    goto :goto_1

    :cond_2
    move-wide v6, v1

    move-wide/from16 v3, v16

    .line 1071
    :goto_1
    iget-wide v1, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->d:J

    const-wide/16 v8, 0x3c

    div-long/2addr v1, v8

    rem-long v10, v1, v8

    .line 1072
    iget-wide v1, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->d:J

    rem-long v18, v1, v8

    cmp-long v1, v6, v16

    if-nez v1, :cond_3

    cmp-long v1, v10, v16

    if-nez v1, :cond_3

    cmp-long v1, v18, v16

    if-nez v1, :cond_3

    .line 1075
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1076
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1077
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->H:Landroid/widget/TextView;

    const v2, 0x7f1204c9

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->H:Landroid/widget/TextView;

    const v2, 0x7f060244

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    goto :goto_2

    .line 1081
    :cond_3
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1082
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->H:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 v1, 0x1

    cmp-long v5, v3, v1

    if-ltz v5, :cond_4

    const/4 v2, 0x1

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/16 v20, 0x0

    move-object v1, v14

    move-wide v9, v10

    move/from16 v11, v20

    const/4 v0, 0x0

    move-wide/from16 v12, v18

    .line 1084
    invoke-static/range {v1 .. v13}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;ZJZJZJZJ)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    cmp-long v5, v6, v1

    if-ltz v5, :cond_5

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x1

    const/4 v12, 0x0

    move-object v1, v14

    move-wide v9, v10

    move v11, v12

    move-wide/from16 v12, v18

    .line 1086
    invoke-static/range {v1 .. v13}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;ZJZJZJZJ)V

    goto :goto_2

    :cond_5
    cmp-long v5, v10, v1

    if-ltz v5, :cond_6

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x1

    move-object v1, v14

    move-wide v9, v10

    move v11, v12

    move-wide/from16 v12, v18

    .line 1089
    invoke-static/range {v1 .. v13}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;ZJZJZJZJ)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    move-object v1, v14

    move-wide v9, v10

    move v11, v12

    move-wide/from16 v12, v18

    .line 1091
    invoke-static/range {v1 .. v13}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;ZJZJZJZJ)V

    .line 1095
    :goto_2
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->LIFE:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-eq v1, v2, :cond_a

    iget-wide v1, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->e:J

    cmp-long v3, v1, v16

    if-nez v3, :cond_7

    goto :goto_5

    .line 1100
    :cond_7
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1101
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->C:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1102
    iget-wide v1, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->e:J

    const-wide/32 v3, 0x1869f

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-gtz v6, :cond_8

    .line 1103
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->B:Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/Object;

    iget-wide v3, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "%d%%"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1106
    :cond_8
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->B:Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/Object;

    iget-wide v3, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->e:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "%2.0e%%"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    :goto_3
    iget-wide v0, v15, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;->e:J

    cmp-long v2, v0, v16

    if-ltz v2, :cond_9

    const v0, 0x7f0802e2

    goto :goto_4

    :cond_9
    const v0, 0x7f0802e1

    .line 1109
    :goto_4
    iget-object v1, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->C:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 1096
    :cond_a
    :goto_5
    iget-object v0, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->B:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1097
    iget-object v0, v14, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    :goto_6
    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    .line 2043
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0213

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2044
    new-instance p2, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$MyCallsHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setItemsData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;",
            ">;)V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->notifyDataSetChanged()V

    return-void
.end method
