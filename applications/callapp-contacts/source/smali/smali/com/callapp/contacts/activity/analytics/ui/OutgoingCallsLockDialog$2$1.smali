.class Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2$1;->a:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 78
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->e()V

    .line 79
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2$1;->a:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;->b:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;->a(Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/activity/analytics/data/UpdateAnalyticsCardEvent;->a:Lcom/callapp/contacts/event/bus/EventType;

    iget-object p3, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2$1;->a:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;

    iget-object p3, p3, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$2;->b:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;

    invoke-static {p3}, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;->a(Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p3

    invoke-interface {p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object p3

    const/4 p4, 0x0

    .line 1091
    invoke-virtual {p1, p2, p3, p4}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method
