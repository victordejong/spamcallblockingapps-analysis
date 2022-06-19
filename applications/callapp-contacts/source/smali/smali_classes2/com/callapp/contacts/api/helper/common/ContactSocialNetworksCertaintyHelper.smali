.class public Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$EmptyImplProfileDialogListener;,
        Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/model/contact/DataSource;

.field private b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

.field private c:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field private final d:Ljava/lang/String;

.field private e:Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

.field private f:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;-><init>(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;)V

    .line 36
    invoke-direct {p0, p2}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p3, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a:Lcom/callapp/contacts/model/contact/DataSource;

    .line 44
    iput-object p4, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->e:Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

    .line 45
    iput-object p5, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->f:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;

    .line 46
    iget p1, p3, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->getSocialNetworkName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->c:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 2108
    new-instance v0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;-><init>(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    .line 2141
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->setIsSure(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;)V
    .locals 3

    .line 101
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Suggested login to "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact Details"

    const-string v2, "Approve"

    invoke-virtual {v0, v1, p2, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Landroid/app/Activity;)V

    return-void
.end method

.method private a(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 2

    .line 50
    sget-object v0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$5;->a:[I

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a:Lcom/callapp/contacts/model/contact/DataSource;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/DataSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->c:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 68
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getInstagramHelper()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->c:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 63
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getFoursquareHelper()Lcom/callapp/contacts/api/helper/foursquare/FoursquareHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->c:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 58
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getTwitterHelper()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->c:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 53
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getFacebookHelper()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->e:Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

    if-nez v0, :cond_4

    .line 73
    new-instance v0, Lcom/callapp/contacts/popup/DefaultPersonSelectListener;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-direct {v0, v1, p1}, Lcom/callapp/contacts/popup/DefaultPersonSelectListener;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Lcom/callapp/contacts/model/contact/ContactData;)V

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->e:Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->f:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;

    if-nez p1, :cond_5

    .line 77
    new-instance p1, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$EmptyImplProfileDialogListener;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$EmptyImplProfileDialogListener;-><init>(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)V

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->f:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;

    :cond_5
    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;)V
    .locals 1

    .line 84
    new-instance v0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;

    invoke-direct {v0}, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;-><init>()V

    iget p2, p2, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    .line 1066
    iput p2, v0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->a:I

    .line 1076
    iput-object p3, v0, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->b:Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 88
    invoke-virtual {v0, p2}, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->setContactsFullName(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 93
    invoke-virtual {v0, p0}, Lcom/callapp/contacts/popup/selection/PersonSelectPopup;->setAutoSearchText(Ljava/lang/String;)V

    .line 96
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;I)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/model/contact/DataSource;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a:Lcom/callapp/contacts/model/contact/DataSource;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->e:Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->f:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$ProfileDialogListener;

    return-object p0
.end method

.method private setIsSure(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->c:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$2;-><init>(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 152
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Z)V
    .locals 10

    .line 169
    invoke-direct {p0, p2}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 170
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getFirstName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    const p3, 0x7f1203e4

    new-array v2, v0, [Ljava/lang/Object;

    .line 1159
    iget-object v3, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->d:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {p3, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const v2, 0x7f1203e6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1163
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v1

    iget-object p3, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->d:Ljava/lang/String;

    aput-object p3, v3, v0

    .line 1162
    invoke-static {v2, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v4, p3

    .line 173
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p3

    new-instance v9, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v2, 0x7f1202a2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->d:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120878

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f1204c5

    .line 174
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$3;

    invoke-direct {v7, p0, p2}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$3;-><init>(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;Lcom/callapp/contacts/model/contact/ContactData;)V

    new-instance v8, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$4;

    invoke-direct {v8, p0, p1, p2}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$4;-><init>(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;)V

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 173
    invoke-virtual {p3, p1, v9}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
