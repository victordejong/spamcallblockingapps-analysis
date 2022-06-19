.class public Lcom/unknownphone/callblocker/activity/NoCreditsActivity;
.super Landroid/app/Activity;
.source "NoCreditsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/b/a/a/a/c$b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/b/a/a/a/c;

.field private c:Landroid/content/SharedPreferences;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/activity/NoCreditsActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 192
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 193
    iget-boolean v0, p0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->setResult(ILandroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->finish()V

    .line 198
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public B_()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public a()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    sget-object v0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->a:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "onBillingError(%d) was called."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz p2, :cond_0

    .line 168
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "Error: %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/b/a/a/a/h;)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 125
    sget-object v1, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->a:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "onProductPurchased(%s, %s) was called."

    new-array v4, v5, [Ljava/lang/Object;

    .line 126
    invoke-static {p1}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    if-nez p2, :cond_2

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v4, v6

    .line 125
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string/jumbo v0, "inapp.unknownphone.callblocker3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 130
    iget-object v0, p2, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    .line 131
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 133
    const/4 v0, 0x3

    invoke-virtual {v1, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 134
    const/4 v0, 0x6

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 135
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "just_became_premium"

    .line 136
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "subscription_ends_at"

    .line 138
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 137
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    invoke-static {}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 145
    const-string/jumbo v2, "price"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 146
    const-string/jumbo v2, "currency"

    const-string/jumbo v3, "GBP"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v2, "item_name"

    const-string/jumbo v3, "3 months with 1 week trial"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v2, "ecommerce_purchase"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 153
    :cond_0
    const-string/jumbo v0, "Subscription completed"

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    iput-boolean v6, p0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->d:Z

    .line 156
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->c()V

    .line 158
    :cond_1
    return-void

    .line 126
    :cond_2
    const-string/jumbo v0, "details"

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->b:Lcom/b/a/a/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/a/a/c;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/a/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->b:Lcom/b/a/a/a/c;

    .line 178
    invoke-virtual {v0}, Lcom/b/a/a/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->b:Lcom/b/a/a/a/c;

    .line 179
    invoke-virtual {v0}, Lcom/b/a/a/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-static {}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    .line 182
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 183
    const-string/jumbo v2, "item_name"

    const-string/jumbo v3, "3 months with 1 week trial"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string/jumbo v2, "add_to_cart"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->b:Lcom/b/a/a/a/c;

    const-string/jumbo v1, "inapp.unknownphone.callblocker3"

    invoke-virtual {v0, p0, v1}, Lcom/b/a/a/a/c;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 189
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->setContentView(I)V

    .line 49
    const v0, 0x7f090147

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    const v1, 0x7f090148

    invoke-virtual {p0, v1}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    const v2, 0x7f0900fe

    invoke-virtual {p0, v2}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    const v3, 0x7f090088

    invoke-virtual {p0, v3}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 53
    const v4, 0x7f0901ac

    invoke-virtual {p0, v4}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    .line 54
    const v5, 0x7f090080

    invoke-virtual {p0, v5}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 55
    const v6, 0x7f09016e

    invoke-virtual {p0, v6}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 58
    const-string/jumbo v6, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAg/n5OPCfZKt31Wr3N97lYlj1E5zbMAFI/LLhsPP1uQqSioY5hUUBo4hjgfr9caMdt+w0xBINTDBW2S0hpEBa1/+rAb30eh+mBdPuQ84lva6/7eFl8tccX2dOSGq9XuQZfa2NREIOSizIGyhCeYgD2hpye5OUIhoy2JNPL65KqkSRnMO3r/hEr9ak+EVCb5BfadcZoLXX/iotW1CdxA56bz7fccemf5RwSHRDoTGUGwQWFtra0Syn5PCDoB+Q+Mp8HzVWtQSL7z+ZoMufL3+GMT/f2cVFCg/ixZOsNHLuf/Q/w/cnDb2olGlOYKXoLgncKxWl1paKkKS6G9i5akqK9QIDAQAB"

    invoke-static {p0, v6, p0}, Lcom/b/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/b/a/a/a/c$b;)Lcom/b/a/a/a/c;

    move-result-object v6

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->b:Lcom/b/a/a/a/c;

    .line 59
    iget-object v6, p0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->b:Lcom/b/a/a/a/c;

    invoke-virtual {v6}, Lcom/b/a/a/a/c;->c()V

    .line 62
    const-string/jumbo v6, "com.unknownphone.callblocker.PREFS"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->c:Landroid/content/SharedPreferences;

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 66
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 67
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 68
    const/4 v7, 0x7

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 69
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 70
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v6, v10

    invoke-virtual {v9, v6, v7}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v6

    .line 71
    const v9, 0x7f1000dc

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_1

    .line 72
    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v11

    .line 71
    invoke-static {p0, v9, v10}, Lcom/unknownphone/callblocker/custom/g;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {p0}, Lcom/unknownphone/callblocker/custom/g;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 77
    const v1, 0x7f1000d9

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {p0, v1, v6}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v1, 0x7f1000da

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {p0, v1, v6}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity$1;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity$1;-><init>(Lcom/unknownphone/callblocker/activity/NoCreditsActivity;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity$2;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity$2;-><init>(Lcom/unknownphone/callblocker/activity/NoCreditsActivity;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity$3;

    invoke-direct {v0, p0}, Lcom/unknownphone/callblocker/activity/NoCreditsActivity$3;-><init>(Lcom/unknownphone/callblocker/activity/NoCreditsActivity;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v4, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-static {}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    const-string/jumbo v1, "begin_checkout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    :cond_0
    return-void

    .line 71
    :cond_1
    const-wide/16 v6, 0x7

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->b:Lcom/b/a/a/a/c;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/NoCreditsActivity;->b:Lcom/b/a/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/a/c;->d()V

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 120
    return-void
.end method
