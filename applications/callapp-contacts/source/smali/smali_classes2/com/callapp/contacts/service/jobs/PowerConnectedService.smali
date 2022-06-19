.class public Lcom/callapp/contacts/service/jobs/PowerConnectedService;
.super Landroidx/core/app/SafeJobIntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/core/app/SafeJobIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1

    .line 16
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/service/jobs/PowerConnectedService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/receiver/ScreenOffReceiver;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 19
    invoke-static {p1}, Lcom/callapp/contacts/sync/service/RealSyncService;->b(Z)V

    return-void
.end method
