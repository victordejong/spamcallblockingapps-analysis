.class Lcom/callapp/contacts/util/http/HttpRequest$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/http/HttpRequest;->a()Lcom/callapp/contacts/util/http/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/util/http/HttpRequest;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/http/HttpRequest;I)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    iput p2, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->a:I

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    iget v1, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->a:I

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/http/HttpRequest;->a(I)Z

    move-result v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v1}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpRequest;->b(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/event/listener/Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpRequest;->b(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/event/listener/Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/event/listener/Listener;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/http/HttpRequest;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpRequest;->c(Lcom/callapp/contacts/util/http/HttpRequest;)Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpRequest;->d(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpRequest;->e(Lcom/callapp/contacts/util/http/HttpRequest;)Landroid/app/Activity;

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpRequest;->f(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/event/listener/Listener;

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpRequest;->g(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/event/listener/Listener;

    return-void

    :catchall_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v1}, Lcom/callapp/contacts/util/http/HttpRequest;->c(Lcom/callapp/contacts/util/http/HttpRequest;)Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v1}, Lcom/callapp/contacts/util/http/HttpRequest;->d(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 86
    iget-object v1, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v1}, Lcom/callapp/contacts/util/http/HttpRequest;->e(Lcom/callapp/contacts/util/http/HttpRequest;)Landroid/app/Activity;

    .line 87
    iget-object v1, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v1}, Lcom/callapp/contacts/util/http/HttpRequest;->f(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/event/listener/Listener;

    .line 88
    iget-object v1, p0, Lcom/callapp/contacts/util/http/HttpRequest$1;->b:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {v1}, Lcom/callapp/contacts/util/http/HttpRequest;->g(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/event/listener/Listener;

    .line 89
    throw v0
.end method
