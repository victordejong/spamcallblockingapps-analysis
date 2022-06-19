.class Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Spinner;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$3;->c:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$3;->a:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$3;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 283
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "Registration"

    const-string p4, "Clicked OK in country screen"

    invoke-virtual {p1, p2, p4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x11

    .line 295
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const p4, 0x7f120621

    const/4 p5, -0x1

    if-eq p3, p5, :cond_1

    .line 285
    iget-object p5, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$3;->a:Landroid/widget/Spinner;

    invoke-virtual {p5, p3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;

    .line 286
    invoke-virtual {p3}, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->getDisplayedCountry()Ljava/lang/String;

    move-result-object p5

    const-string v0, "none"

    invoke-static {v0, p5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 287
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aP:Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;->getCountryCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;->set(Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$3;->b:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 289
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p3, "Succesfully completed country screen"

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$3;->c:Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->f(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    return-void

    .line 292
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p2

    invoke-static {p4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 295
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p2

    invoke-static {p4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 301
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f120621

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
