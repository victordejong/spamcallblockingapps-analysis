.class Lcom/callapp/contacts/loader/CompoundAsyncLoader$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/CompoundAsyncLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/SimpleContactLoader;

.field final synthetic b:Lcom/callapp/contacts/loader/api/LoadContext;

.field final synthetic c:Lcom/callapp/contacts/loader/CompoundAsyncLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/CompoundAsyncLoader;Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/loader/CompoundAsyncLoader$1;->c:Lcom/callapp/contacts/loader/CompoundAsyncLoader;

    iput-object p2, p0, Lcom/callapp/contacts/loader/CompoundAsyncLoader$1;->a:Lcom/callapp/contacts/loader/SimpleContactLoader;

    iput-object p3, p0, Lcom/callapp/contacts/loader/CompoundAsyncLoader$1;->b:Lcom/callapp/contacts/loader/api/LoadContext;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 35
    iget-object v2, p0, Lcom/callapp/contacts/loader/CompoundAsyncLoader$1;->a:Lcom/callapp/contacts/loader/SimpleContactLoader;

    iget-object v3, p0, Lcom/callapp/contacts/loader/CompoundAsyncLoader$1;->b:Lcom/callapp/contacts/loader/api/LoadContext;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/loader/SimpleContactLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Z)V

    .line 36
    const-class v2, Lcom/callapp/contacts/loader/CompoundAsyncLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/callapp/contacts/loader/CompoundAsyncLoader$1;->a:Lcom/callapp/contacts/loader/SimpleContactLoader;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".load() took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
