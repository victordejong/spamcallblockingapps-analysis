.class Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->setupCallButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

.field final synthetic c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;ILcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    iput p2, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->a:I

    iput-object p3, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->b:Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 436
    iget p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->a:I

    const/16 v0, 0x5dd

    const-string v1, "ClickOverlyIM"

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5de

    if-eq p1, v0, :cond_1

    .line 446
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->access$300(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9$1;-><init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;)V

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->access$900(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    :cond_0
    return-void

    .line 438
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->b:Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->access$000(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 439
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getAnalyticsTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WHATSAPP"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 442
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->b:Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->access$000(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/callapp/contacts/api/helper/instantmessaging/basetypes/ImSender;->openIm(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 443
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$9;->c:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getAnalyticsTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VIBER"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
