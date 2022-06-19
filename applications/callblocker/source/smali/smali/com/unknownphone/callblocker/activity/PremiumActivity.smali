.class public Lcom/unknownphone/callblocker/activity/PremiumActivity;
.super Landroidx/fragment/app/d;
.source "PremiumActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;
.implements Lcom/b/a/a/a/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/activity/PremiumActivity$a;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field private l:Lcom/b/a/a/a/c;

.field private m:Landroid/content/SharedPreferences;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/unknownphone/callblocker/activity/PremiumActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/unknownphone/callblocker/activity/PremiumActivity;)Lcom/b/a/a/a/c;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->l:Lcom/b/a/a/a/c;

    return-object v0
.end method

.method static synthetic b(Lcom/unknownphone/callblocker/activity/PremiumActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 227
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 228
    iget-boolean v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->setResult(ILandroid/content/Intent;)V

    .line 229
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->finish()V

    .line 233
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public B_()V
    .locals 2

    .prologue
    .line 223
    sget-object v0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->k:Ljava/lang/String;

    const-string/jumbo v1, "onBillingInitialized() was called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public a()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 148
    invoke-static {}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v1, "begin_checkout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 153
    :cond_0
    return-void
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public a(ILjava/lang/Throwable;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 216
    sget-object v0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->k:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "onBillingError(%d) was called."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz p2, :cond_0

    .line 218
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

    .line 219
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/b/a/a/a/h;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 175
    sget-object v2, Lcom/unknownphone/callblocker/activity/PremiumActivity;->k:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "onProductPurchased(%s, %s) was called."

    new-array v5, v7, [Ljava/lang/Object;

    .line 176
    invoke-static {p1}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    if-nez p2, :cond_3

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v5, v1

    .line 175
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string/jumbo v0, "inapp.unknownphone.callblocker2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "inapp.unknownphone.callblocker1"

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_2

    .line 181
    iget-object v0, p2, Lcom/b/a/a/a/h;->e:Lcom/b/a/a/a/e;

    iget-object v0, v0, Lcom/b/a/a/a/e;->c:Lcom/b/a/a/a/d;

    iget-object v0, v0, Lcom/b/a/a/a/d;->d:Ljava/util/Date;

    .line 182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 184
    const-string/jumbo v0, "inapp.unknownphone.callblocker2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    :goto_1
    invoke-virtual {v2, v7, v0}, Ljava/util/Calendar;->add(II)V

    .line 185
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "just_became_premium"

    .line 186
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "subscription_ends_at"

    .line 188
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 187
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 192
    invoke-static {}, Lcom/unknownphone/callblocker/custom/CustomApplication;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    .line 193
    if-eqz v2, :cond_1

    .line 194
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 195
    const-string/jumbo v0, "price"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 196
    const-string/jumbo v0, "currency"

    const-string/jumbo v4, "GBP"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v4, "item_name"

    const-string/jumbo v0, "inapp.unknownphone.callblocker2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "3 months"

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "ecommerce_purchase"

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 203
    :cond_1
    const-string/jumbo v0, "Subscription completed"

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    iput-boolean v1, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->n:Z

    .line 206
    invoke-direct {p0}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->f()V

    .line 208
    :cond_2
    return-void

    .line 176
    :cond_3
    const-string/jumbo v0, "details"

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 184
    goto :goto_1

    .line 197
    :cond_5
    const-string/jumbo v0, "1 month"

    goto :goto_2
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->l:Lcom/b/a/a/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/b/a/a/a/c;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/d;->onActivityResult(IILandroid/content/Intent;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->setContentView(I)V

    .line 52
    const v0, 0x7f09016e

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 53
    const v0, 0x7f0901ea

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 56
    const-string/jumbo v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAg/n5OPCfZKt31Wr3N97lYlj1E5zbMAFI/LLhsPP1uQqSioY5hUUBo4hjgfr9caMdt+w0xBINTDBW2S0hpEBa1/+rAb30eh+mBdPuQ84lva6/7eFl8tccX2dOSGq9XuQZfa2NREIOSizIGyhCeYgD2hpye5OUIhoy2JNPL65KqkSRnMO3r/hEr9ak+EVCb5BfadcZoLXX/iotW1CdxA56bz7fccemf5RwSHRDoTGUGwQWFtra0Syn5PCDoB+Q+Mp8HzVWtQSL7z+ZoMufL3+GMT/f2cVFCg/ixZOsNHLuf/Q/w/cnDb2olGlOYKXoLgncKxWl1paKkKS6G9i5akqK9QIDAQAB"

    invoke-static {p0, v2, p0}, Lcom/b/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/b/a/a/a/c$b;)Lcom/b/a/a/a/c;

    move-result-object v2

    iput-object v2, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->l:Lcom/b/a/a/a/c;

    .line 57
    iget-object v2, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->l:Lcom/b/a/a/a/c;

    invoke-virtual {v2}, Lcom/b/a/a/a/c;->c()V

    .line 60
    const-string/jumbo v2, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {p0, v2, v4}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->m:Landroid/content/SharedPreferences;

    .line 63
    new-instance v2, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;

    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->m()Landroidx/fragment/app/i;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;-><init>(Landroidx/fragment/app/i;)V

    .line 64
    new-instance v3, Lcom/unknownphone/callblocker/activity/PremiumActivity$1;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/activity/PremiumActivity$1;-><init>(Lcom/unknownphone/callblocker/activity/PremiumActivity;)V

    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->a(Lcom/unknownphone/callblocker/custom/a;)V

    .line 81
    new-instance v3, Lcom/unknownphone/callblocker/activity/PremiumActivity$2;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/activity/PremiumActivity$2;-><init>(Lcom/unknownphone/callblocker/activity/PremiumActivity;)V

    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->b(Lcom/unknownphone/callblocker/custom/a;)V

    .line 98
    new-instance v3, Lcom/unknownphone/callblocker/activity/PremiumActivity$3;

    invoke-direct {v3, p0}, Lcom/unknownphone/callblocker/activity/PremiumActivity$3;-><init>(Lcom/unknownphone/callblocker/activity/PremiumActivity;)V

    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->c(Lcom/unknownphone/callblocker/custom/a;)V

    .line 104
    new-instance v3, Lcom/unknownphone/callblocker/activity/PremiumActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/unknownphone/callblocker/activity/PremiumActivity$4;-><init>(Lcom/unknownphone/callblocker/activity/PremiumActivity;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v2, v3}, Lcom/unknownphone/callblocker/activity/PremiumActivity$a;->d(Lcom/unknownphone/callblocker/custom/a;)V

    .line 112
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 113
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 116
    new-instance v2, Lcom/unknownphone/callblocker/activity/PremiumActivity$5;

    invoke-direct {v2, p0}, Lcom/unknownphone/callblocker/activity/PremiumActivity$5;-><init>(Lcom/unknownphone/callblocker/activity/PremiumActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/activity/PremiumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "show_premium_tab"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Lcom/unknownphone/callblocker/activity/PremiumActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/unknownphone/callblocker/activity/PremiumActivity$6;-><init>(Lcom/unknownphone/callblocker/activity/PremiumActivity;Landroidx/viewpager/widget/ViewPager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroidx/viewpager/widget/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->l:Lcom/b/a/a/a/c;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/PremiumActivity;->l:Lcom/b/a/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/a/c;->d()V

    .line 169
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroy()V

    .line 170
    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    .prologue
    .line 163
    return-void
.end method
