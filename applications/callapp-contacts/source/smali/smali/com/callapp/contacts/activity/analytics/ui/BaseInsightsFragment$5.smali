.class Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$5;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    .line 277
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Insights"

    const-string v3, "ClickInsightsCalendar"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v1, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$5;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->access$100(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 279
    new-instance v1, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;-><init>()V

    .line 280
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$5;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    iget-object v2, v2, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getRealContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$5;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    invoke-static {v3}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;->access$100(Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v9, v0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$5;->a:Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;

    .line 1054
    new-instance v10, Lcom/shehabic/droppy/DroppyMenuPopup$a;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v10, v4, v3}, Lcom/shehabic/droppy/DroppyMenuPopup$a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1055
    new-instance v11, Lcom/shehabic/droppy/b;

    const v3, 0x7f0d005a

    invoke-direct {v11, v3}, Lcom/shehabic/droppy/b;-><init>(I)V

    .line 1056
    invoke-virtual {v11, v2}, Lcom/shehabic/droppy/b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a02de

    .line 1058
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f060026

    .line 1059
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const v3, 0x7f0a07f0

    .line 1061
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f120275

    .line 1062
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a05dc

    .line 1063
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f120274

    .line 1064
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a057c

    .line 1065
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f120273

    .line 1066
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0a07f3

    .line 1068
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a05e4

    .line 1069
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a07f2

    .line 1070
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroid/widget/LinearLayout;

    const v8, 0x7f0a05df

    .line 1071
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Landroid/widget/LinearLayout;

    const v8, 0x7f0a057e

    .line 1072
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Landroid/widget/LinearLayout;

    const/4 v8, 0x7

    .line 1152
    invoke-static {v8}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->getDateText(I)Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;

    move-result-object v8

    const/16 v15, 0x1e

    .line 1153
    invoke-static {v15}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->getDateText(I)Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;

    move-result-object v15

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v10

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->getStartDay()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->getToday()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " / "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->getYear()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->getStartDay()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->getToday()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->getYear()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0601ec

    .line 1075
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1076
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1077
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0601cc

    .line 1078
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1079
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a07f1

    .line 1080
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0a05de

    .line 1081
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/ImageView;

    const v3, 0x7f0a057d

    .line 1082
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1084
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    .line 1085
    sget-object v4, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->WEEK:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-ne v3, v4, :cond_0

    .line 1086
    invoke-static {v0, v10, v2}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1087
    :cond_0
    sget-object v4, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->MONTH:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    if-ne v3, v4, :cond_1

    .line 1088
    invoke-static {v10, v0, v2}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 1091
    :cond_1
    invoke-static {v2, v10, v0}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 1094
    :goto_0
    new-instance v11, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$1;

    move-object v3, v11

    move-object v4, v1

    move-object v5, v0

    move-object v6, v10

    move-object v7, v2

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$1;-><init>(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener;)V

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    new-instance v11, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$2;

    move-object v3, v11

    move-object v5, v10

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$2;-><init>(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener;)V

    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    new-instance v11, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;

    move-object v3, v11

    move-object v5, v2

    move-object v6, v10

    move-object v7, v0

    invoke-direct/range {v3 .. v8}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;-><init>(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener;)V

    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p1

    move-object/from16 v2, v16

    .line 1134
    invoke-virtual {v0, v2}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->a(Lcom/shehabic/droppy/d;)Lcom/shehabic/droppy/DroppyMenuPopup$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shehabic/droppy/DroppyMenuPopup$a;->c()Lcom/shehabic/droppy/DroppyMenuPopup;

    move-result-object v0

    iput-object v0, v1, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->a:Lcom/shehabic/droppy/DroppyMenuPopup;

    .line 1135
    iget-object v0, v1, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->a:Lcom/shehabic/droppy/DroppyMenuPopup;

    invoke-virtual {v0}, Lcom/shehabic/droppy/DroppyMenuPopup;->b()V

    return-void
.end method
