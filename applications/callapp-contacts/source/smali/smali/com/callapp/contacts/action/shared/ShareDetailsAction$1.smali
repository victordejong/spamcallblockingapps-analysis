.class Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/ShareDetailsAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/action/shared/ShareDialog;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/callapp/contacts/action/shared/ShareDetailsAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareDetailsAction;Lcom/callapp/contacts/action/shared/ShareDialog;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->d:Lcom/callapp/contacts/action/shared/ShareDetailsAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->a:Lcom/callapp/contacts/action/shared/ShareDialog;

    iput-object p3, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p4, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->a:Lcom/callapp/contacts/action/shared/ShareDialog;

    invoke-virtual {v0}, Lcom/callapp/contacts/action/shared/ShareDialog;->dismiss()V

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 62
    :sswitch_0
    iget-object p1, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->d:Lcom/callapp/contacts/action/shared/ShareDetailsAction;

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->c:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/action/shared/ShareDetailsAction;->c(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    return-void

    .line 74
    :sswitch_1
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object p1

    const-class v1, Lcom/callapp/contacts/action/shared/ShareCameraAction;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/Class;)Lcom/callapp/contacts/action/Action;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/action/shared/ShareCameraAction;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/action/shared/ShareCameraAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    goto :goto_0

    .line 71
    :sswitch_2
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object p1

    const-class v1, Lcom/callapp/contacts/action/shared/ShareFileAction;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/Class;)Lcom/callapp/contacts/action/Action;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/action/shared/ShareFileAction;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/action/shared/ShareFileAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void

    .line 68
    :sswitch_3
    invoke-static {}, Lcom/callapp/contacts/manager/ActionsManager;->get()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object p1

    const-class v1, Lcom/callapp/contacts/action/shared/ShareLocationAction;

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/Class;)Lcom/callapp/contacts/action/Action;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/action/shared/ShareLocationAction;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/action/shared/ShareLocationAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V

    return-void

    .line 65
    :sswitch_4
    iget-object p1, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->d:Lcom/callapp/contacts/action/shared/ShareDetailsAction;

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->c:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/action/shared/ShareDetailsAction;->b(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    return-void

    .line 59
    :sswitch_5
    iget-object p1, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareDetailsAction$1;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/callapp/contacts/action/shared/ShareDetailsAction;->a(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f120013 -> :sswitch_5
        0x7f12005a -> :sswitch_4
        0x7f120069 -> :sswitch_3
        0x7f12006f -> :sswitch_2
        0x7f120075 -> :sswitch_1
        0x7f1204a4 -> :sswitch_0
    .end sparse-switch
.end method
