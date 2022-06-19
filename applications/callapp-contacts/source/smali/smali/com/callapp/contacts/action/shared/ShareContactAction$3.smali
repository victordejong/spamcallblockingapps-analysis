.class Lcom/callapp/contacts/action/shared/ShareContactAction$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/ShareContactAction;->c(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/callapp/contacts/action/shared/ShareContactAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/ShareContactAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$3;->c:Lcom/callapp/contacts/action/shared/ShareContactAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    const/4 v0, 0x0

    .line 284
    invoke-static {v0}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b(Z)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0, v1}, Lcom/callapp/contacts/action/shared/ShareContactAction;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/ArrayList;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120065

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 290
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction$3;->b:Landroid/app/Activity;

    new-instance v3, Lcom/callapp/contacts/action/shared/ShareContactAction$3$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/callapp/contacts/action/shared/ShareContactAction$3$1;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$3;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
