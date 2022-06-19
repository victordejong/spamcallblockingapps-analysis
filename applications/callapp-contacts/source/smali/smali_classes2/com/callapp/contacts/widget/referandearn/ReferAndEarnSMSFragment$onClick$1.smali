.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 9

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, ""

    .line 191
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    .line 192
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    const v7, 0x7f1205be

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v4

    sget-object v4, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;

    const-string v4, "sms"

    invoke-static {v4}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-static {v7, v8}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/callapp/contacts/util/SmsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    .line 193
    sget-object v4, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "data.phone.asGlobalNumber()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->PENDING:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    invoke-virtual {v4, v5, v3, v6}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->updateReferStatus(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;)V

    goto :goto_3

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;

    invoke-static {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;->c()V

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->getFilterableVerticalItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    const-string v0, "ReferAndEarn"

    if-eqz v2, :cond_7

    .line 198
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "InviteSMSselectAll"

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_7
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "contacts: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InviteSMSsendContacts"

    invoke-virtual {v1, v0, v3, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
