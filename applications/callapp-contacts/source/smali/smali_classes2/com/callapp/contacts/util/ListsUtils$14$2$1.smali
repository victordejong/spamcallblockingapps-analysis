.class Lcom/callapp/contacts/util/ListsUtils$14$2$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils$14$2;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/callapp/contacts/util/ListsUtils$14$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ListsUtils$14$2;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$14$2$1;->d:Lcom/callapp/contacts/util/ListsUtils$14$2;

    iput-object p2, p0, Lcom/callapp/contacts/util/ListsUtils$14$2$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/util/ListsUtils$14$2$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/callapp/contacts/util/ListsUtils$14$2$1;->c:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 430
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ListsUtils$14$2$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    .line 431
    invoke-static {v0}, Lcom/callapp/contacts/manager/BlockManager;->b(Lcom/callapp/framework/phone/Phone;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120237

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/callapp/contacts/util/ListsUtils$14$2$1;->b:Ljava/lang/String;

    .line 434
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 433
    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1132
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/util/ListsUtils$14$2$1;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/callapp/contacts/util/ListsUtils$14$2$1;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/manager/BlockManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)Z

    .line 437
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$14$2$1;->d:Lcom/callapp/contacts/util/ListsUtils$14$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ListsUtils$14$2;->a:Lcom/callapp/contacts/util/ListsUtils$14;

    iget-object v0, v0, Lcom/callapp/contacts/util/ListsUtils$14;->c:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/callapp/contacts/util/ListsUtils$14$2$1;->d:Lcom/callapp/contacts/util/ListsUtils$14$2;

    iget-object v0, v0, Lcom/callapp/contacts/util/ListsUtils$14$2;->a:Lcom/callapp/contacts/util/ListsUtils$14;

    iget-object v0, v0, Lcom/callapp/contacts/util/ListsUtils$14;->c:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;->b()V

    :cond_1
    return-void
.end method
