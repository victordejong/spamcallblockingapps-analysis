.class public Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;
.super Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;
.source "SourceFile"


# instance fields
.field private n:Lcom/facebook/appevents/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;-><init>()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->c:Ljava/lang/String;

    const-string v1, "Store_Name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-wide v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->d:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Days_Since_Install"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->getGroupDimension()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AB_Group"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->f:Ljava/lang/String;

    const-string v1, "Referrer"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->h:Ljava/lang/String;

    const-string v1, "UTM_CAMPAIGN"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->g:Ljava/lang/String;

    const-string v1, "UTM_MEDIUM"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->i:Ljava/lang/String;

    const-string v1, "Deeplink_Source"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->j:Ljava/lang/String;

    const-string v1, "Deeplink_Medium"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->k:Ljava/lang/String;

    const-string v1, "Deeplink_Campaign"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->l:Ljava/lang/String;

    const-string v1, "Deeplink_Term"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->m:Ljava/lang/String;

    const-string v1, "AppsFlyer_uid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 32
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/g;->a(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f12032b

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/appevents/g;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/g;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    .line 36
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/facebook/m;->APP_EVENTS:Lcom/facebook/m;

    invoke-static {v0}, Lcom/facebook/g;->a(Lcom/facebook/m;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "category"

    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    .line 56
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "label"

    .line 58
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->a(Landroid/os/Bundle;)V

    .line 61
    iget-object p3, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p4, p5, v0}, Lcom/facebook/appevents/g;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 2

    .line 115
    iget-object p3, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    if-eqz p3, :cond_1

    .line 116
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "category"

    const-string v1, "Purchase"

    .line 117
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    .line 118
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "label"

    .line 119
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, p3}, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->a(Landroid/os/Bundle;)V

    .line 121
    iget-object p1, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    invoke-static {p4, p5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-static {p6}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p4

    .line 1387
    iget-object p1, p1, Lcom/facebook/appevents/g;->a:Lcom/facebook/appevents/h;

    invoke-static {p1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 2233
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/f/d;->b()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 2234
    sget-object p5, Lcom/facebook/appevents/h;->a:Ljava/lang/String;

    const-string p6, "You are logging purchase events while auto-logging of in-app purchase is enabled in the SDK. Make sure you don\'t log duplicate events"

    invoke-static {p5, p6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p5, 0x0

    .line 2239
    invoke-virtual {p1, p2, p4, p3, p5}, Lcom/facebook/appevents/h;->a(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    .line 2240
    invoke-static {p2, p1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "category"

    .line 86
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "action"

    .line 87
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "label"

    .line 89
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p6, :cond_1

    const/4 p1, 0x0

    .line 93
    :goto_0
    array-length p2, p6

    if-ge p1, p2, :cond_1

    .line 94
    aget-object p2, p6, p1

    add-int/lit8 p3, p1, 0x1

    aget-object p3, p6, p3

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->a(Landroid/os/Bundle;)V

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    const-string p2, "ga_event"

    invoke-virtual {p1, p2, p4, p5, v0}, Lcom/facebook/appevents/g;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "view"

    .line 107
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->a(Landroid/os/Bundle;)V

    .line 109
    iget-object p1, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    const-string v1, "fb_mobile_content_view"

    invoke-virtual {p1, v1, v0}, Lcom/facebook/appevents/g;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 5

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_currency"

    const-string v2, "USD"

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->a(Landroid/os/Bundle;)V

    .line 135
    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    const-string v2, "StartTrial"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/facebook/appevents/g;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    return-void
.end method

.method public final f()V
    .locals 5

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_currency"

    const-string v2, "USD"

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->a(Landroid/os/Bundle;)V

    .line 143
    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    const-string v2, "Subscribe"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/facebook/appevents/g;->a(Ljava/lang/String;DLandroid/os/Bundle;)V

    return-void
.end method

.method public final g()V
    .locals 3

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_level"

    const-string v2, "default dialer"

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->a(Landroid/os/Bundle;)V

    .line 151
    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    const-string v2, "fb_mobile_level_achieved"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/appevents/g;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final h()V
    .locals 3

    .line 159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_success"

    const/4 v2, 0x1

    .line 160
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->a(Landroid/os/Bundle;)V

    .line 163
    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    const-string v2, "fb_mobile_add_payment_info"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/appevents/g;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final i()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/facebook/FacebookAnalyticsManager;->n:Lcom/facebook/appevents/g;

    .line 2486
    iget-object v0, v0, Lcom/facebook/appevents/g;->a:Lcom/facebook/appevents/h;

    invoke-virtual {v0}, Lcom/facebook/appevents/h;->b()V

    return-void
.end method
