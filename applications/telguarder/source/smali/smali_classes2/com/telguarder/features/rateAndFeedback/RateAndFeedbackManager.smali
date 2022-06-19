.class public Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;
.super Ljava/lang/Object;
.source "RateAndFeedbackManager.java"


# static fields
.field private static mInstance:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager; = null

.field private static mOptOut:Z = false


# instance fields
.field private mFeedbackDialog:Landroid/app/AlertDialog;

.field public mRateDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    sput-boolean v0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mOptOut:Z

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->rateApp(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->setOptOut(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->showFeedbackDialog(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->startFeedbackActivity(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;)Landroid/app/AlertDialog;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mFeedbackDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;
    .locals 2

    const-class v0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mInstance:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    invoke-direct {v1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;-><init>()V

    sput-object v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mInstance:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;

    .line 50
    :cond_0
    sget-object v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mInstance:Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getIntentFlags()I
    .locals 2

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/high16 v0, 0x48080000    # 139264.0f

    return v0
.end method

.method private rateApp(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    :try_start_0
    const-string v0, "market://details"

    .line 186
    invoke-direct {p0, v0}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->rateIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 187
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "http://play.google.com/store/apps/details"

    .line 189
    invoke-direct {p0, v0}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->rateIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private rateIntentForUrl(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 196
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s?id=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 197
    invoke-direct {p0}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->getIntentFlags()I

    move-result p1

    .line 198
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private setOptOut(Z)V
    .locals 1

    .line 216
    sput-boolean p1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mOptOut:Z

    .line 217
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object p1

    sget-boolean v0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mOptOut:Z

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->saveAppRatingOptOut(Z)V

    return-void
.end method

.method private showFeedbackDialog(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3

    .line 133
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1000a4

    .line 134
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 135
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$6;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$6;-><init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Landroidx/appcompat/app/AppCompatActivity;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 142
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$7;

    invoke-direct {v1, p0}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$7;-><init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;)V

    const v2, 0x7f100142

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$8;

    invoke-direct {v1, p0}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$8;-><init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;)V

    const v2, 0x1040009

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$9;

    invoke-direct {v1, p0}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$9;-><init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mFeedbackDialog:Landroid/app/AlertDialog;

    .line 166
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$10;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$10;-><init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 174
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mFeedbackDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startFeedbackActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 2

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/telguarder/features/rateAndFeedback/FeedbackActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 55
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getAppRatingOptOut()Z

    move-result v0

    sput-boolean v0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mOptOut:Z

    return-void
.end method

.method public shouldShowRateDialog(Landroid/content/Context;)Z
    .locals 10

    .line 60
    sget-boolean v0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mOptOut:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 64
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/country/CountryManager;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v3, "BR"

    const-string v4, "MX"

    const-string v5, "CL"

    const-string v6, "AR"

    const-string v7, "DZ"

    const-string v8, "MA"

    const-string v9, "NL"

    .line 66
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    return v1

    :catch_0
    nop

    .line 71
    :cond_1
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->wasLastIncomingNumberLookupSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-static {}, Lcom/telguarder/helpers/contact/ContactManager;->getInstance()Lcom/telguarder/helpers/contact/ContactManager;

    move-result-object v0

    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->getInstance()Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager;->getLastSuccessfullyLookedupIncomingNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/telguarder/helpers/contact/ContactManager;->contactExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/telguarder/helpers/common/AppUtil;->getFirstInstallTime(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf731400

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    .line 74
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->hasAdvertInCache()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public showRateDialog(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3

    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100141

    .line 83
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 84
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$1;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$1;-><init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Landroidx/appcompat/app/AppCompatActivity;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$2;

    invoke-direct {v1, p0}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$2;-><init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;)V

    const v2, 0x7f100142

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$3;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$3;-><init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Landroidx/appcompat/app/AppCompatActivity;)V

    const v2, 0x1040009

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$4;

    invoke-direct {v1, p0}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$4;-><init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mRateDialog:Landroid/app/AlertDialog;

    .line 120
    new-instance v1, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$5;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager$5;-><init>(Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 128
    iget-object p1, p0, Lcom/telguarder/features/rateAndFeedback/RateAndFeedbackManager;->mRateDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
