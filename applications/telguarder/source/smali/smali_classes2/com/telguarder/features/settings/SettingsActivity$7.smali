.class Lcom/telguarder/features/settings/SettingsActivity$7;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/settings/SettingsActivity;->setLocationSpinnerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/settings/SettingsActivity;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity$7;->this$0:Lcom/telguarder/features/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 325
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->getAllConstantsAsArray()[Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    move-result-object p1

    .line 326
    aget-object p1, p1, p3

    .line 327
    sget-object p2, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->CUSTOM:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 328
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p2

    sget-object p3, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->CUSTOM:Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    invoke-virtual {p2, p3}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getCallWidgetVerticalOffset(Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->setVerticalOffset(I)V

    .line 330
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveCallWidgetLocation(Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)V

    .line 331
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPopupLocationSettingChanged(Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
