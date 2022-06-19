.class public Lcom/unknownphone/callblocker/activity/PermissionActivity;
.super Landroid/app/Activity;
.source "PermissionActivity.java"


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 96
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->finish()V

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/activity/PermissionActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->a()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 84
    const/16 v0, 0x4d2

    if-ne p1, v0, :cond_2

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "block_spam_calls"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "identify_spam_calls"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->finish()V

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->setContentView(I)V

    .line 35
    const-string/jumbo v0, "com.unknownphone.callblocker.PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/PermissionActivity;->a:Landroid/content/SharedPreferences;

    .line 36
    const v0, 0x7f0900a8

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f100170

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 40
    const v0, 0x7f090166

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 41
    const/high16 v1, 0x42f40000    # 122.0f

    invoke-static {p0, v1}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v1

    .line 42
    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {p0, v2}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;F)I

    move-result v2

    .line 44
    new-instance v3, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/unknownphone/callblocker/activity/PermissionActivity$1;-><init>(Lcom/unknownphone/callblocker/activity/PermissionActivity;Landroid/widget/RelativeLayout;II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 61
    const v1, 0x7f01001f

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/unknownphone/callblocker/activity/PermissionActivity$2;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/PermissionActivity$2;-><init>(Lcom/unknownphone/callblocker/activity/PermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f0901ac

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/PermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/unknownphone/callblocker/activity/PermissionActivity$3;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/PermissionActivity$3;-><init>(Lcom/unknownphone/callblocker/activity/PermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method
