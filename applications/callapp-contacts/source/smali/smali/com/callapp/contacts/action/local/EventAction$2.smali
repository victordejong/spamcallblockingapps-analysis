.class Lcom/callapp/contacts/action/local/EventAction$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/EventAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field final synthetic e:Lcom/callapp/contacts/action/local/EventAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/EventAction;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/callapp/contacts/action/local/EventAction$2;->e:Lcom/callapp/contacts/action/local/EventAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/EventAction$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/callapp/contacts/action/local/EventAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p4, p0, Lcom/callapp/contacts/action/local/EventAction$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/callapp/contacts/action/local/EventAction$2;->d:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/action/local/EventAction$2;->e:Lcom/callapp/contacts/action/local/EventAction;

    iget-object v1, p0, Lcom/callapp/contacts/action/local/EventAction$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/action/local/EventAction$2;->b:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v3, p0, Lcom/callapp/contacts/action/local/EventAction$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/action/local/EventAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z

    .line 108
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/EventAction$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/action/local/EventAction$2$1;-><init>(Lcom/callapp/contacts/action/local/EventAction$2;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
