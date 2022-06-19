.class final Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:J

.field final synthetic c:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic d:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/callapp/contacts/action/Action$ContextType;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Landroid/view/View;

.field final synthetic i:Z


# direct methods
.method constructor <init>(Lcom/callapp/framework/phone/Phone;JLcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/content/Context;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Landroid/view/View;Z)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->a:Lcom/callapp/framework/phone/Phone;

    iput-wide p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->b:J

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->c:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iput-object p5, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->d:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;

    iput-object p6, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->e:Landroid/content/Context;

    iput-object p7, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->f:Lcom/callapp/contacts/action/Action$ContextType;

    iput-object p8, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->h:Landroid/view/View;

    iput-boolean p10, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->i:Z

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 10

    .line 211
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->a:Lcom/callapp/framework/phone/Phone;

    iget-wide v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/ContactLoaderManager;->getContactDataOnlyIfAlreadyLoaded(Lcom/callapp/framework/phone/Phone;J)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v2, 0x0

    .line 217
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->favorite:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->a:Lcom/callapp/framework/phone/Phone;

    iget-wide v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    :goto_0
    move-object v6, v0

    .line 220
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->c:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    .line 1135
    sget-object v2, Lcom/callapp/contacts/action/Action$ContextType;->ALL:Lcom/callapp/contacts/action/Action$ContextType;

    invoke-virtual {v0, v6, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->c:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    instance-of v1, v0, Lcom/callapp/contacts/activity/base/BaseCallLogData;

    if-eqz v1, :cond_1

    .line 223
    check-cast v0, Lcom/callapp/contacts/activity/base/BaseCallLogData;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallLogData;->displayName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 225
    :goto_1
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v2, v0

    .line 228
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->d:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;->REGULAR:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->e:Landroid/content/Context;

    new-instance v8, Lcom/callapp/contacts/popup/ActionsPopup;

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->f:Lcom/callapp/contacts/action/Action$ContextType;

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->g:Ljava/lang/String;

    iget-object v9, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->c:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    move-object v1, v8

    move-object v3, v6

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/popup/ActionsPopup;-><init>(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    invoke-virtual {v0, v7, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->d:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;->DROPPY:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    new-instance v2, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;

    invoke-direct {v2}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;-><init>()V

    .line 232
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->h:Landroid/view/View;

    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->f:Lcom/callapp/contacts/action/Action$ContextType;

    iget-object v8, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->c:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    iget-boolean v4, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$6;->i:Z

    .line 2040
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v9, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog$1;-><init>(Lcom/callapp/contacts/popup/droppyMenu/DroppyMenuDialog;Landroid/view/View;ZLandroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    invoke-virtual {v0, v9}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
