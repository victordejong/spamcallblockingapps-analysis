.class public Lcom/callapp/contacts/service/jobs/ShowRegistrationReminderService;
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
    .locals 1

    .line 20
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gy:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 24
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance p1, Lcom/callapp/contacts/service/jobs/ShowRegistrationReminderService$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/service/jobs/ShowRegistrationReminderService$1;-><init>(Lcom/callapp/contacts/service/jobs/ShowRegistrationReminderService;)V

    const/16 v0, 0x7d0

    .line 40
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/service/jobs/ShowRegistrationReminderService$1;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
