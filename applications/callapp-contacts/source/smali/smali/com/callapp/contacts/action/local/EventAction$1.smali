.class Lcom/callapp/contacts/action/local/EventAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/action/local/EventAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field final synthetic d:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic e:[Ljava/lang/String;

.field final synthetic f:Lcom/callapp/contacts/action/local/EventAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/EventAction;Lcom/callapp/contacts/popup/contact/DialogList;Landroid/content/Context;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;Lcom/callapp/contacts/model/contact/ContactData;[Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/action/local/EventAction$1;->f:Lcom/callapp/contacts/action/local/EventAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/EventAction$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    iput-object p3, p0, Lcom/callapp/contacts/action/local/EventAction$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/callapp/contacts/action/local/EventAction$1;->c:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    iput-object p5, p0, Lcom/callapp/contacts/action/local/EventAction$1;->d:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p6, p0, Lcom/callapp/contacts/action/local/EventAction$1;->e:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/action/local/EventAction$1;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/action/local/EventAction$1;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 91
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/action/local/EventAction$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/action/local/EventAction$1;->c:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/action/local/EventAction$1;->f:Lcom/callapp/contacts/action/local/EventAction;

    iget-object v1, p0, Lcom/callapp/contacts/action/local/EventAction$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/action/local/EventAction$1;->d:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v3, p0, Lcom/callapp/contacts/action/local/EventAction$1;->c:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    iget-object v4, p0, Lcom/callapp/contacts/action/local/EventAction$1;->e:[Ljava/lang/String;

    aget-object p1, v4, p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/callapp/contacts/action/local/EventAction;->a(Lcom/callapp/contacts/action/local/EventAction;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;Ljava/lang/String;)V

    return-void
.end method
