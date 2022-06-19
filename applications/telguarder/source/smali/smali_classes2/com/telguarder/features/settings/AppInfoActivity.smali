.class public Lcom/telguarder/features/settings/AppInfoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AppInfoActivity.java"


# instance fields
.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/settings/AppInfoActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/telguarder/features/settings/AppInfoActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method private initViews()V
    .locals 8

    const v0, 0x7f08006b

    .line 79
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/telguarder/helpers/common/AppUtil;->getFullApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {p0}, Lcom/telguarder/helpers/common/AppUtil;->getFirstInstallTime(Landroid/content/Context;)J

    move-result-wide v0

    const v2, 0x7f08006a

    .line 82
    invoke-virtual {p0, v2}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "-"

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v0, 0x5265c00

    div-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800f7

    .line 84
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v2, v6

    const-string v4, "%s %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800fa

    .line 86
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v7, v2, v5

    const-string v7, "Android %s"

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/telguarder/features/settings/-$$Lambda$AppInfoActivity$3CD7U0UwqQGrzFR-ggYcq4dbPrY;

    invoke-direct {v2, p0}, Lcom/telguarder/features/settings/-$$Lambda$AppInfoActivity$3CD7U0UwqQGrzFR-ggYcq4dbPrY;-><init>(Lcom/telguarder/features/settings/AppInfoActivity;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x7f0800f8

    .line 102
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telguarder/helpers/country/CountryManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800f6

    .line 104
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/telguarder/helpers/idGenerators/UID;->uid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801f3

    .line 106
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    const-string v7, "OK"

    if-eqz v2, :cond_1

    move-object v2, v7

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801ef

    .line 108
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->getInstance()Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/telguarder/features/numberLookup/LookupBlockerCheckManager;->batteryOptimisationsIgnored(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v7

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801ee

    .line 110
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v2, v1, v5

    const v2, 0x7f100161

    invoke-virtual {p0, v2}, Lcom/telguarder/features/settings/AppInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->hasProtectedAppCheck()Z

    move-result v0

    const v1, 0x7f0801ec

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    .line 113
    invoke-virtual {p0, v1}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0801ed

    .line 114
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/helpers/preferences/PreferencesManager;->isProtectedAppchekDone()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v7

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 116
    :cond_4
    invoke-virtual {p0, v1}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const v0, 0x7f0801f2

    .line 119
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    move-object v1, v7

    goto :goto_5

    :cond_5
    move-object v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801f0

    .line 121
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    move-object v1, v7

    goto :goto_6

    :cond_6
    move-object v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801f1

    .line 123
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    move-object v1, v7

    goto :goto_7

    :cond_7
    move-object v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801e7

    .line 125
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    move-object v1, v7

    goto :goto_8

    :cond_8
    move-object v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f0801e9

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_9

    .line 128
    invoke-virtual {p0, v1}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 130
    :cond_9
    invoke-virtual {p0, v1}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0801e8

    .line 131
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "android.permission.ANSWER_PHONE_CALLS"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    move-object v1, v7

    goto :goto_9

    :cond_a
    move-object v1, v3

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f0801eb

    if-lt v0, v4, :cond_b

    .line 135
    invoke-virtual {p0, v1}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 137
    :cond_b
    invoke-virtual {p0, v1}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0801ea

    .line 138
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    move-object v3, v7

    :cond_c
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    return-void
.end method


# virtual methods
.method public synthetic lambda$initViews$2$AppInfoActivity()V
    .locals 9

    .line 89
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/helpers/country/CountryManager;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/telguarder/helpers/country/CountryManager;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/telguarder/helpers/country/CountryManager;->getMccFromSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/telguarder/helpers/country/CountryManager;->getMccFromNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/telguarder/helpers/country/CountryManager;->getSimCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/telguarder/helpers/country/CountryManager;->getNetworkCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 96
    :cond_3
    new-instance v0, Lcom/telguarder/features/settings/-$$Lambda$AppInfoActivity$9IernE5OZS473wCIVEnNO0xgF7g;

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/telguarder/features/settings/-$$Lambda$AppInfoActivity$9IernE5OZS473wCIVEnNO0xgF7g;-><init>(Lcom/telguarder/features/settings/AppInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 98
    :cond_4
    new-instance v2, Lcom/telguarder/features/settings/-$$Lambda$AppInfoActivity$2RH5OB0OHuYuEz1rHl2rmCeiBQI;

    invoke-direct {v2, p0, v0, v1}, Lcom/telguarder/features/settings/-$$Lambda$AppInfoActivity$2RH5OB0OHuYuEz1rHl2rmCeiBQI;-><init>(Lcom/telguarder/features/settings/AppInfoActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/telguarder/features/settings/AppInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$null$0$AppInfoActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f0800f9

    .line 96
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const-string p1, "%s_%s (SIM), %s_%s (NET)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$null$1$AppInfoActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f0800f9

    .line 98
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "%s_%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/telguarder/features/settings/AppInfoActivity;->finish()V

    .line 72
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001e

    .line 38
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->setContentView(I)V

    const v0, 0x7f080066

    .line 39
    invoke-virtual {p0, v0}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080068

    .line 40
    invoke-virtual {p0, v1}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080089

    invoke-virtual {p0, v2}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V

    .line 41
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->setCircularActivityTransition(Landroidx/appcompat/app/AppCompatActivity;Landroid/os/Bundle;Landroid/view/View;)V

    const p1, 0x7f080069

    .line 42
    invoke-virtual {p0, p1}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lcom/telguarder/features/settings/AppInfoActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f100168

    .line 43
    invoke-static {p0, p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;I)V

    .line 45
    invoke-direct {p0}, Lcom/telguarder/features/settings/AppInfoActivity;->initViews()V

    .line 47
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const p1, 0x7f080067

    .line 48
    invoke-virtual {p0, p1}, Lcom/telguarder/features/settings/AppInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/telguarder/features/settings/AppInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/settings/AppInfoActivity$1;-><init>(Lcom/telguarder/features/settings/AppInfoActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 65
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/settings/AppInfoActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
