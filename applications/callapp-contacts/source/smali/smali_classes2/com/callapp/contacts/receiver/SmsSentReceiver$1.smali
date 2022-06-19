.class final Lcom/callapp/contacts/receiver/SmsSentReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/receiver/SmsSentReceiver;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/callapp/contacts/receiver/SmsSentReceiver$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    .line 89
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/OverlayManager;->a(Ljava/lang/Object;)Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onCreate()V

    .line 95
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const/4 v7, 0x0

    iget-object v3, v0, Lcom/callapp/contacts/receiver/SmsSentReceiver$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v8, v3

    new-array v10, v2, [Ljava/lang/String;

    const-string v5, "Sms"

    const-string v6, "creating SMS overlay"

    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v11

    const/4 v14, 0x0

    iget-object v3, v0, Lcom/callapp/contacts/receiver/SmsSentReceiver$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v3, v3

    new-array v5, v2, [Ljava/lang/String;

    const-string v12, "Sms"

    const-string v13, "Adding page to existing SMS overlay"

    move-wide v15, v3

    move-object/from16 v17, v5

    invoke-virtual/range {v11 .. v17}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 100
    :goto_0
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->setVisibility(I)V

    .line 102
    iget-object v2, v0, Lcom/callapp/contacts/receiver/SmsSentReceiver$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    .line 103
    move-object v4, v1

    check-cast v4, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->addPage(Lcom/callapp/contacts/model/objectbox/SingleSmsData;)V

    goto :goto_1

    :cond_1
    return-void
.end method
