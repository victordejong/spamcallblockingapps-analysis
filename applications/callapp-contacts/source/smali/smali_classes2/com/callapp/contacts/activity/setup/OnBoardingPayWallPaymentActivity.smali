.class public Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;
.super Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private final n:Ljava/lang/String;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;-><init>()V

    const-string v0, "54%"

    .line 67
    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 2

    const-string v0, "yearly_02"

    .line 222
    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->c:Ljava/lang/String;

    const v0, 0x7f080473

    .line 223
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    const v0, 0x7f080472

    .line 224
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    const/4 v0, 0x1

    .line 225
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v1, 0x0

    .line 226
    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 227
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 228
    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setSelected(Z)V

    return-void
.end method

.method private static a(Lcom/android/billingclient/api/k;Landroid/widget/TextView;)V
    .locals 20

    .line 286
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/k;->f()Ljava/lang/String;

    move-result-object v1

    .line 288
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/k;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v4

    const-string v5, "#"

    .line 292
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    if-ltz v5, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 294
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/k;->c()J

    move-result-wide v9

    long-to-double v9, v9

    const-wide v11, 0x412e848000000000L    # 1000000.0

    div-double/2addr v9, v11

    const-string v11, "yearly"

    .line 296
    invoke-static {v3, v11}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    div-double v12, v9, v12

    move-wide/from16 v18, v9

    move-wide v9, v12

    move-wide/from16 v12, v18

    goto :goto_1

    :cond_1
    const-wide/16 v12, 0x0

    .line 301
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v8, :cond_2

    goto :goto_2

    .line 302
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_2
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v15, " "

    if-eqz v8, :cond_3

    const-string v8, "#@"

    const-string v7, "@#"

    .line 305
    invoke-static {v1, v8, v7}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v7, v1

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    sub-double v7, v16, v7

    div-double v7, v7, v16

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-double/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 309
    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3f4ccccd    # 0.8f

    invoke-direct {v7, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 310
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const v8, 0x7f06010e

    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v10, 0x21

    invoke-virtual {v6, v7, v9, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 311
    new-instance v7, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v7}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v7, v9, v1, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 312
    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 313
    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    .line 315
    :goto_3
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 316
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3f99999a    # 1.2f

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v9, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 317
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v9, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 318
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 320
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 321
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3f4ccccd    # 0.8f

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v6, v9, v5, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 323
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 324
    invoke-static {v3, v11}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 325
    new-instance v1, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    move-object/from16 v1, p1

    .line 329
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a(Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;Ljava/util/List;)V
    .locals 3

    .line 3274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/k;

    .line 3275
    invoke-virtual {v0}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yearly_02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3276
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->h:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a(Lcom/android/billingclient/api/k;Landroid/widget/TextView;)V

    goto :goto_0

    .line 3277
    :cond_1
    invoke-virtual {v0}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onboarding_basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3278
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->j:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a(Lcom/android/billingclient/api/k;Landroid/widget/TextView;)V

    goto :goto_0

    .line 3279
    :cond_2
    invoke-virtual {v0}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yearly_01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3280
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->l:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a(Lcom/android/billingclient/api/k;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 1

    const-string v0, "onboarding_basic"

    .line 2232
    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->c:Ljava/lang/String;

    const p0, 0x7f080473

    .line 2233
    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    const p0, 0x7f080472

    .line 2234
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    const/4 p0, 0x0

    .line 2235
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v0, 0x1

    .line 2236
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2237
    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setSelected(Z)V

    .line 2238
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setSelected(Z)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V
    .locals 2

    .line 2333
    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v1, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$8;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$8;-><init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->o:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V
    .locals 6

    .line 3374
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Purchase"

    const-string v2, "start trial"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 3375
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->h()V

    .line 3377
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 3378
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->setResult(I)V

    .line 3379
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->finish()V

    return-void
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0235

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .line 357
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const-string v1, "Registration"

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 358
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v4, "ClickOnboardingPaymentPayWall2Close"

    invoke-virtual {v0, v1, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 364
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v4, "ClickOnboardingPaymentPayWall1Close"

    invoke-virtual {v0, v1, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 72
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a03f5

    .line 1096
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->d:Landroid/widget/FrameLayout;

    const p1, 0x7f0a07c0

    .line 1097
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->e:Landroid/widget/FrameLayout;

    const p1, 0x7f0a0243

    .line 1099
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->m:Landroid/widget/ImageView;

    .line 1100
    new-instance v0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$1;-><init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0100

    .line 1108
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1109
    new-instance v0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$2;-><init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a03f7

    .line 1119
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120544

    .line 1120
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0400

    .line 1121
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120519

    .line 1122
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0401

    .line 1123
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f12051a

    .line 1124
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0402

    .line 1125
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f12051b

    .line 1126
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a08e0

    .line 1127
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v3, 0x7f1206e7

    .line 1128
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a03f8

    .line 1129
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v4, 0x7f1200ed

    .line 1130
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0405

    .line 1132
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const v4, 0x7f0a03fd

    .line 1133
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    const/4 v5, 0x0

    .line 1134
    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 1135
    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 1137
    invoke-direct {p0, p1, v4}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a(Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    const v5, 0x7f0a0403

    .line 1138
    invoke-virtual {p0, v5}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->f:Landroid/widget/LinearLayout;

    .line 1139
    new-instance v6, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$3;

    invoke-direct {v6, p0, p1, v4}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$3;-><init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a03fb

    .line 1146
    invoke-virtual {p0, v5}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->g:Landroid/widget/LinearLayout;

    .line 1147
    new-instance v6, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$4;

    invoke-direct {v6, p0, p1, v4}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$4;-><init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a03fa

    .line 1156
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v4, 0x7f120628

    .line 1157
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a03f9

    .line 1159
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v4, 0x7f1201ab

    .line 1160
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0406

    .line 1162
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v4, 0x7f120877

    .line 1163
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a03fe

    .line 1165
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v4, 0x7f12046d

    .line 1166
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a03ff

    .line 1167
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->k:Landroid/widget/TextView;

    .line 1168
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v4, 0x7f080099

    const/16 v5, 0x17

    if-lt p1, v5, :cond_0

    .line 1169
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->k:Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    invoke-static {v6, v4}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1171
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->k:Landroid/widget/TextView;

    const v6, 0x7f120731

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->k:Landroid/widget/TextView;

    new-instance v7, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$5;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$5;-><init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0404

    .line 1183
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->h:Landroid/widget/TextView;

    const p1, 0x7f0a03fc

    .line 1184
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->j:Landroid/widget/TextView;

    const p1, 0x7f0a07c5

    .line 1187
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v7, 0x7f120724

    .line 1188
    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a07c7

    .line 1189
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1190
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a07c8

    .line 1191
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1192
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a07c9

    .line 1193
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1194
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a08e1

    .line 1195
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1196
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a07c3

    .line 1197
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1204e2

    .line 1198
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a07c6

    .line 1199
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->o:Landroid/widget/TextView;

    .line 1200
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_1

    .line 1201
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->o:Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1203
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->o:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->o:Landroid/widget/TextView;

    new-instance v0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$6;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$6;-><init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a07c4

    .line 1215
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->l:Landroid/widget/TextView;

    const p1, 0x7f0a07c1

    .line 1216
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "54%"

    .line 1217
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    new-instance p1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity$7;-><init>(Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;)V

    invoke-direct {p1, v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    .line 76
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->fromNumRep(I)Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    move-result-object p1

    .line 77
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object p1, p1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name:Ljava/lang/String;

    const-string v1, "Registration"

    const-string v2, "ViewOnBoardingPaymentPayWall"

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "OnBoardingPaymentPayWall"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 83
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "OnBoardingPaymentPayWall"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->a:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPayWallPaymentActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 91
    :cond_1
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onDestroy()V

    return-void
.end method
