.class public Lcom/allinone/callerid/util/q;
.super Ljava/lang/Object;
.source "FirebaseUtils.java"


# static fields
.field private static a:Lcom/allinone/callerid/util/q;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/firebase/analytics/FirebaseAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/util/q;->b:Landroid/content/Context;

    return-void
.end method

.method private a()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/q;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/util/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/util/q;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/util/q;->c:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public static b()Lcom/allinone/callerid/util/q;
    .locals 2

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/util/q;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/allinone/callerid/util/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    invoke-direct {v0}, Lcom/allinone/callerid/util/q;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/p;->d(Landroid/content/Context;)Lcom/allinone/callerid/model/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZCountryCode;->getCountry_name()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    invoke-direct {v1}, Lcom/allinone/callerid/util/q;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "country"

    .line 4
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    invoke-direct {v0}, Lcom/allinone/callerid/util/q;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "manufacturer"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "osversion"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    invoke-direct {v0}, Lcom/allinone/callerid/util/q;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DownloadError"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DownloadException"

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    invoke-direct {v0}, Lcom/allinone/callerid/util/q;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "search_error"

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    invoke-direct {v0}, Lcom/allinone/callerid/util/q;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "manufacturer"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "osversion"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "not_alive"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    invoke-direct {v0}, Lcom/allinone/callerid/util/q;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "manufacturer"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "osversion"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "not_alive_current_day_date"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    invoke-direct {v0}, Lcom/allinone/callerid/util/q;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "manufacturer"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "osversion"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "not_alive_current_day_time"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    invoke-direct {v0}, Lcom/allinone/callerid/util/q;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "manufacturer"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "osversion"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "not_alive_more_day_time"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    invoke-direct {v0}, Lcom/allinone/callerid/util/q;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/h1;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "manufacturer"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "osversion"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "not_alive_next_day_time"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/q;->a:Lcom/allinone/callerid/util/q;

    invoke-direct {v0}, Lcom/allinone/callerid/util/q;->a()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "play_error"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "exo_play_error"

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
