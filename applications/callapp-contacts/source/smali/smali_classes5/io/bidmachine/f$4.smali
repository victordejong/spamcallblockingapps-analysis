.class final Lio/bidmachine/f$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/f;->initializeNetworks(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contextProvider:Lio/bidmachine/ContextProvider;

.field final synthetic val$initializeCallback:Lio/bidmachine/f$b;

.field final synthetic val$unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;


# direct methods
.method constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/f$b;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lio/bidmachine/f$4;->val$contextProvider:Lio/bidmachine/ContextProvider;

    iput-object p2, p0, Lio/bidmachine/f$4;->val$unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    iput-object p3, p0, Lio/bidmachine/f$4;->val$initializeCallback:Lio/bidmachine/f$b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 168
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    sget-object v1, Lio/bidmachine/f;->pendingNetworks:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 171
    sget-object v1, Lio/bidmachine/f;->pendingNetworks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/NetworkConfig;

    .line 172
    new-instance v3, Lio/bidmachine/f$a;

    iget-object v4, p0, Lio/bidmachine/f$4;->val$contextProvider:Lio/bidmachine/ContextProvider;

    iget-object v5, p0, Lio/bidmachine/f$4;->val$unifiedAdRequestParams:Lio/bidmachine/unified/UnifiedAdRequestParams;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v2, v6}, Lio/bidmachine/f$a;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/unified/UnifiedAdRequestParams;Lio/bidmachine/NetworkConfig;Lio/bidmachine/f$1;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 178
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 179
    new-instance v2, Lio/bidmachine/f$4$1;

    invoke-direct {v2, p0, v1}, Lio/bidmachine/f$4$1;-><init>(Lio/bidmachine/f$4;Ljava/util/concurrent/CountDownLatch;)V

    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/f$a;

    .line 186
    invoke-virtual {v3, v2}, Lio/bidmachine/f$a;->withCallback(Lio/bidmachine/f$a$a;)Lio/bidmachine/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lio/bidmachine/f$a;->execute()V

    goto :goto_1

    .line 189
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 194
    :cond_2
    :goto_2
    iget-object v0, p0, Lio/bidmachine/f$4;->val$initializeCallback:Lio/bidmachine/f$b;

    if-eqz v0, :cond_3

    .line 195
    invoke-interface {v0}, Lio/bidmachine/f$b;->onNetworksInitialized()V

    :cond_3
    return-void
.end method
