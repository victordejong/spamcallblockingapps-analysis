.class Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->onRowClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field final synthetic b:Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1$1;->b:Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1$1;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1$1;->b:Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->d:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/framework/phone/Phone;

    .line 84
    sget-object v3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const/4 v4, 0x3

    const-wide/16 v5, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;

    .line 91
    iget v1, v1, Lcom/callapp/contacts/activity/calllog/SingleCallLogData;->e:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1$1;->b:Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->c:Landroid/content/Context;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/app/Activity;Ljava/util/List;IZZLcom/callapp/contacts/action/ActionDoneListener;)V

    goto :goto_2

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1$1;->b:Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->c:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/app/Activity;Ljava/util/List;IZZLcom/callapp/contacts/action/ActionDoneListener;)V

    .line 99
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1$1;->b:Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;

    iget-object v0, v0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;->a(Landroid/content/Context;)V

    .line 101
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1$1$1;-><init>(Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$1$1;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
