.class final Lcom/callapp/contacts/activity/records/CallRecordsActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/CallRecordsActivity;->d(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$3;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 174
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->e()V

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    .line 175
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    invoke-static {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->c(Landroid/app/Activity;)V

    return-void

    .line 177
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->getAllRecords()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    invoke-static {p0}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$uz6JYnYHT5WdBD244pz0rfWU408(Landroid/app/Activity;Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/records/CallRecordsActivity$3;->a(Landroid/app/Activity;Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final onClickListener(Landroid/app/Activity;)V
    .locals 3

    .line 172
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p1

    if-nez p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$3;->a:Landroid/app/Activity;

    const/4 v0, 0x1

    new-instance v1, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$3$uz6JYnYHT5WdBD244pz0rfWU408;

    invoke-direct {v1, p1}, Lcom/callapp/contacts/activity/records/-$$Lambda$CallRecordsActivity$3$uz6JYnYHT5WdBD244pz0rfWU408;-><init>(Landroid/app/Activity;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isTermsAccepted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "Recording get permission popup action"

    const-string v2, "Accept"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecordsActivity$3;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->b(Landroid/app/Activity;)V

    .line 185
    :cond_1
    :goto_0
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v2, 0x0

    .line 1091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method
