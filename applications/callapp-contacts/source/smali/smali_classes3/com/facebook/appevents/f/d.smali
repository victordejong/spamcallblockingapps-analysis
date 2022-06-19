.class public Lcom/facebook/appevents/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/f/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.facebook.appevents.f.d"

.field private static final b:Lcom/facebook/appevents/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/facebook/appevents/m;

    .line 57
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/appevents/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/appevents/f/d;->b:Lcom/facebook/appevents/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/appevents/f/d$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/appevents/f/d$a;"
        }
    .end annotation

    .line 144
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance p1, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "fb_iap_product_id"

    const-string v2, "productId"

    .line 149
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fb_iap_purchase_time"

    const-string v2, "purchaseTime"

    .line 150
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fb_iap_purchase_token"

    const-string v2, "purchaseToken"

    .line 151
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fb_iap_package_name"

    const-string v2, "packageName"

    .line 152
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fb_iap_product_title"

    const-string v2, "title"

    .line 153
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fb_iap_product_description"

    const-string v2, "description"

    .line 155
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "type"

    .line 157
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fb_iap_product_type"

    .line 158
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "subs"

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fb_iap_subs_auto_renewing"

    const-string v2, "autoRenewing"

    const/4 v3, 0x0

    .line 162
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "fb_iap_subs_period"

    const-string v1, "subscriptionPeriod"

    .line 164
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "fb_free_trial_period"

    const-string v1, "freeTrialPeriod"

    .line 166
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "introductoryPriceCycles"

    .line 168
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fb_intro_price_amount_micros"

    const-string v2, "introductoryPriceAmountMicros"

    .line 172
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "fb_intro_price_cycles"

    .line 173
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 177
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 181
    :cond_1
    new-instance p2, Lcom/facebook/appevents/f/d$a;

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "price_amount_micros"

    .line 182
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const-string v1, "price_currency_code"

    .line 183
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1}, Lcom/facebook/appevents/f/d$a;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 186
    sget-object p1, Lcom/facebook/appevents/f/d;->a:Ljava/lang/String;

    const-string p2, "Error parsing in-app subscription data."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()V
    .locals 4

    .line 60
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v2

    const-string v3, "context"

    .line 63
    invoke-static {v0, v3}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 65
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 66
    check-cast v0, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/facebook/appevents/g;->a(Landroid/app/Application;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/facebook/appevents/f/d;->a:Ljava/lang/String;

    const-string v1, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 4

    .line 80
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    .line 82
    invoke-static {v0, v2}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 83
    invoke-static {v1, v2}, Lcom/facebook/internal/q;->a(Ljava/lang/String;Z)Lcom/facebook/internal/p;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1040
    iget-boolean v1, v1, Lcom/facebook/internal/p;->d:Z

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 85
    new-instance v1, Lcom/facebook/appevents/m;

    invoke-direct {v1, v0}, Lcom/facebook/appevents/m;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "fb_aa_time_spent_view_name"

    .line 87
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    long-to-double p0, p1

    const-string p2, "fb_aa_time_spent_on_view"

    .line 88
    invoke-virtual {v1, p2, p0, p1, v0}, Lcom/facebook/appevents/m;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 93
    invoke-static {}, Lcom/facebook/appevents/f/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1136
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/facebook/appevents/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/appevents/f/d$a;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 106
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object p2

    const-string v2, "app_events_if_auto_log_subs"

    .line 105
    invoke-static {v2, p2, v1}, Lcom/facebook/internal/o;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_8

    .line 110
    invoke-static {p1}, Lcom/facebook/appevents/d/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "StartTrial"

    goto :goto_0

    :cond_3
    const-string p1, "Subscribe"

    :goto_0
    move-object v1, p1

    .line 113
    sget-object p1, Lcom/facebook/appevents/f/d;->b:Lcom/facebook/appevents/m;

    iget-object p2, p0, Lcom/facebook/appevents/f/d$a;->a:Ljava/math/BigDecimal;

    iget-object v0, p0, Lcom/facebook/appevents/f/d$a;->b:Ljava/util/Currency;

    iget-object p0, p0, Lcom/facebook/appevents/f/d$a;->c:Landroid/os/Bundle;

    .line 2087
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2088
    iget-object p1, p1, Lcom/facebook/appevents/m;->a:Lcom/facebook/appevents/h;

    invoke-static {p1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p2, :cond_6

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    if-nez p0, :cond_5

    .line 2557
    :try_start_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_5
    move-object v3, p0

    const-string p0, "fb_currency"

    .line 2559
    invoke-virtual {v0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x1

    .line 2565
    invoke-static {}, Lcom/facebook/appevents/f/a;->b()Ljava/util/UUID;

    move-result-object v5

    move-object v0, p1

    .line 2560
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/appevents/h;->a(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V

    return-void

    .line 2552
    :cond_6
    :goto_1
    sget-object p0, Lcom/facebook/appevents/h;->a:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/internal/ae;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 2566
    invoke-static {p0, p1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_7
    return-void

    .line 119
    :cond_8
    sget-object p1, Lcom/facebook/appevents/f/d;->b:Lcom/facebook/appevents/m;

    iget-object p2, p0, Lcom/facebook/appevents/f/d$a;->a:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/facebook/appevents/f/d$a;->b:Ljava/util/Currency;

    iget-object p0, p0, Lcom/facebook/appevents/f/d$a;->c:Landroid/os/Bundle;

    .line 3076
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3077
    iget-object p1, p1, Lcom/facebook/appevents/m;->a:Lcom/facebook/appevents/h;

    invoke-static {p1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 3243
    :try_start_1
    invoke-virtual {p1, p2, v1, p0, v0}, Lcom/facebook/appevents/h;->a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 3244
    invoke-static {p0, p1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public static b()Z
    .locals 2

    .line 125
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/facebook/internal/q;->a(Ljava/lang/String;)Lcom/facebook/internal/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4044
    iget-boolean v0, v0, Lcom/facebook/internal/p;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
