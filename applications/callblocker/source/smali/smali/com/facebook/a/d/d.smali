.class public Lcom/facebook/a/d/d;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/d/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/facebook/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-class v0, Lcom/facebook/a/d/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/d/d;->a:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/facebook/a/m;

    .line 59
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/a/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/a/d/d;->b:Lcom/facebook/a/m;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/a/d/d$a;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/facebook/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/a/d/d$a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/a/d/d$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/a/d/d$a;"
        }
    .end annotation

    .prologue
    .line 154
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance v3, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 159
    const-string/jumbo v1, "fb_iap_product_id"

    const-string/jumbo v4, "productId"

    .line 161
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 162
    const-string/jumbo v1, "fb_iap_purchase_time"

    const-string/jumbo v4, "purchaseTime"

    .line 164
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 165
    const-string/jumbo v1, "fb_iap_purchase_token"

    const-string/jumbo v4, "purchaseToken"

    .line 167
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 168
    const-string/jumbo v1, "fb_iap_package_name"

    const-string/jumbo v4, "packageName"

    .line 170
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 171
    const-string/jumbo v1, "fb_iap_product_title"

    const-string/jumbo v4, "title"

    .line 173
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 174
    const-string/jumbo v1, "fb_iap_product_description"

    const-string/jumbo v4, "description"

    .line 176
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 178
    const-string/jumbo v1, "type"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    const-string/jumbo v4, "fb_iap_product_type"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 182
    const-string/jumbo v4, "subs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    const-string/jumbo v1, "fb_iap_subs_auto_renewing"

    const-string/jumbo v4, "autoRenewing"

    const/4 v5, 0x0

    .line 185
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 187
    const-string/jumbo v0, "fb_iap_subs_period"

    const-string/jumbo v1, "subscriptionPeriod"

    .line 189
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 190
    const-string/jumbo v0, "fb_free_trial_period"

    const-string/jumbo v1, "freeTrialPeriod"

    .line 192
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 194
    const-string/jumbo v0, "introductoryPriceCycles"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const-string/jumbo v1, "fb_intro_price_amount_micros"

    const-string/jumbo v4, "introductoryPriceAmountMicros"

    .line 198
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 199
    const-string/jumbo v1, "fb_intro_price_cycles"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 205
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    sget-object v1, Lcom/facebook/a/d/d;->a:Ljava/lang/String;

    const-string/jumbo v2, "Error parsing in-app subscription data."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 209
    :cond_1
    :try_start_1
    new-instance v0, Lcom/facebook/a/d/d$a;

    new-instance v1, Ljava/math/BigDecimal;

    const-string/jumbo v4, "price_amount_micros"

    .line 210
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    invoke-direct {v1, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const-string/jumbo v4, "price_currency_code"

    .line 211
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/a/d/d$a;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v2

    .line 65
    const-string/jumbo v3, "context"

    invoke-static {v0, v3}, Lcom/facebook/internal/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    if-eqz v2, :cond_0

    .line 67
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_1

    .line 68
    check-cast v0, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/facebook/a/g;->a(Landroid/app/Application;Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sget-object v0, Lcom/facebook/a/d/d;->a:Ljava/lang/String;

    const-string/jumbo v1, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 82
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string/jumbo v2, "context"

    invoke-static {v0, v2}, Lcom/facebook/internal/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/internal/m;->a(Ljava/lang/String;Z)Lcom/facebook/internal/l;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/facebook/internal/l;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 90
    new-instance v1, Lcom/facebook/a/m;

    invoke-direct {v1, v0}, Lcom/facebook/a/m;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 92
    const-string/jumbo v2, "fb_aa_time_spent_view_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 93
    const-string/jumbo v2, "fb_aa_time_spent_on_view"

    long-to-double v4, p1

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/facebook/a/m;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 96
    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-static {}, Lcom/facebook/a/d/d;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/a/d/d$a;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_0

    .line 111
    if-eqz p2, :cond_2

    const-string/jumbo v2, "app_events_if_auto_log_subs"

    .line 113
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v2, v3, v0}, Lcom/facebook/internal/k;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 116
    :cond_2
    if-eqz v0, :cond_4

    .line 117
    invoke-static {p1}, Lcom/facebook/a/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "StartTrial"

    .line 120
    :goto_1
    sget-object v2, Lcom/facebook/a/d/d;->b:Lcom/facebook/a/m;

    iget-object v3, v1, Lcom/facebook/a/d/d$a;->a:Ljava/math/BigDecimal;

    iget-object v4, v1, Lcom/facebook/a/d/d$a;->b:Ljava/util/Currency;

    iget-object v1, v1, Lcom/facebook/a/d/d$a;->c:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/facebook/a/m;->a(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    goto :goto_0

    .line 117
    :cond_3
    const-string/jumbo v0, "Subscribe"

    goto :goto_1

    .line 126
    :cond_4
    sget-object v0, Lcom/facebook/a/d/d;->b:Lcom/facebook/a/m;

    iget-object v2, v1, Lcom/facebook/a/d/d$a;->a:Ljava/math/BigDecimal;

    iget-object v3, v1, Lcom/facebook/a/d/d$a;->b:Ljava/util/Currency;

    iget-object v1, v1, Lcom/facebook/a/d/d$a;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/a/m;->a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/facebook/internal/m;->a(Ljava/lang/String;)Lcom/facebook/internal/l;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/facebook/internal/l;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
