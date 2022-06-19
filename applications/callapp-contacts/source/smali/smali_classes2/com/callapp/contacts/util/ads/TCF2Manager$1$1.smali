.class Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/c/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/TCF2Manager$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/TCF2Manager$1;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/c/b;)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->b:Lcom/google/android/c/c;

    invoke-interface {v0}, Lcom/google/android/c/c;->a()I

    move-result v0

    .line 63
    const-class v1, Lcom/callapp/contacts/util/ads/TCF2Manager;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onConsentFormLoadSuccess: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    .line 66
    sget-object v0, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    iget-object v3, v3, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->a:Landroid/app/Activity;

    .line 67
    invoke-static {v3}, Lcom/callapp/contacts/util/ads/TCF2Manager;->a(Landroid/app/Activity;)Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    move-result-object v3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->d:Lcom/callapp/contacts/manager/task/OutcomeListener;

    invoke-interface {p1, v1}, Lcom/callapp/contacts/manager/task/OutcomeListener;->a(Z)V

    return-void

    .line 68
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    iget-boolean v0, v0, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->c:Z

    if-nez v0, :cond_3

    .line 69
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bd:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    if-gt v0, v2, :cond_2

    .line 71
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->be:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->d:Lcom/callapp/contacts/manager/task/OutcomeListener;

    invoke-interface {p1, v1}, Lcom/callapp/contacts/manager/task/OutcomeListener;->a(Z)V

    return-void

    :cond_2
    if-le v0, v2, :cond_3

    .line 81
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;->a:Lcom/callapp/contacts/util/ads/TCF2Manager$1;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/TCF2Manager$1;->d:Lcom/callapp/contacts/manager/task/OutcomeListener;

    invoke-interface {p1, v1}, Lcom/callapp/contacts/manager/task/OutcomeListener;->a(Z)V

    return-void

    .line 86
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Ad"

    const-string v2, "Showing TCF 2 consent form"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/TCF2Manager$1$1$1;-><init>(Lcom/callapp/contacts/util/ads/TCF2Manager$1$1;Lcom/google/android/c/b;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
