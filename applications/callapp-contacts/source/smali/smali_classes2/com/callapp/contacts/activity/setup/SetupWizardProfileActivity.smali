.class public Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;
.super Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;


# static fields
.field private static a:Z = false


# instance fields
.field private b:Landroid/widget/ViewSwitcher;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private l:Ljava/lang/Runnable;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->h:Ljava/util/List;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->j:Z

    .line 100
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Landroid/widget/ViewSwitcher;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->b:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->k:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->l:Ljava/lang/Runnable;

    return-object p1
.end method

.method private synthetic a(Landroid/app/Activity;)V
    .locals 1

    .line 638
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->fromNumRep(I)Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    move-result-object p1

    .line 639
    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->CALLAPP:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->SINCH:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->getUserConsent()V

    return-void

    .line 640
    :cond_1
    :goto_0
    sget-object p1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->WELCOME:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    .line 641
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 642
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 643
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 644
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->finish()V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0a0877

    .line 146
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Landroid/widget/TextView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->i()V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static d()Z
    .locals 2

    .line 480
    sget-boolean v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v0

    sget-object v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->CORE_PERMISSIONS:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 481
    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v0

    sget-object v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->SETUP_COMPLETED_STAGE:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic e()Landroid/util/Pair;
    .locals 7

    .line 3375
    invoke-static {}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor;->getPhoneAndCountry()Landroid/util/Pair;

    move-result-object v0

    .line 3376
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;

    .line 3377
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;

    const-string v3, "Registration"

    if-eqz v1, :cond_0

    .line 3380
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->isValidated()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;Z)V

    .line 3381
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Extracted phone, reliable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedPhone;->isReliable()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3383
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v4, "Could not extract phone"

    invoke-virtual {v1, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v2, :cond_1

    .line 3387
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Could not extract country"

    invoke-virtual {v1, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3389
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Extracted country, reliable: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;->isReliable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;->isReliable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3391
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aP:Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;->getCountryISO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;->set(Ljava/lang/String;)V

    goto :goto_1

    .line 3393
    :cond_2
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aQ:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/setup/PhoneAndCountryDeviceExtractor$ExtractedCountry;->getCountryISO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->n()V

    return-void
.end method

.method static synthetic f()V
    .locals 2

    .line 4614
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 4616
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4618
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4620
    invoke-static {}, Lcom/callapp/contacts/receiver/WifiStateReceiver;->a()V

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->getUserConsent()V

    return-void
.end method

.method static synthetic g()V
    .locals 2

    .line 5589
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->X:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;->d(Ljava/lang/String;)Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5591
    iget-object v1, v0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5592
    iget-object v0, v0, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager$UTM;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->sendPointsToReferer(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V
    .locals 8

    .line 4248
    sget-object v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->COUNTRY:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    .line 4249
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Saw country screen"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a055c

    .line 4250
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 4251
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a02bd

    .line 4252
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4253
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x7f060113

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v1, 0x7f0a02bb

    .line 4254
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 4256
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->aQ:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4257
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 4262
    :goto_0
    new-instance v3, Lcom/callapp/contacts/activity/setup/CountryList;

    invoke-direct {v3, v2, v4}, Lcom/callapp/contacts/activity/setup/CountryList;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4264
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/setup/CountryList;->getCountryList()Ljava/util/List;

    move-result-object v2

    .line 4265
    new-instance v4, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "NONE"

    const-string v7, "N/A"

    invoke-direct {v4, v6, v7, v6, v5}, Lcom/callapp/contacts/activity/setup/CountryList$CountryListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4266
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4267
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090003

    invoke-direct {v5, p0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4269
    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 4270
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/setup/CountryList;->getAutoSelectedIndex()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4272
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 4275
    :cond_1
    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 4277
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 4280
    :cond_2
    :goto_1
    new-instance v2, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$3;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;Landroid/widget/Spinner;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private getUserConsent()V
    .locals 4

    .line 307
    sget-object v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->USER_CONSENT:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    .line 311
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "+"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "+82"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 313
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 316
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 321
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aP:Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aP:Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CountryIsoPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "KR"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 327
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bg:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 328
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;

    new-instance v2, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$4;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$4;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    invoke-direct {v1, v2}, Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup;-><init>(Lcom/callapp/contacts/manager/popup/PrivacyConsentDialogPopup$Accept;)V

    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 336
    :cond_3
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->j()V

    return-void
.end method

.method private h()V
    .locals 6

    .line 155
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Wizard profile screen"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 156
    sget-object v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->SETUP_COMPLETED_STAGE:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.callapp.contacts.FROM_SUB_ACTIVITY"

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 162
    new-instance v0, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$HqDkHKAin2rEzJ3BwYIggMM92m0;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$HqDkHKAin2rEzJ3BwYIggMM92m0;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->j()V

    return-void
.end method

.method private i()V
    .locals 1

    .line 227
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->m()V

    .line 228
    new-instance v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    .line 244
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->m:Z

    return p0
.end method

.method private j()V
    .locals 5

    .line 341
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->m()V

    .line 342
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fK:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->fromNumRep(I)Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    move-result-object v1

    .line 344
    sget-object v2, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->USER_GOOGLE:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v0

    .line 346
    new-instance v1, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$5;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    .line 367
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->a(Landroid/app/Activity;)V

    return-void

    .line 369
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Registration"

    const-string v4, "Registration request starts"

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v2, Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-direct {v2, v0, v1, p0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;-><init>(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->a()V

    return-void
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->l()V

    return-void
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->k:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object p0
.end method

.method private k()V
    .locals 2

    .line 536
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 537
    invoke-static {}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a()V

    .line 538
    invoke-static {}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->a()V

    .line 540
    new-instance v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$7;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$7;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    .line 546
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$7;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 548
    invoke-static {}, Lcom/callapp/contacts/util/servermessage/ValidateClientTask;->b()V

    .line 550
    new-instance v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$8;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$8;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    .line 571
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$8;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 574
    new-instance v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$9;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$9;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    .line 579
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$9;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 581
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->n()V

    .line 583
    sget-object v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->SETUP_COMPLETED_STAGE:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    .line 584
    invoke-static {}, Lcom/callapp/contacts/sync/service/RealSyncService;->d()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 598
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$0P2nQvNdTIk3iFQNqpxsV1oSLJ4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$0P2nQvNdTIk3iFQNqpxsV1oSLJ4;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->h()V

    return-void
.end method

.method public static synthetic lambda$0P2nQvNdTIk3iFQNqpxsV1oSLJ4(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->o()V

    return-void
.end method

.method public static synthetic lambda$HqDkHKAin2rEzJ3BwYIggMM92m0(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->p()V

    return-void
.end method

.method public static synthetic lambda$n-22gBjGbmojN_zyz7L_Mhdupr0(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private m()V
    .locals 2

    .line 653
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$11;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private n()V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->k:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    const/4 v0, 0x0

    .line 673
    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->k:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-void
.end method

.method private synthetic o()V
    .locals 2

    .line 599
    new-instance v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$10;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$10;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    .line 608
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 609
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a(Z)V

    return-void
.end method

.method private synthetic p()V
    .locals 2

    .line 163
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fK:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    iget-object v1, v0, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 164
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    iget-object v1, v0, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->finish()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 492
    sget-object v0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->REGISTRATION_COMPLETED:Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->setCurrentSetupStage(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;)V

    .line 493
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->fromNumRep(I)Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name:Ljava/lang/String;

    .line 495
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aX:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 497
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Registration"

    const-string v3, "Registration request success"

    invoke-virtual {v1, v2, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;)V

    .line 501
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->j:Z

    if-eqz v1, :cond_0

    .line 502
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v3, "Registration success from login reminder"

    invoke-virtual {v1, v2, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aY:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->m:Z

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    :cond_2
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->k()V

    :cond_3
    const-string v0, "onBoardingPaymentConfig"

    .line 508
    invoke-static {v0}, Lcom/callapp/contacts/util/JSONGroupTypePreference;->getGroupTypePreference(Ljava/lang/String;)Lcom/callapp/contacts/util/JSONGroupType;

    move-result-object v0

    .line 510
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$6;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;Lcom/callapp/contacts/util/JSONGroupType;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/util/http/HttpRequest;)V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 9

    .line 627
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Registration request error"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->n()V

    .line 631
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v1, 0x7f1204fb

    .line 633
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f1205c5

    .line 634
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1204ea

    .line 635
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$n-22gBjGbmojN_zyz7L_Mhdupr0;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/activity/setup/-$$Lambda$SetupWizardProfileActivity$n-22gBjGbmojN_zyz7L_Mhdupr0;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 631
    invoke-virtual {v0, p0, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 678
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Registration request error from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Registration"

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->b()V

    return-void
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 455
    sput-boolean v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a:Z

    .line 456
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->finish()V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d014b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 401
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    const v0, 0x10a0001

    const/high16 v1, 0x10a0000

    const/16 v2, 0x3039

    if-ne p1, v2, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->n()V

    if-ne p2, p3, :cond_0

    .line 406
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->overridePendingTransition(II)V

    .line 407
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->i()V

    :cond_0
    const/16 v2, 0x6d

    if-ne p1, v2, :cond_1

    .line 412
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->n()V

    if-ne p2, p3, :cond_1

    .line 414
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->overridePendingTransition(II)V

    .line 415
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->l()V

    :cond_1
    const/16 p2, 0x6e

    if-ne p1, p2, :cond_2

    .line 419
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->n()V

    .line 420
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->k()V

    .line 421
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->overridePendingTransition(II)V

    .line 422
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->l()V

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 430
    sget-object v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$12;->a:[I

    invoke-static {}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;->getCurrentSetupStage()Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/setup/SetupWizardActivity$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->h()V

    goto :goto_0

    .line 438
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120621

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void

    .line 432
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 434
    invoke-static {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->a(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 104
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p1

    const-string v0, "usePayWall"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->m:Z

    const/4 p1, 0x1

    .line 106
    sput-boolean p1, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a:Z

    .line 107
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Wizard_profile_picture_screen_N"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->fromNumRep(I)Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    iget-object v0, v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name:Ljava/lang/String;

    const-string v3, "Registration"

    invoke-virtual {v2, v3, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x7f0a06ef

    .line 1123
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->b:Landroid/widget/ViewSwitcher;

    .line 1124
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f08058f

    invoke-direct {v2, v1, v3, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    const v1, 0x7f060244

    .line 1125
    invoke-static {p0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v1

    .line 1126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1354
    iput-object v0, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 1126
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->b:Landroid/widget/ViewSwitcher;

    .line 1386
    iput-object v0, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d:Landroid/widget/ViewSwitcher;

    .line 1128
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(II)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    .line 2371
    iput-boolean p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 1130
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    const p1, 0x7f0a0922

    .line 1132
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->d:Landroid/widget/TextView;

    const p1, 0x7f0a08be

    .line 1133
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->e:Landroid/widget/TextView;

    const p1, 0x7f0a014f

    .line 1134
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->f:Landroid/widget/TextView;

    const p1, 0x7f0a0a90

    .line 1136
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->c:Landroid/widget/TextView;

    const p1, 0x7f0a0878

    .line 1137
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->g:Landroid/widget/Button;

    const v0, 0x7f120684

    .line 1138
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 1139
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a(Z)V

    .line 3170
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f12081d

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3171
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f120622

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3172
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f12081b

    .line 3173
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3176
    :cond_0
    new-instance v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;-><init>(Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;)V

    .line 3223
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    const v0, 0x7f0a087b

    .line 112
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getStatusBarHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 113
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 116
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CAME_FROM_SETUP_REMINDER_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->j:Z

    .line 117
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->b:Landroid/widget/ViewSwitcher;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 118
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 473
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->n()V

    .line 474
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Wizard_profile_picture_screen_N"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 476
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 461
    sput-boolean v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a:Z

    .line 462
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 467
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onResume()V

    const/4 v0, 0x1

    .line 468
    sput-boolean v0, Lcom/callapp/contacts/activity/setup/SetupWizardProfileActivity;->a:Z

    return-void
.end method

.method public shouldAssertPermissions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
