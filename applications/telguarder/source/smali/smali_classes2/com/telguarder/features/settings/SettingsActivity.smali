.class public Lcom/telguarder/features/settings/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.java"


# static fields
.field static active:Z = false


# instance fields
.field private mAppVersionValueTextView:Landroid/widget/TextView;

.field private mDebugAdLayout:Landroid/widget/LinearLayout;

.field private mMessageContainer:Landroid/widget/LinearLayout;

.field private mPolicyViewLink:Landroid/widget/TextView;

.field private mPrivacyUrl:Ljava/lang/String;

.field private mSettingsOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telguarder/features/settings/SettingsOption;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsOptionsContainer:Landroid/widget/LinearLayout;

.field private mSpinnerOfLocation:Landroid/widget/Spinner;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private final preloadAnalyseWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 184
    new-instance v0, Lcom/telguarder/features/settings/SettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/telguarder/features/settings/SettingsActivity$5;-><init>(Lcom/telguarder/features/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->preloadAnalyseWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/settings/SettingsActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/settings/SettingsActivity;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mPrivacyUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/telguarder/features/settings/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity;->mPrivacyUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/telguarder/features/settings/SettingsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mPolicyViewLink:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/settings/SettingsActivity;)Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/telguarder/features/settings/SettingsActivity;->preloadAnalyseWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/telguarder/features/settings/SettingsActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/telguarder/features/settings/SettingsActivity;->resetPolicyLink()V

    return-void
.end method

