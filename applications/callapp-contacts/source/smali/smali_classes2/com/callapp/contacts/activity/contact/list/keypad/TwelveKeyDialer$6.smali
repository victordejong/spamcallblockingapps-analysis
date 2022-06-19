.class Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;I)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;->b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    iput p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;->a:I

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 11

    .line 645
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;->b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->h(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;->a:I

    add-int/2addr v0, v1

    .line 648
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;->b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->f(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 649
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;->b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->g(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 650
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;->b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->i(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Landroid/app/Activity;

    move-result-object v2

    new-instance v10, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v3, 0x7f120087

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v3, 0x7f120086

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v3, 0x7f1204ea

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x7f1201a9

    .line 654
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;

    invoke-direct {v8, p0, v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$1;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;I)V

    new-instance v9, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$2;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$2;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;)V

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 653
    invoke-virtual {v1, v2, v10}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;->b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->i(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$3;

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$3;-><init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 650
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
