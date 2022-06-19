.class public Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/event/Callback;

.field final synthetic b:Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;Lcom/callapp/contacts/event/Callback;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder$1;->b:Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;

    iput-object p2, p0, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder$1;->a:Lcom/callapp/contacts/event/Callback;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 118
    invoke-static {}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a()Lcom/callapp/contacts/util/http/HttpRequest;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder$1;->b:Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;

    invoke-static {v1}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->a(Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder$1;->b:Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;

    invoke-static {v1}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->a(Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/util/List;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder$1;->b:Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;

    invoke-static {v1}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->b(Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder$1;->b:Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;

    invoke-static {v1}, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;->b(Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 125
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a(Lcom/callapp/contacts/util/http/HttpRequest;Landroid/util/Pair;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x2710

    .line 1047
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/http/HttpRequest;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder$1;->a:Lcom/callapp/contacts/event/Callback;

    if-eqz v0, :cond_3

    .line 131
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/event/Callback;->a(Ljava/lang/Object;)V

    return-void

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder$1;->a:Lcom/callapp/contacts/event/Callback;

    if-eqz v0, :cond_3

    .line 134
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/event/Callback;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_3
    return-void
.end method
