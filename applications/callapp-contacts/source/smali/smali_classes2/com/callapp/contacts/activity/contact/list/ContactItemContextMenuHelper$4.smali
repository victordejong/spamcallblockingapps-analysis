.class final Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/contacts/action/ActionDoneListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->c:Lcom/callapp/contacts/action/ActionDoneListener;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 10

    .line 145
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->a:Landroid/content/Context;

    new-instance v9, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v2, 0x7f120289

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f120287

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f120878

    .line 147
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f1204c5

    .line 148
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;)V

    new-instance v8, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$2;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4$2;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$4;)V

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 145
    invoke-virtual {v0, v1, v9}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
