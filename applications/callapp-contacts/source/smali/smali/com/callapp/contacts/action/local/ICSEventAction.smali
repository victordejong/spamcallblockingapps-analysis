.class public Lcom/callapp/contacts/action/local/ICSEventAction;
.super Lcom/callapp/contacts/action/local/EventAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/action/local/EventAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z
    .locals 9

    .line 26
    invoke-static {}, Lcom/callapp/contacts/action/local/ICSEventAction;->getDateRange()Lcom/callapp/contacts/util/DateRange;

    move-result-object v0

    .line 28
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b(Z)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 31
    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b(Z)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    if-eqz v1, :cond_2

    const v1, 0x7f120052

    new-array v4, v2, [Ljava/lang/Object;

    .line 33
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    const v4, 0x7f12060d

    new-array v5, v2, [Ljava/lang/Object;

    const v6, 0x7f12027f

    new-array v7, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 37
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 38
    invoke-virtual {v0}, Lcom/callapp/contacts/util/DateRange;->getStartDate()J

    move-result-wide v6

    const-string v8, "beginTime"

    invoke-virtual {v5, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v5

    .line 39
    invoke-virtual {v0}, Lcom/callapp/contacts/util/DateRange;->getEndDate()J

    move-result-wide v6

    const-string v0, "endTime"

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p2}, Lcom/callapp/contacts/action/local/ICSEventAction;->a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v5, "eventLocation"

    .line 40
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "availability"

    .line 41
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/callapp/contacts/action/local/ICSEventAction;->getDefaultTimezone()Ljava/lang/String;

    move-result-object v1

    const-string v4, "eventTimezone"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return v2

    .line 49
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/action/local/EventAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 50
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f1204c6

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return v3

    :cond_4
    return v2
.end method
