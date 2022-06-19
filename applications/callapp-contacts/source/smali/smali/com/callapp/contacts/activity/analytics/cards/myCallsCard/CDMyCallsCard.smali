.class public Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;
.super Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard<",
        "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;",
        "Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;",
        ">;"
    }
.end annotation


# instance fields
.field private cdMyCallsCardHolder:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;

.field private data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

.field private headerTitle:Ljava/lang/String;

.field private multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

.field private priority:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V
    .locals 1

    const v0, 0x7f0d0094

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/BaseMyCallsCard;-><init>(Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;I)V

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    .line 46
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->priority:I

    return-void
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;)Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->cdMyCallsCardHolder:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->headerTitle:Ljava/lang/String;

    return-object p0
.end method

.method private static getTimeSeparate(J)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    const-wide/16 v0, 0xe10

    .line 199
    div-long v0, p0, v0

    const-wide/16 v2, 0x63

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x18

    .line 202
    div-long v4, v0, v2

    .line 203
    rem-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    const-wide/16 v2, 0x3c

    .line 205
    div-long v6, p0, v2

    rem-long/2addr v6, v2

    .line 206
    rem-long/2addr p0, v2

    .line 207
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static handleDuration(FLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 46

    move/from16 v0, p0

    float-to-long v0, v0

    .line 181
    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->getTimeSeparate(J)Landroid/util/Pair;

    move-result-object v0

    .line 183
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const/4 v8, 0x1

    .line 184
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v13, 0x1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    invoke-static/range {v6 .. v25}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->setDurationText(Landroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJ)V

    return-void

    .line 185
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v13, 0x1

    .line 186
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const/16 v18, 0x1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    invoke-static/range {v6 .. v25}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->setDurationText(Landroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJ)V

    return-void

    .line 188
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v18, 0x1

    .line 189
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const/16 v23, 0x1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object/from16 v21, p7

    move-object/from16 v22, p8

    invoke-static/range {v6 .. v25}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->setDurationText(Landroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJ)V

    return-void

    :cond_2
    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v43, 0x1

    .line 191
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    move-object/from16 v26, p1

    move-object/from16 v27, p2

    move-object/from16 v31, p3

    move-object/from16 v32, p4

    move-object/from16 v36, p5

    move-object/from16 v37, p6

    move-object/from16 v41, p7

    move-object/from16 v42, p8

    invoke-static/range {v26 .. v45}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->setDurationText(Landroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJ)V

    return-void
.end method

.method private static setDurationText(Landroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJLandroid/widget/TextView;Landroid/widget/TextView;ZJ)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p15

    move-object/from16 v7, p16

    const-string v8, "d"

    .line 213
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-eqz p2, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :cond_0
    const/16 v10, 0x8

    .line 216
    :goto_0
    invoke-virtual {p0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    invoke-virtual {p1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "h"

    .line 220
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-static/range {p8 .. p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p7, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 223
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "m"

    .line 226
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-static/range {p13 .. p14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p12, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    .line 229
    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "s"

    .line 232
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-static/range {p18 .. p19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p17, :cond_3

    goto :goto_3

    :cond_3
    const/16 v8, 0x8

    .line 235
    :goto_3
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getCardBgColor()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->isInExpandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060026

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 71
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060084

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getHeaderBackgroundColor()I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->isInExpandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060026

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 85
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060084

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NAME_FIELDS:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->priority:I

    return v0
.end method

.method protected onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)V
    .locals 14

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->isInExpandMode()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 100
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->isShowData()Z

    move-result v3

    const v4, 0x7f0601ec

    if-eqz v3, :cond_2

    .line 101
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v3, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getTotalDuration()F

    move-result v5

    iget-object v6, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->c:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->d:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->e:Landroid/widget/TextView;

    iget-object v9, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->f:Landroid/widget/TextView;

    iget-object v10, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->g:Landroid/widget/TextView;

    iget-object v11, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->h:Landroid/widget/TextView;

    iget-object v12, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->i:Landroid/widget/TextView;

    iget-object v13, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->j:Landroid/widget/TextView;

    invoke-static/range {v5 .. v13}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->handleDuration(FLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getIncomingDuration()F

    move-result v5

    iget-object v6, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->m:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->n:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->o:Landroid/widget/TextView;

    iget-object v9, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->p:Landroid/widget/TextView;

    iget-object v10, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->q:Landroid/widget/TextView;

    iget-object v11, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->r:Landroid/widget/TextView;

    iget-object v12, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->s:Landroid/widget/TextView;

    iget-object v13, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->t:Landroid/widget/TextView;

    invoke-static/range {v5 .. v13}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->handleDuration(FLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getOutgoingDuration()F

    move-result v5

    iget-object v6, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->w:Landroid/widget/TextView;

    iget-object v7, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->x:Landroid/widget/TextView;

    iget-object v8, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->y:Landroid/widget/TextView;

    iget-object v9, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->z:Landroid/widget/TextView;

    iget-object v10, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->A:Landroid/widget/TextView;

    iget-object v11, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->B:Landroid/widget/TextView;

    iget-object v12, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->C:Landroid/widget/TextView;

    iget-object v13, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->D:Landroid/widget/TextView;

    invoke-static/range {v5 .. v13}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->handleDuration(FLandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 110
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->b:Landroid/widget/TextView;

    const v3, 0x7f120727

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->l:Landroid/widget/TextView;

    const v3, 0x7f1204a1

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->v:Landroid/widget/TextView;

    const v3, 0x7f1204a2

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f12064d

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->b:Landroid/widget/TextView;

    const v3, 0x7f060244

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->l:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->v:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->e(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->G:Landroid/widget/TextView;

    const v3, 0x7f120363

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->H:Landroid/widget/TextView;

    const v3, 0x7f120728

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->J:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getTotalCalls()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->G:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->H:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->J:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->I:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getTotalCalls()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setMax(F)V

    .line 127
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->I:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getTotalCalls()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgress(I)V

    .line 128
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->I:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    const v3, 0x7f060192

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressColor(I)V

    .line 130
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->K:Landroid/widget/TextView;

    const v3, 0x7f1203c6

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->M:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getIncomingCalls()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->K:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->M:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->L:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getTotalCalls()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setMax(F)V

    .line 136
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->L:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iget-object v3, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getIncomingCalls()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgress(I)V

    .line 137
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->L:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    const v3, 0x7f06011f

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressColor(I)V

    .line 139
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->N:Landroid/widget/TextView;

    const v3, 0x7f12050b

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->N:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getOutgoingCalls()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->P:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->O:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getTotalCalls()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setMax(F)V

    .line 149
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->O:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getOutgoingCalls()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgress(I)V

    .line 150
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->O:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    const v1, 0x7f0601a7

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressColor(I)V

    goto :goto_1

    .line 152
    :cond_1
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->P:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 157
    :cond_2
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->b(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->c(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f0a0922

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->d(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f0a08ab

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1201d1

    .line 163
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f1201d0

    .line 164
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v1, p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->F:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 170
    :goto_1
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->f(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->onBindViewHolder(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const p2, 0x7f120881

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 272
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->headerTitle:Ljava/lang/String;

    .line 273
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance p2, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$3;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$3;-><init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;)V

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;
    .locals 1

    .line 91
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;-><init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;Landroid/view/View;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->cdMyCallsCardHolder:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;

    move-result-object p1

    return-object p1
.end method

.method public onMultiCardExpended(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->cdMyCallsCardHolder:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;

    if-eqz v0, :cond_1

    .line 244
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;I)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public refreshCardData()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    const/4 v1, 0x1

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;Z)V

    :cond_0
    return-void
.end method

.method protected updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;Z)V
    .locals 2

    .line 257
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->data:Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    .line 258
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;->getContactName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f120881

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->headerTitle:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->multiCardContainer:Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->updateHeaderTitle(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->showCard(Z)V

    return-void
.end method

.method public bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 35
    check-cast p1, Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;->updateCardData(Lcom/callapp/contacts/activity/analytics/data/items/ContactDetailsInsightData;Z)V

    return-void
.end method
