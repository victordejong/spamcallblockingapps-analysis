.class public abstract Lcom/callapp/contacts/loader/BaseLoaderTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/callapp/contacts/loader/api/LoadContext;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/callapp/contacts/loader/api/ContactDataLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/loader/api/ContactDataLoader;Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/loader/BaseLoaderTask;->b:Ljava/lang/Class;

    .line 17
    iput-object p2, p0, Lcom/callapp/contacts/loader/BaseLoaderTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 29
    instance-of v0, p1, Lcom/callapp/contacts/loader/social/QuotaReachedException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/callapp/contacts/loader/BaseLoaderTask;->b:Ljava/lang/Class;

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Quota reached (Loader=%s, Task=%s"

    invoke-static {v0, v1, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/loader/BaseLoaderTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v1, p0, Lcom/callapp/contacts/loader/BaseLoaderTask;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void

    .line 32
    :cond_0
    instance-of v0, p1, Lcom/callapp/contacts/loader/social/UnauthorizedAccessErrorException;

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/callapp/contacts/loader/BaseLoaderTask;->b:Ljava/lang/Class;

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "UnauthorizedAccessErrorException (Loader=%s, Task=%s"

    invoke-static {v0, v1, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/loader/BaseLoaderTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v1, p0, Lcom/callapp/contacts/loader/BaseLoaderTask;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void

    .line 36
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/task/Task;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/callapp/contacts/loader/BaseLoaderTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v1, p0, Lcom/callapp/contacts/loader/BaseLoaderTask;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/loader/BaseLoaderTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/LoadContext;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-super {p0}, Lcom/callapp/contacts/manager/task/Task;->run()V

    :cond_0
    return-void
.end method
