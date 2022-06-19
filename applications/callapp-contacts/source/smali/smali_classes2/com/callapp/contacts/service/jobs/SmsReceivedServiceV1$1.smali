.class final Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/objectbox/SingleSmsData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$1;->a:Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 119
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/OverlayManager;->a(Ljava/lang/Object;)Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    move-result-object v0

    const-string v1, "Sms"

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onCreate()V

    .line 125
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "creating SMS overlay"

    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "Adding page to existing SMS overlay"

    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_0
    check-cast v0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    iget-object v1, p0, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1$1;->a:Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->addPage(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)V

    return-void
.end method
