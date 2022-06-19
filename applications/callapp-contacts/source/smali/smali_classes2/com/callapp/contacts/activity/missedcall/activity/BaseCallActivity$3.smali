.class Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$3;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 226
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$3;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->access$300(Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;)Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/SingleMissedCallData;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$3;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/SmsUtils;->c(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    .line 231
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$3;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->getAnalyticsTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClickOverlySMS"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity$3;->a:Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/missedcall/activity/BaseCallActivity;->finish()V

    :cond_0
    return-void
.end method
