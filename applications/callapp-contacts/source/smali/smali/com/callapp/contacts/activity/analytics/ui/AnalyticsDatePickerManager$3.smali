.class Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener;

.field final synthetic e:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;->e:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;->c:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;->d:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 124
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;->e:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->a(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;)V

    .line 125
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Insights"

    const-string v1, "ClickInsightsCalendarLifetime"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gG:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->LIFE:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 127
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;->c:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager;->b(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 128
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$3;->d:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener;

    if-eqz p1, :cond_0

    .line 129
    sget-object v0, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;->LIFE:Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$OnAnalyticsDatePickerDialogItemClickListener;->onDatePick(Lcom/callapp/contacts/activity/analytics/ui/AnalyticsDatePickerManager$DatePicker;)V

    :cond_0
    return-void
.end method
