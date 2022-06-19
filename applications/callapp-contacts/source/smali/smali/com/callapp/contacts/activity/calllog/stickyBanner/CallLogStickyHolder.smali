.class public Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# instance fields
.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 40
    iput p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->s:I

    const/4 p1, 0x3

    .line 41
    iput p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->t:I

    const/4 p1, 0x2

    .line 42
    iput p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->u:I

    const/16 p1, 0xf

    .line 43
    iput p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->v:I

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;",
            ">;)",
            "Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 149
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    .line 150
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getOverWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 154
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static l()Z
    .locals 7

    .line 163
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fz:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 165
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->go:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 168
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fa:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ib:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ib:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ib:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    :cond_1
    return v2

    .line 172
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ib:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ib:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ib:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    const-wide/16 v5, 0xf

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2

    :cond_5
    return v1
.end method

.method private static m()Z
    .locals 7

    .line 190
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 194
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 199
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/callapp/contacts/util/ads/AdUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 203
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gm:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ah:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 205
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gm:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 206
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gp:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    return v2

    .line 210
    :cond_4
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gn:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->gp:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    cmp-long v0, v3, v5

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 212
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gp:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    return v2

    .line 216
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->gp:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    cmp-long v0, v3, v5

    if-ltz v0, :cond_7

    .line 217
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gp:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    return v2

    :cond_7
    :goto_2
    return v1
.end method

.method private static n()Z
    .locals 1

    .line 225
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gn:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dN:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dO:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;)V
    .locals 17

    move-object/from16 v0, p0

    .line 50
    iget-object v1, v0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a01b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01ba

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a01b9

    .line 52
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a04d6

    .line 53
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a0243

    .line 54
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a01b8

    .line 55
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0a0222

    .line 56
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f120195

    .line 57
    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->l()Z

    move-result v9

    const v11, 0x7f0805d2

    const/4 v12, 0x0

    const/16 v13, 0x8

    if-eqz v9, :cond_2

    .line 60
    sget-object v9, Lcom/callapp/contacts/manager/preferences/Prefs;->ic:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v9}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    .line 61
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v9

    const-string v14, "Permissions"

    const-string v15, "ViewDefaultDialerStickyBanner"

    invoke-virtual {v9, v14, v15}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v9, Lcom/callapp/contacts/manager/preferences/Prefs;->ic:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v14}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 64
    :cond_0
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v9

    const/4 v14, 0x2

    const v15, 0x7f0805aa

    if-eqz v9, :cond_1

    const v9, 0x7f0601de

    .line 66
    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v9

    const v16, 0x7f0601e0

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v10

    invoke-static {v1, v15, v9, v10, v14}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_1
    const v9, 0x7f0601dd

    .line 68
    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v9

    const v10, 0x7f0601df

    invoke-static {v10}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v10

    invoke-static {v1, v15, v9, v10, v14}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 70
    :goto_0
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    const v6, 0x7f060088

    .line 73
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-static {v7, v11, v6}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const v6, 0x7f120197

    .line 74
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f120196

    .line 75
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f060244

    invoke-static {v6, v8}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v6, 0x7f0601ec

    .line 78
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0601cc

    .line 79
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f06010d

    .line 80
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 81
    new-instance v2, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$1;

    invoke-direct {v2, v0, v5, v1}, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$1;-><init>(Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080513

    .line 92
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    new-instance v2, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$2;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v7, v3, v1}, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$2;-><init>(Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;Landroid/widget/TextView;Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;Landroid/view/View;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 106
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->m()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "stickyBannerCallLogConfig"

    .line 107
    invoke-static {v8}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JSONStickyDataObject;->getDataFromRemoteConfig(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 108
    invoke-static {v8}, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->a(Ljava/util/List;)Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 111
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v9

    const-string v10, "In-app promotion"

    const-string v14, "CreateListStickyBanner"

    invoke-virtual {v9, v10, v14}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getAction()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 115
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f060244

    .line 116
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-static {v7, v11, v5}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 117
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getAction()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->getActionText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v5, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$3;

    invoke-direct {v5, v0, v7, v1, v8}, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$3;-><init>(Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;Landroid/widget/TextView;Landroid/view/View;Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_1
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 136
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v2

    float-to-double v2, v2

    .line 137
    new-instance v5, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getBackground()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v5, v6, v7, v9}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    double-to-int v2, v2

    sget-object v3, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;->ALL:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    invoke-virtual {v5, v2, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 138
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getImg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v4, v3, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 1376
    iput-boolean v1, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 138
    invoke-virtual {v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void

    .line 140
    :cond_4
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 143
    :cond_5
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
