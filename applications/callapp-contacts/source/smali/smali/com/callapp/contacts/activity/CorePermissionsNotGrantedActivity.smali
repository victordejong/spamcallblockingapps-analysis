.class public Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;
.super Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->isRegistrationCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->b()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1099
    new-instance v1, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity$1;-><init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;)V

    invoke-static {p0, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

.method private synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 36
    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0x3039

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->b()V

    return-void
.end method

.method private synthetic a([Ljava/lang/String;[I)V
    .locals 0

    .line 92
    new-instance p1, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$xrDqXeaVUrhwHp1XyKYzAVc7oTw;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$xrDqXeaVUrhwHp1XyKYzAVc7oTw;-><init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 92
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->getPermissionManager()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$kn0eZvCPGgfu2afd8Zm1Dk8v7fo;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$kn0eZvCPGgfu2afd8Zm1Dk8v7fo;-><init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;)V

    new-instance v2, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$J7GzgmASyW3tYTGUcohS-yQ0lBc;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$J7GzgmASyW3tYTGUcohS-yQ0lBc;-><init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Lcom/callapp/contacts/manager/permission/PermissionManager$OnCorePermissionGrantedCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()V
    .locals 10

    .line 129
    new-instance v9, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    const v0, 0x7f12024c

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f12024b

    .line 130
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1204ea

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$Ut7Ls18kLKkqkLfZaAud4fatP6I;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$Ut7Ls18kLKkqkLfZaAud4fatP6I;-><init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;)V

    const v1, 0x7f08056c

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    const/4 v0, 0x0

    .line 132
    invoke-virtual {v9, v0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->setCancelable(Z)V

    .line 133
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v9}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    const/4 v0, -0x1

    .line 93
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->setResult(I)V

    .line 94
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->finish()V

    return-void
.end method

.method private isRegistrationCompleted()Z
    .locals 1

    .line 44
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$J7GzgmASyW3tYTGUcohS-yQ0lBc(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->c()V

    return-void
.end method

.method public static synthetic lambda$Ut7Ls18kLKkqkLfZaAud4fatP6I(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$cfhqpifffxNuuVMPuXWzE5ILUAE(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$kn0eZvCPGgfu2afd8Zm1Dk8v7fo(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->a([Ljava/lang/String;[I)V

    return-void
.end method

.method public static synthetic lambda$xrDqXeaVUrhwHp1XyKYzAVc7oTw(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->d()V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->isRegistrationCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0038

    return v0

    :cond_0
    const v0, 0x7f0d002f

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->isRegistrationCompleted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->c()V

    goto :goto_0

    :cond_0
    const p1, 0x7f0a02b0

    .line 60
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0a02b4

    .line 61
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a02b3

    .line 62
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v2, 0x7f12024c

    .line 64
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v1, :cond_2

    const v0, 0x7f12024b

    .line 67
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 70
    new-instance v0, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$cfhqpifffxNuuVMPuXWzE5ILUAE;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/-$$Lambda$CorePermissionsNotGrantedActivity$cfhqpifffxNuuVMPuXWzE5ILUAE;-><init>(Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f12024a

    .line 71
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_3
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Core Permissions Not Granted Screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->e(Ljava/lang/String;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 79
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Core Permissions Not Granted Screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onDestroy()V

    return-void
.end method

.method public shouldAssertPermissions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
