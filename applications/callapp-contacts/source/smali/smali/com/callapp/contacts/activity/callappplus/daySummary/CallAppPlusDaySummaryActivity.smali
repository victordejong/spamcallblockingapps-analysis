.class public Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;
.super Lcom/callapp/contacts/util/BaseAdTransparentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryAdapter$onItemClick;


# instance fields
.field protected a:Landroidx/recyclerview/widget/RecyclerView;

.field protected b:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

.field private e:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V
    .locals 2

    .line 1227
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0601f1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1228
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->d:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->d:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    return-void
.end method

.method public getAdUnitIdRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 236
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getBiddingRemoteConfigName()Ljava/lang/String;
    .locals 1

    .line 232
    sget-object v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getExperimentRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "CallAppPlusSummarySmallExperiments"

    return-object v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d007a

    return v0
.end method

.method public getPreferencesRemoteConfigName()Ljava/lang/String;
    .locals 1

    const-string v0, "CallAppPlusSummaryAdCardPreferences"

    return-object v0
.end method

.method public getThemeResId()I
    .locals 1

    .line 218
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getCallScreenTransparentTheme()I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 55
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "CallAppPlus day summary Screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const p1, 0x7f0a08c1

    .line 1069
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->e:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0681

    .line 1071
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$1;-><init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0680

    .line 1078
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$2;-><init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0247

    .line 1087
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$3;-><init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4;-><init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0a0682

    .line 1112
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$5;-><init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a067f

    .line 1130
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$6;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$6;-><init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1147
    sget-object v0, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/CallAppPlusSummaryDailyWorker$Companion;->getYESTERDAY_CALLAPP_PLUS_LIST()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->c:Ljava/util/List;

    .line 1148
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1149
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->d:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    const p1, 0x7f0a01c2

    .line 1155
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 1156
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 1157
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const p1, 0x7f0a0922

    .line 1159
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f12018e

    .line 1160
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    const v0, 0x7f060088

    .line 1162
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a08ad

    .line 1164
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f12018a

    .line 1165
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0601ec

    .line 1166
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a0ab8

    .line 1168
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v1, 0x7f0a055a

    .line 1169
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a02d9

    .line 1170
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1171
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v3

    const v4, 0x7f0805f0

    const v5, 0x7f0805f1

    if-eqz v3, :cond_0

    const v3, 0x7f060244

    .line 1172
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-static {p1, v5, v6}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const p1, 0x7f060111

    .line 1173
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-static {v2, v4, p1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 1174
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const v3, 0x7f06010e

    .line 1177
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-static {p1, v5, v6}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const p1, 0x7f0600ab

    .line 1178
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-static {v2, v4, p1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 1179
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_0
    const p1, 0x7f0a0688

    .line 1181
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f12045f

    .line 1182
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1185
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->b:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-nez p1, :cond_1

    .line 1186
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$7;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$7;-><init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 1151
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->finish()V

    .line 59
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity;->initAd()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 64
    invoke-super {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onDestroy()V

    .line 65
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "CallAppPlus day summary Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
