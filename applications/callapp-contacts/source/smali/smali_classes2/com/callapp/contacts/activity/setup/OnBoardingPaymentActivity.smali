.class public Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;
.super Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 1

    const/4 v0, -0x1

    .line 186
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->setResult(I)V

    .line 187
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)V
    .locals 2

    .line 1141
    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v1, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$3;-><init>(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)V

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0234

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 48
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ONBOARDING_PAYMENT_LAYOUT_EXTRA"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->d:I

    const p1, 0x7f0a0a66

    .line 1067
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0a0a67

    .line 1068
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0a68

    .line 1069
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0a69

    .line 1070
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0a6a

    .line 1071
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0a6b

    .line 1072
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0a6c

    .line 1073
    invoke-virtual {p0, v5}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0a6d

    .line 1074
    invoke-virtual {p0, v6}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f1204f7

    .line 1077
    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v7

    const v8, 0x7f060112

    const v9, 0x7f06010f

    if-eqz v7, :cond_0

    const v7, 0x7f060112

    goto :goto_0

    :cond_0
    const v7, 0x7f06010f

    :goto_0
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f1204f0

    .line 1079
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f060112

    goto :goto_1

    :cond_1
    const p1, 0x7f06010f

    :goto_1
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f1204f1

    .line 1081
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f060112

    goto :goto_2

    :cond_2
    const p1, 0x7f06010f

    :goto_2
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f1204f2

    .line 1083
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f060112

    goto :goto_3

    :cond_3
    const p1, 0x7f06010f

    :goto_3
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f1204f3

    .line 1085
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f060112

    goto :goto_4

    :cond_4
    const p1, 0x7f06010f

    :goto_4
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f1204f4

    .line 1087
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f060112

    goto :goto_5

    :cond_5
    const p1, 0x7f06010f

    :goto_5
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f1204f5

    .line 1089
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f060112

    goto :goto_6

    :cond_6
    const p1, 0x7f06010f

    :goto_6
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f1204f6

    .line 1091
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    const v8, 0x7f06010f

    :goto_7
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f0a062e

    .line 1095
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1204ef

    .line 1096
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060113

    .line 1097
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0601f1

    .line 1099
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v3

    float-to-int v3, v3

    const v4, 0x7f08058d

    invoke-static {p1, v4, v1, v0, v3}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    const v0, 0x7f0a06dd

    .line 1102
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f1204ed

    .line 1103
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f060088

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v4, v3, v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 1106
    iget v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->d:I

    sget-object v1, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;->DISCOUNT:Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;

    iget v1, v1, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$PAGE_TYPE;->type:I

    if-ne v0, v1, :cond_8

    const v0, 0x7f0a032c

    .line 1107
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 1108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0601ec

    .line 1109
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f1204ec

    .line 1110
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a018a

    .line 1112
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1113
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/16 v3, 0x50

    .line 1114
    invoke-virtual {v2, v1, v1, v1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 1115
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1119
    :cond_8
    new-instance v0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$1;-><init>(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->a:Landroid/widget/TextView;

    new-instance v0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity$2;-><init>(Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->fL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->fromNumRep(I)Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    move-result-object p1

    .line 55
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    iget-object p1, p1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name:Ljava/lang/String;

    const-string v1, "Registration"

    const-string v2, "ViewOnBoardingPayment"

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "OnBoardingPayment"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 61
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "OnBoardingPayment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 174
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseFullScreenActivity;->onResume()V

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/OnBoardingPaymentActivity;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
