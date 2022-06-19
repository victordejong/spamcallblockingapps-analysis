.class Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V
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

    .line 520
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->e:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->c:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->d:Lcom/callapp/contacts/manager/task/OutcomeListener;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 7

    .line 523
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->e:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 2352
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->d(Ljava/lang/String;Z)Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 525
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->e:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iget-object v3, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getLink()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->c:Ljava/lang/Runnable;

    invoke-static {v1, v3, v4, v5}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->e:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iget-object v4, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->b:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://www.facebook.com/profile.php?id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->c:Ljava/lang/Runnable;

    invoke-static {v1, v4, v0, v5}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    .line 526
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->e:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isNativeAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fb://profile/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 528
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 529
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 531
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    :cond_2
    move v3, v2

    .line 535
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->d:Lcom/callapp/contacts/manager/task/OutcomeListener;

    invoke-static {v0, v3}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->c(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->d:Lcom/callapp/contacts/manager/task/OutcomeListener;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    return-void
.end method
