.class public Lcom/callapp/contacts/service/jobs/ScreenUnlockServiceV1;
.super Landroidx/core/app/SafeJobIntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/core/app/SafeJobIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3

    .line 20
    invoke-static {}, Lcom/callapp/contacts/receiver/SmsSentReceiver;->b()V

    .line 21
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->e()V

    .line 22
    sget-object p1, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    .line 1058
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->J:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.hasPendingMissedCallDailySummary.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->J:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1060
    check-cast p1, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/workers/MissedCallSummaryDailyWorker$Companion;->a()V

    .line 23
    :cond_0
    sget-object p1, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;->a:Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    .line 2055
    const-class v0, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showPendingNotAnsweredSummary "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->K:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 2057
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->K:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Prefs.hasPendingNotAnswerDailySummary.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2058
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->K:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 2059
    check-cast p1, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/workers/NotAnswerCallSummaryDailyWorker$Companion;->a()V

    :cond_1
    return-void
.end method
