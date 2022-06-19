.class Lcom/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderWelcomeDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallRecorderWelcomeDialogListener"
.end annotation


# instance fields
.field private final a:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderWelcomeDialogListener;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$CallRecorderWelcomeDialogListener;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "Get permission popup action"

    const-string v2, "Call recorders list"

    if-eqz v0, :cond_1

    .line 325
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isTermsAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 328
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Accept"

    invoke-virtual {p1, v2, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 331
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v3, "Decline"

    invoke-virtual {v0, v2, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
