.class public Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;,
        Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener;
    }
.end annotation


# instance fields
.field a:Lcom/shehabic/droppy/DroppyMenuPopup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->a:Lcom/shehabic/droppy/DroppyMenuPopup;

    return-void
.end method

.method static a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x4

    .line 147
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;)V
    .locals 1

    .line 1139
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->a:Lcom/shehabic/droppy/DroppyMenuPopup;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1140
    invoke-virtual {p0, v0}, Lcom/shehabic/droppy/DroppyMenuPopup;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 28
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static getDateText(I)Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;
    .locals 5

    .line 159
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    neg-int p0, p0

    const/4 v4, 0x6

    .line 165
    invoke-virtual {v2, v4, p0}, Ljava/util/Calendar;->add(II)V

    .line 166
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 167
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 169
    new-instance v1, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;

    invoke-direct {v1, v3, v0, p0}, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
