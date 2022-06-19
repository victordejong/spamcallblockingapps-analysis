.class Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/api/helper/common/LoginListener;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;Ljava/lang/String;Lcom/callapp/contacts/api/helper/common/LoginListener;Landroid/content/Intent;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->d:Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->b:Lcom/callapp/contacts/api/helper/common/LoginListener;

    iput-object p4, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->c:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->b:Lcom/callapp/contacts/api/helper/common/LoginListener;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lcom/callapp/contacts/api/helper/common/LoginListener;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->d:Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->c:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;->a(Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;Landroid/content/Intent;)V

    return-void

    .line 75
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->b:Lcom/callapp/contacts/api/helper/common/LoginListener;

    if-nez v0, :cond_2

    goto :goto_0

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/api/helper/common/LoginListener;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 81
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->b:Lcom/callapp/contacts/api/helper/common/LoginListener;

    invoke-interface {v0}, Lcom/callapp/contacts/api/helper/common/LoginListener;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 83
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->d:Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity$1;->c:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;->a(Lcom/callapp/contacts/api/helper/common/BrowserAuthActivity;Landroid/content/Intent;)V

    .line 84
    throw v0
.end method
