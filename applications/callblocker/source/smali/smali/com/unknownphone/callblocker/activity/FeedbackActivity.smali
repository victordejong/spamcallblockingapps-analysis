.class public Lcom/unknownphone/callblocker/activity/FeedbackActivity;
.super Landroidx/appcompat/app/c;
.source "FeedbackActivity.java"


# instance fields
.field private k:Landroid/content/SharedPreferences;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    .line 29
    const/16 v0, 0x334

    iput v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->l:I

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/activity/FeedbackActivity;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->l:I

    return v0
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/activity/FeedbackActivity;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->l:I

    return p1
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/activity/FeedbackActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->k:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lcom/unknownphone/callblocker/activity/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->o()V

    return-void
.end method

.method private o()V
    .locals 6

    .prologue
    .line 94
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.SENDTO"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "mailto:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 96
    const-string/jumbo v0, "android.intent.extra.EMAIL"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "callblocker@unknownphone.com"

    aput-object v4, v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string/jumbo v0, "2.4"

    .line 98
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string/jumbo v3, "android.intent.extra.TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CallBlocker Android v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v0, "0.0"

    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", build "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "0"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 101
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->setContentView(I)V

    .line 36
    const-string/jumbo v0, "com.unknownphone.callblocker.PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->k:Landroid/content/SharedPreferences;

    .line 37
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "left_feedback"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 40
    const v1, 0x7f090187

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    const v1, 0x7f0900cd

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    const v1, 0x7f090136

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    .line 43
    const v1, 0x7f090157

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/activity/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    .line 45
    new-instance v1, Lcom/unknownphone/callblocker/activity/FeedbackActivity$1;

    invoke-direct {v1, p0}, Lcom/unknownphone/callblocker/activity/FeedbackActivity$1;-><init>(Lcom/unknownphone/callblocker/activity/FeedbackActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/unknownphone/callblocker/activity/FeedbackActivity$2;-><init>(Lcom/unknownphone/callblocker/activity/FeedbackActivity;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v0, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/unknownphone/callblocker/activity/FeedbackActivity$3;-><init>(Lcom/unknownphone/callblocker/activity/FeedbackActivity;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method
