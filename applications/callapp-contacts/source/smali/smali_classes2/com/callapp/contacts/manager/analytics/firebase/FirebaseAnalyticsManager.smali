.class public Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;
.super Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;
.source "SourceFile"


# instance fields
.field private n:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/callapp/contacts/manager/analytics/AbstractAnalyticsManager;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 166
    invoke-static {p0}, Lcom/callapp/common/util/RegexUtils;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-static {p0, p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 26
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 27
    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->c:Ljava/lang/String;

    const-string v2, "Store_Name"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-wide v1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->d:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Days_Since_Install"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->getGroupDimension()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AB_Group"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->f:Ljava/lang/String;

    const-string v2, "Referrer"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->g:Ljava/lang/String;

    const-string v2, "UTM_MEDIUM"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->h:Ljava/lang/String;

    const-string v2, "UTM_CAMPAIGN"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->i:Ljava/lang/String;

    const-string v2, "Deeplink_Source"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->j:Ljava/lang/String;

    const-string v2, "Deeplink_Medium"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->k:Ljava/lang/String;

    const-string v2, "Deeplink_Campaign"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->l:Ljava/lang/String;

    const-string v2, "Deeplink_Term"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->m:Ljava/lang/String;

    const-string v2, "AppsFlyer_uid"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "method"

    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "login"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V
    .locals 2

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ad_source"

    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ad_unit_name"

    .line 67
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->getSize()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ad_format"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "value"

    .line 71
    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "currency"

    const-string p2, "USD"

    .line 72
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string p2, "ad_impression"

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 4

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x64

    .line 88
    invoke-static {p1, v1}, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "category"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p2, v1}, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p3, v1}, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "label"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmpl-double p3, p4, v1

    if-eqz p3, :cond_0

    const-string p3, "value"

    .line 92
    invoke-virtual {v0, p3, p4, p5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p3, "currency"

    const-string p4, "USD"

    .line 93
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object p3, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x28

    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 3

    .line 148
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v0, 0x0

    cmpl-double v2, p4, v0

    if-eqz v2, :cond_0

    const-string v0, "value"

    .line 150
    invoke-virtual {p3, v0, p4, p5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p4, "currency"

    .line 151
    invoke-virtual {p3, p4, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p4, "category"

    const-string p5, "Purchase"

    .line 154
    invoke-virtual {p3, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "action"

    .line 155
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "label"

    .line 156
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string p2, "ca_event"

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final varargs b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V
    .locals 9

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->f(Ljava/lang/String;)I

    move-result v1

    const-string v2, ", , "

    const/16 v3, 0x63

    const/16 v4, 0x64

    const-string v5, ", "

    const/4 v6, 0x0

    if-le v1, v4, :cond_0

    .line 102
    invoke-static {p1, v6, v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance v1, Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Category length > 100, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    :cond_0
    const-string v1, "category"

    .line 105
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->f(Ljava/lang/String;)I

    move-result v1

    if-le v1, v4, :cond_1

    .line 108
    invoke-static {p2, v6, v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p2

    .line 109
    new-instance v1, Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Action length > 100, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    :cond_1
    const-string v1, "action"

    .line 111
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->f(Ljava/lang/String;)I

    move-result v1

    if-le v1, v4, :cond_2

    .line 114
    invoke-static {p3, v6, v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p3

    .line 115
    new-instance v1, Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Label length > 100, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    :cond_2
    const-string v1, "label"

    .line 117
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    cmpl-double v1, p4, v7

    if-eqz v1, :cond_3

    const-string v1, "value"

    .line 120
    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p4, "currency"

    const-string p5, "USD"

    .line 121
    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p6, :cond_5

    const/4 p4, 0x0

    .line 125
    :goto_0
    array-length p5, p6

    if-ge p4, p5, :cond_5

    add-int/lit8 p5, p4, 0x1

    .line 126
    aget-object v1, p6, p5

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->f(Ljava/lang/String;)I

    move-result v1

    if-le v1, v4, :cond_4

    .line 127
    aget-object v1, p6, p5

    invoke-static {v1, v6, v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p6, p5

    .line 128
    new-instance v1, Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Extra length > 100, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p6, p5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 130
    :cond_4
    aget-object v1, p6, p4

    aget-object p5, p6, p5

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x2

    goto :goto_0

    .line 134
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string p2, "ca_event"

    invoke-virtual {p1, p2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "tutorial_begin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_name"

    .line 140
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const/16 v2, 0x28

    invoke-static {p1, v2}, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 143
    iget-object p1, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "screen_view"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/manager/analytics/firebase/FirebaseAnalyticsManager;->n:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "tutorial_complete"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final i()V
    .locals 0

    return-void
.end method
