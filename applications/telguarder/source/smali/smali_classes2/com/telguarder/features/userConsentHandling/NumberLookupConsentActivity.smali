.class public Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;
.super Lcom/telguarder/features/userConsentHandling/ConsentActivity;
.source "NumberLookupConsentActivity.java"


# instance fields
.field private mPrivacyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->mPrivacyUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;)Ljava/util/Map;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->getCustomHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getCustomHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    invoke-static {p0}, Lcom/telguarder/helpers/idGenerators/UID;->uid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-DeviceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private logPermissionResults([Ljava/lang/String;[I)V
    .locals 6

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 145
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 146
    aget-object v2, p1, v1

    const-string v3, "android.permission.ANSWER_PHONE_CALLS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_0

    goto :goto_3

    .line 149
    :cond_0
    aget v2, p2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 150
    aget-object v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 151
    :goto_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v4

    aget-object v5, p1, v1

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v5, v2, v3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendRuntimePermissionReqResult(Ljava/lang/String;ZZ)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static openNumberLookupConsentActivity(Landroid/content/Context;ZZ)V
    .locals 2

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x20000

    .line 89
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const/high16 p1, 0x10000000

    .line 90
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private preloadWebView(Ljava/lang/String;)V
    .locals 2

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity$2;-><init>(Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected getPolicyText(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 2

    const p1, 0x7f100128

    .line 96
    invoke-virtual {p0, p1}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "<privacylink>"

    const-string v1, "<a href=\"privacy:\"><b>"

    .line 97
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "</privacylink>"

    const-string v1, "</a></b>"

    .line 98
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/telguarder/helpers/common/AppUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/country/CountryManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "https://api.advista.no/docs/%s/privacy_policy"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->mPrivacyUrl:Ljava/lang/String;

    .line 48
    iget-object p1, p0, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->mPolicyTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/bluecabin/textoo/Textoo;->config(Landroid/widget/TextView;)Lorg/bluecabin/textoo/TextViewConfigurator;

    move-result-object p1

    new-instance v0, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity$1;-><init>(Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;)V

    invoke-virtual {p1, v0}, Lorg/bluecabin/textoo/TextViewConfigurator;->addLinksHandler(Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/TextViewConfigurator;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lorg/bluecabin/textoo/TextViewConfigurator;->apply()Landroid/widget/TextView;

    .line 60
    iget-object p1, p0, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->mPrivacyUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->preloadWebView(Ljava/lang/String;)V

    return-void
.end method

.method protected onDismiss()V
    .locals 1

    .line 115
    invoke-static {}, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->getInstance()Lcom/telguarder/features/userConsentHandling/UserConsentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->onNumberLookupConsentDismiss(Landroid/content/Context;)V

    .line 116
    invoke-virtual {p0}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->finishAndRemoveTask()V

    return-void
.end method

.method protected onNo()V
    .locals 1

    .line 109
    invoke-static {}, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->getInstance()Lcom/telguarder/features/userConsentHandling/UserConsentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->onNumberLookupConsentNo(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p0}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->finishAndRemoveTask()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 137
    invoke-static {p0, p1, p3}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivityPermissionsDispatcher;->onRequestPermissionsResult(Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;I[I)V

    .line 138
    invoke-direct {p0, p2, p3}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->logPermissionResults([Ljava/lang/String;[I)V

    .line 139
    invoke-virtual {p0}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->startNextActivity()V

    return-void
.end method

.method protected onYes()V
    .locals 0

    .line 104
    invoke-static {p0}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivityPermissionsDispatcher;->startNextActivityWithPermissionCheck(Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;)V

    return-void
.end method

.method public showDeniedForPermissions()V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->startNextActivity()V

    return-void
.end method

.method public startNextActivity()V
    .locals 1

    .line 122
    invoke-static {}, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->getInstance()Lcom/telguarder/features/userConsentHandling/UserConsentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/telguarder/features/userConsentHandling/UserConsentManager;->onNumberLookupConsentYes(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 123
    invoke-static {p0, v0}, Lcom/telguarder/features/main/MainActivity;->openMainActivity(Landroidx/appcompat/app/AppCompatActivity;Z)V

    .line 124
    invoke-virtual {p0}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->finish()V

    return-void
.end method