.method static synthetic access$500(Lcom/telguarder/features/settings/SettingsActivity;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/telguarder/features/settings/SettingsActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/settings/SettingsActivity;->saveChangingSwitchSate(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/telguarder/features/settings/SettingsActivity;Lcom/telguarder/features/settings/SettingsOption;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/telguarder/features/settings/SettingsActivity;->reportSettingChangeToAnalytics(Lcom/telguarder/features/settings/SettingsOption;)V

    return-void
.end method

.method private createSettingsOptionList()V
    .locals 6

    .line 270
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptions:Ljava/util/List;

    if-nez v0, :cond_1

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptions:Ljava/util/List;

    .line 272
    new-instance v0, Lcom/telguarder/features/settings/SettingsOption;

    invoke-direct {v0}, Lcom/telguarder/features/settings/SettingsOption;-><init>()V

    const v1, 0x7f100170

    .line 273
    invoke-static {p0, v1}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/settings/SettingsOption;->title:Ljava/lang/String;

    const-string v1, "SETTINGS_LOOK_UP_INCOMING_CALLS"

    .line 274
    iput-object v1, v0, Lcom/telguarder/features/settings/SettingsOption;->preferencesKey:Ljava/lang/String;

    .line 275
    iget-object v1, v0, Lcom/telguarder/features/settings/SettingsOption;->preferencesKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/telguarder/features/settings/SettingsActivity;->getSwitchStateFromPreferences(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    .line 276
    new-instance v1, Lcom/telguarder/features/settings/SettingsOption;

    invoke-direct {v1}, Lcom/telguarder/features/settings/SettingsOption;-><init>()V

    const v2, 0x7f100171

    .line 277
    invoke-static {p0, v2}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/telguarder/features/settings/SettingsOption;->title:Ljava/lang/String;

    const-string v2, "SETTINGS_LOOK_UP_OUTGOING_CALLS"

    .line 278
    iput-object v2, v1, Lcom/telguarder/features/settings/SettingsOption;->preferencesKey:Ljava/lang/String;

    .line 279
    iget-object v2, v1, Lcom/telguarder/features/settings/SettingsOption;->preferencesKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/telguarder/features/settings/SettingsActivity;->getSwitchStateFromPreferences(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    .line 280
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    .line 281
    iput-boolean v2, v1, Lcom/telguarder/features/settings/SettingsOption;->disabled:Z

    const v2, 0x7f100172

    .line 282
    invoke-static {p0, v2}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/telguarder/features/settings/SettingsOption;->comment:Ljava/lang/String;

    .line 284
    :cond_0
    new-instance v2, Lcom/telguarder/features/settings/SettingsOption;

    invoke-direct {v2}, Lcom/telguarder/features/settings/SettingsOption;-><init>()V

    const v3, 0x7f100173

    .line 285
    invoke-static {p0, v3}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/telguarder/features/settings/SettingsOption;->title:Ljava/lang/String;

    const-string v3, "SETTINGS_LOOK_UP_STORED_CONTACTS"

    .line 286
    iput-object v3, v2, Lcom/telguarder/features/settings/SettingsOption;->preferencesKey:Ljava/lang/String;

    .line 287
    iget-object v3, v2, Lcom/telguarder/features/settings/SettingsOption;->preferencesKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/telguarder/features/settings/SettingsActivity;->getSwitchStateFromPreferences(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    .line 288
    new-instance v3, Lcom/telguarder/features/settings/SettingsOption;

    invoke-direct {v3}, Lcom/telguarder/features/settings/SettingsOption;-><init>()V

    const v4, 0x7f10016f

    .line 289
    invoke-static {p0, v4}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/telguarder/features/settings/SettingsOption;->title:Ljava/lang/String;

    const-string v4, "SETTINGS_LOOK_UP_ABROAD"

    .line 290
    iput-object v4, v3, Lcom/telguarder/features/settings/SettingsOption;->preferencesKey:Ljava/lang/String;

    .line 291
    iget-object v4, v3, Lcom/telguarder/features/settings/SettingsOption;->preferencesKey:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/telguarder/features/settings/SettingsActivity;->getSwitchStateFromPreferences(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    .line 292
    new-instance v4, Lcom/telguarder/features/settings/SettingsOption;

    invoke-direct {v4}, Lcom/telguarder/features/settings/SettingsOption;-><init>()V

    const v5, 0x7f100174

    .line 293
    invoke-static {p0, v5}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/telguarder/features/settings/SettingsOption;->title:Ljava/lang/String;

    const-string v5, "SETTINGS_POST_CALL_WINDOW"

    .line 294
    iput-object v5, v4, Lcom/telguarder/features/settings/SettingsOption;->preferencesKey:Ljava/lang/String;

    .line 295
    iget-object v5, v4, Lcom/telguarder/features/settings/SettingsOption;->preferencesKey:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/telguarder/features/settings/SettingsActivity;->getSwitchStateFromPreferences(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    .line 296
    iget-object v5, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptions:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptions:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptions:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private getSelectedPosition()I
    .locals 2

    .line 341
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getCallWidgetLocation()Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;

    move-result-object v0

    .line 342
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->getAllConstants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getSwitchStateFromPreferences(Ljava/lang/String;)Z
    .locals 1

    .line 347
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getSettingEnabled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private initViews()V
    .locals 3

    const v0, 0x7f080246

    .line 122
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mAppVersionValueTextView:Landroid/widget/TextView;

    .line 123
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    const/16 v2, 0x8

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 124
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mAppVersionValueTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/telguarder/features/settings/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/telguarder/features/settings/SettingsActivity$2;-><init>(Lcom/telguarder/features/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08024a

    .line 133
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptionsContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f08024e

    .line 134
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSpinnerOfLocation:Landroid/widget/Spinner;

    const v0, 0x7f080245

    .line 137
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mPolicyViewLink:Landroid/widget/TextView;

    .line 138
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 139
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mPolicyViewLink:Landroid/widget/TextView;

    new-instance v1, Lcom/telguarder/features/settings/SettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/telguarder/features/settings/SettingsActivity$3;-><init>(Lcom/telguarder/features/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080196

    .line 160
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mMessageContainer:Landroid/widget/LinearLayout;

    .line 161
    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->isMessageBoxOnSettingsScreensNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mMessageContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/telguarder/features/settings/SettingsActivity$4;

    invoke-direct {v1, p0}, Lcom/telguarder/features/settings/SettingsActivity$4;-><init>(Lcom/telguarder/features/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    invoke-direct {p0}, Lcom/telguarder/features/settings/SettingsActivity;->setupAdDebugStats()V

    return-void
.end method

.method public static openSettings(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 3

    .line 59
    const-class v0, Lcom/telguarder/features/settings/SettingsActivity;

    sget-object v1, Lcom/telguarder/helpers/ui/UiHelper$PageType;->SETTINGS:Lcom/telguarder/helpers/ui/UiHelper$PageType;

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/telguarder/helpers/ui/UiHelper;->openMainFeatureActivity(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/lang/Class;Lcom/telguarder/helpers/ui/UiHelper$PageType;Z)V

    return-void
.end method

.method private reportSettingChangeToAnalytics(Lcom/telguarder/features/settings/SettingsOption;)V
    .locals 3

    .line 375
    iget-object v0, p1, Lcom/telguarder/features/settings/SettingsOption;->preferencesKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "SETTINGS_LOOK_UP_INCOMING_CALLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "SETTINGS_LOOK_UP_ABROAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "SETTINGS_LOOK_UP_OUTGOING_CALLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "SETTINGS_LOOK_UP_STORED_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "SETTINGS_POST_CALL_WINDOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 380
    :pswitch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-boolean p1, p1, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupIncomingSettingChanged(Z)V

    goto :goto_1

    .line 377
    :pswitch_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-boolean p1, p1, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupRoamingSettingChanged(Z)V

    goto :goto_1

    .line 383
    :pswitch_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-boolean p1, p1, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupOutgoingSettingChanged(Z)V

    goto :goto_1

    .line 386
    :pswitch_3
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-boolean p1, p1, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendLookupContactsSettingChanged(Z)V

    goto :goto_1

    .line 389
    :pswitch_4
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-boolean p1, p1, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendPostCallWindowSettingChanged(Z)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x37684b92 -> :sswitch_4
        -0x36d1beb1 -> :sswitch_3
        -0x30044cbe -> :sswitch_2
        -0x1523c51f -> :sswitch_1
        0x3afa847c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetPolicyLink()V
    .locals 2

    .line 205
    invoke-static {}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mPreloadWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    .line 206
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mPolicyViewLink:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 207
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mPolicyViewLink:Landroid/widget/TextView;

    const v1, 0x7f050041

    invoke-static {p0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mPolicyViewLink:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method private saveChangingSwitchSate(Ljava/lang/String;Z)V
    .locals 1

    .line 370
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveSettingEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method private setAppVersion()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mAppVersionValueTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f100168

    invoke-static {p0, v2}, Lcom/telguarder/helpers/common/AppUtil;->getStringResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/telguarder/helpers/common/AppUtil;->getFullApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setCallWidgetPositionAdapter()V
    .locals 2

    .line 258
    new-instance v0, Lcom/telguarder/features/settings/SettingsLocationSpinnerAdapter;

    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/CallWidgetLocation;->getAllConstants()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/telguarder/features/settings/SettingsLocationSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 259
    iget-object v1, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSpinnerOfLocation:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 260
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSpinnerOfLocation:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/telguarder/features/settings/SettingsActivity;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private setLocationSpinnerListener()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSpinnerOfLocation:Landroid/widget/Spinner;

    new-instance v1, Lcom/telguarder/features/settings/SettingsActivity$7;

    invoke-direct {v1, p0}, Lcom/telguarder/features/settings/SettingsActivity$7;-><init>(Lcom/telguarder/features/settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private setSettingsOptionListener(Landroidx/appcompat/widget/SwitchCompat;Lcom/telguarder/features/settings/SettingsOption;)V
    .locals 1

    .line 352
    new-instance v0, Lcom/telguarder/features/settings/SettingsActivity$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/telguarder/features/settings/SettingsActivity$8;-><init>(Lcom/telguarder/features/settings/SettingsActivity;Lcom/telguarder/features/settings/SettingsOption;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private setViewListeners()V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/telguarder/features/settings/SettingsActivity;->setLocationSpinnerListener()V

    return-void
.end method

.method private setViewStartingValues()V
    .locals 0

    .line 247
    invoke-direct {p0}, Lcom/telguarder/features/settings/SettingsActivity;->setCallWidgetPositionAdapter()V

    .line 248
    invoke-direct {p0}, Lcom/telguarder/features/settings/SettingsActivity;->setAppVersion()V

    return-void
.end method

.method private setupAdDebugStats()V
    .locals 2

    const v0, 0x7f080247

    .line 215
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mDebugAdLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showSettingsOptions()V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 308
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 309
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 310
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/settings/SettingsOption;

    .line 312
    invoke-static {}, Lcom/telguarder/features/settings/SettingsProvider;->getInstance()Lcom/telguarder/features/settings/SettingsProvider;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/telguarder/features/settings/SettingsProvider;->getSettingsOptionView(Landroid/app/Activity;Lcom/telguarder/features/settings/SettingsOption;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080248

    .line 313
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    .line 314
    invoke-direct {p0, v3, v1}, Lcom/telguarder/features/settings/SettingsActivity;->setSettingsOptionListener(Landroidx/appcompat/widget/SwitchCompat;Lcom/telguarder/features/settings/SettingsOption;)V

    .line 315
    iget-object v1, p0, Lcom/telguarder/features/settings/SettingsActivity;->mSettingsOptionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateDebugFbAdLoadedAndLoggedStats()V
    .locals 6

    .line 235
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mDebugAdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getDebugFbAdStatisticsNoFillCount()I

    move-result v0

    .line 237
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getDebugFbAdStatisticsLoadedCount()I

    move-result v1

    .line 238
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getDebugFbAdStatisticsLoggedImpressionCount()I

    move-result v2

    .line 239
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getDebugFbAdStatisticsExpiredCount()I

    move-result v3

    const v4, 0x7f0800ea

    .line 240
    invoke-virtual {p0, v4}, Lcom/telguarder/features/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/telguarder/features/settings/SettingsActivity;->finish()V

    .line 116
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0028

    .line 66
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/SettingsActivity;->setContentView(I)V

    const v0, 0x7f08024b

    .line 67
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08024d

    .line 68
    invoke-virtual {p0, v1}, Lcom/telguarder/features/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080089

    invoke-virtual {p0, v2}, Lcom/telguarder/features/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V

    .line 69
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->setCircularActivityTransition(Landroidx/appcompat/app/AppCompatActivity;Landroid/os/Bundle;Landroid/view/View;)V

    const p1, 0x7f08024f

    .line 70
    invoke-virtual {p0, p1}, Lcom/telguarder/features/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/telguarder/features/settings/SettingsActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f100152

    .line 71
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;I)V

    .line 73
    invoke-direct {p0}, Lcom/telguarder/features/settings/SettingsActivity;->initViews()V

    .line 74
    invoke-direct {p0}, Lcom/telguarder/features/settings/SettingsActivity;->setViewStartingValues()V

    .line 75
    invoke-direct {p0}, Lcom/telguarder/features/settings/SettingsActivity;->setViewListeners()V

    .line 77
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const p1, 0x7f08024c

    .line 78
    invoke-virtual {p0, p1}, Lcom/telguarder/features/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/telguarder/features/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/settings/SettingsActivity$1;-><init>(Lcom/telguarder/features/settings/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/settings/SettingsActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 397
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 398
    invoke-direct {p0}, Lcom/telguarder/features/settings/SettingsActivity;->createSettingsOptionList()V

    .line 399
    invoke-direct {p0}, Lcom/telguarder/features/settings/SettingsActivity;->showSettingsOptions()V

    .line 400
    invoke-direct {p0}, Lcom/telguarder/features/settings/SettingsActivity;->updateDebugFbAdLoadedAndLoggedStats()V

    .line 401
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mMessageContainer:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->isMessageBoxOnSettingsScreensNeeded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/telguarder/features/settings/SettingsActivity;->mPolicyViewLink:Landroid/widget/TextView;

    const v1, 0x7f050041

    invoke-static {p0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x1

    .line 91
    sput-boolean v0, Lcom/telguarder/features/settings/SettingsActivity;->active:Z

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x0

    .line 98
    sput-boolean v0, Lcom/telguarder/features/settings/SettingsActivity;->active:Z

    return-void
.end method
