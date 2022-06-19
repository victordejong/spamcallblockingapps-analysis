.class Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$1;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$1;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/util/http/HttpRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2710

    .line 1047
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/http/HttpRequest;->a(I)Z

    :cond_0
    return-void
.end method
