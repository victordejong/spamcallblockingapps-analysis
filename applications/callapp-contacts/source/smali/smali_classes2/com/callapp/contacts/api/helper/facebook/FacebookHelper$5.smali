.class Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/callapp/contacts/manager/task/OutcomeListener;

.field final synthetic e:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->e:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->c:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->d:Lcom/callapp/contacts/manager/task/OutcomeListener;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->e:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2352
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->d(Ljava/lang/String;Z)Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->e:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->c:Ljava/lang/Runnable;

    invoke-static {v1, v2, v0, v3}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result v0

    .line 500
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->d:Lcom/callapp/contacts/manager/task/OutcomeListener;

    if-eqz v1, :cond_0

    .line 501
    invoke-static {v1, v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    :cond_0
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->d:Lcom/callapp/contacts/manager/task/OutcomeListener;

    if-eqz v0, :cond_2

    .line 505
    invoke-static {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    :cond_2
    return-void
.end method
