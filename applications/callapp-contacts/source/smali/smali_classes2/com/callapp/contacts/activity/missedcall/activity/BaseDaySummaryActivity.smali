.class public abstract Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;
.super Lcom/callapp/contacts/util/BaseAdTransparentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryAdapter$onItemClick;


# instance fields
.field protected a:Landroidx/recyclerview/widget/RecyclerView;

.field protected b:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

.field private e:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c:Ljava/util/List;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->e:Landroid/widget/LinearLayout;

    const v1, 0x7f0601f1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 236
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->finish()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V
    .locals 7

    .line 2207
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->d:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 2208
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 2210
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    .line 2211
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    .line 2212
    invoke-virtual {v5, v0}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2213
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2214
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    .line 2217
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2218
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    iput-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->d:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    const/4 v2, 0x1

    .line 2219
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;->setNeedToShowBorder(Z)V

    .line 2220
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->b:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->notifyDataSetChanged()V

    .line 2222
    :cond_1
    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    .line 2223
    sget-object v1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/OnMissedCallReminderMenuClickListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2229
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2230
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->a()V

    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->d:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->d:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    return-void
.end method

.method public abstract getAnalyticsTag()Ljava/lang/String;
.end method

.method public abstract getAnalyticsViewTag()Ljava/lang/String;
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d01f3

    return v0
.end method

.method public abstract getSubTitleString(I)Ljava/lang/String;
.end method

.method public getThemeResId()I
    .locals 1

    .line 246
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getCallScreenTransparentTheme()I

    move-result v0

    return v0
.end method

.method protected abstract getTitleText()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 57
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->getAnalyticsViewTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    const p1, 0x7f0a08c1

    .line 1132
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->e:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0681

    .line 1134
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$2;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0680

    .line 1142
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$3;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0247

    .line 1151
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$4;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1158
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0a0684

    .line 1176
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$6;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$6;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0683

    .line 1188
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$7;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$7;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2071
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 2072
    sget-object v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->getYESTERDAY_MISSED_CALL_LIST()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c:Ljava/util/List;

    .line 2073
    sget-object v0, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->getYESTERDAY_MISSED_CALL_TOTAL_NUMBER()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2074
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2075
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->d:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    const v0, 0x7f0a05d6

    .line 2081
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2082
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 2083
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const v0, 0x7f0a0922

    .line 2085
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2086
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->getTitleText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2087
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const v1, 0x7f0a0ab8

    .line 2089
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a055a

    .line 2090
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a02d9

    .line 2091
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2092
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v4

    const v5, 0x7f0805f0

    const v6, 0x7f0805f1

    const v7, 0x7f060244

    if-eqz v4, :cond_0

    const v4, 0x7f060112

    .line 2093
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2094
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v1, v6, v0}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const v0, 0x7f060111

    .line 2095
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v3, v5, v0}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 2096
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 2099
    :cond_0
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f06010e

    .line 2100
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v1, v6, v4}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const v1, 0x7f0600ab

    .line 2101
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v3, v5, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 2102
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_0
    const v0, 0x7f0a0688

    .line 2104
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f12045f

    .line 2105
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0601ec

    .line 2106
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a08ad

    .line 2108
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2109
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->getSubTitleString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2111
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->b:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-nez p1, :cond_1

    .line 2112
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$1;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2124
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->setData(Ljava/lang/Object;)V

    goto :goto_1

    .line 2077
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->finish()V

    .line 61
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->initAd()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 66
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity;->getAnalyticsViewTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Screen"

    const-string v3, "ScreenClose"

    invoke-virtual {v0, v2, v3, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-super {p0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onDestroy()V

    return-void
.end method
